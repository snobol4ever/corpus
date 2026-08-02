                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_tins_α
proc_tins_α:
proc_tins_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        sub              rsp, 752
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
                        mov              qword ptr [rbp + 1168], 2                      # result
                        mov              dword ptr [rbp + 1172], 12
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
                        mov              qword ptr [rbp + 1264], 3                      # result
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n3_call_builtin_icon_α
.Lx56_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn58:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn58]                          # fn
                        lea              rsi, [rbp + 1200]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n13_call_builtin_icon_α
                                                                                        jmp   n4_lit_string_α
n3_call_builtin_icon_β:
                                                                                        jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 1280], 2                      # result
                        mov              dword ptr [rbp + 1284], 1
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n5_var_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 1376], 3                      # result
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n7_call_builtin_icon_α
.Lx62_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lrkfn64:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn64]                          # fn
                        lea              rsi, [rbp + 1312]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 104
                                                                                        je    n13_call_builtin_icon_α
                                                                                        jmp   n8_lit_string_α
n7_call_builtin_icon_β:
                                                                                        jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 1392], 2                      # result
                        mov              dword ptr [rbp + 1396], 1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n9_var_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 1488], 3                      # result
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n11_call_builtin_icon_α
.Lx68_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        .section         .rodata
.Lrkfn70:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn70]                          # fn
                        lea              rsi, [rbp + 1424]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 104
                                                                                        je    n13_call_builtin_icon_α
                                                                                        jmp   n12_call_builtin_icon_α
n11_call_builtin_icon_β:
                                                                                        jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
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
.Lrkfn72:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]                          # fn
                        lea              rsi, [rbp + 1056]                              # args
                        mov              edx, 6                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n13_call_builtin_icon_α
                                                                                        jmp   n13_call_builtin_icon_α
n12_call_builtin_icon_β:
                                                                                        jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn74:               .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn74]                          # fn
                        lea              rsi, [rbp + 1024]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 104
                                                                                        je    n15_var_α
                                                                                        jmp   n14_assign_α
n13_call_builtin_icon_β:
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              rdx, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 976], 3                       # result
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n17_var_α
.Lx78_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n18_to_α
#-----------------------------------------------------------------------------------------------------------------------
n18_to_α:
                        mov              rdi, qword ptr [rbp + 976]                     # v
                        mov              rsi, qword ptr [rbp + 984]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 976], 3
                        mov              qword ptr [rbp + 984], rax
                        mov              rdi, qword ptr [rbp + 992]                     # v
                        mov              rsi, qword ptr [rbp + 1000]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 992], 3
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 960], rax
.Lx82_0:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rcx, qword ptr [rbp + 1000]
                        cmp              rax, rcx
                                                                                        jle   .Lx82_240
                        add              rsp, 752
                                                                                        jmp   n20_var_α
.Lx82_240:
                        mov              qword ptr [rbp + 944], 3
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n19_call_builtin_icon_α
n18_to_β:
                        inc              qword ptr [rbp + 960]
                                                                                        jmp   .Lx82_0
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn84:               .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]                          # fn
                        lea              rsi, [rbp + 880]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 104
                                                                                        je    n18_to_β
                                                                                        jmp   n18_to_β
n19_call_builtin_icon_β:
                                                                                        jmp   n18_to_β
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n21_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lrkfn88:               .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]                          # fn
                        lea              rsi, [rbp + 816]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n23_call_builtin_icon_α
                                                                                        jmp   n22_assign_α
n21_call_builtin_icon_β:
                                                                                        jmp   n23_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n23_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn91:               .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]                          # fn
                        lea              rsi, [rbp + 784]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n25_var_α
                                                                                        jmp   n24_assign_α
n23_call_builtin_icon_β:
                                                                                        jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n27_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n27_iterate_α:
                        mov              qword ptr [rbp + 304], 0
.Lx98_0:
                        mov              rdi, qword ptr [rbp + 320]                     # obj
                        mov              rsi, qword ptr [rbp + 328]                     # obj
                        mov              rdx, qword ptr [rbp + 304]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              rax, 99
                                                                                        je    n49_var_α
                                                                                        jmp   n28_assign_α
n27_iterate_β:
                        inc              qword ptr [rbp + 304]
                                                                                        jmp   .Lx98_0
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n29_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn101:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn101]                         # fn
                        lea              rsi, [rbp + 208]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n27_iterate_β
                                                                                        jmp   n30_bound_α
n29_call_builtin_icon_β:
                                                                                        jmp   n27_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n30_bound_α:
                        mov              qword ptr [rbp + 336], rsp
                                                                                        jmp   n31_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n31_disjunction_α:
                        mov              qword ptr [rbp + 384], 0
                        mov              qword ptr [rbp + 392], 0
                        mov              dword ptr [rbp + 400], 0
                                                                                        jmp   n32_var_α
n31_disjunction_as:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 0
                                                                                        jne   .Lx105_0
                                                                                        jmp   n48_unmark_α
.Lx105_0:
                                                                                        jmp   n48_unmark_α
n31_disjunction_β:
                        mov              eax, dword ptr [rbp + 400]
                                                                                        jmp   n48_unmark_α
n31_disjunction_af:
                        add              dword ptr [rbp + 400], 1
                        mov              eax, dword ptr [rbp + 400]
                                                                                        jmp   n48_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n33_unop_α
n32_var_β:
                                                                                        jmp   n31_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n33_unop_α:
                        mov              rdi, qword ptr [rbp + 1520]                    # lo
                        mov              rsi, qword ptr [rbp + 1528]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n35_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n35_binop_test_α:
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 112
                                                                                        je    .Lx111_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 112
                                                                                        je    .Lx111_0
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 3
                                                                                        jne   .Lx111_2
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx111_2
.Lx111_1:
                        mov              rax, qword ptr [rbp + 712]
                        mov              rcx, qword ptr [rbp + 40]
                        cmp              rax, rcx
                                                                                        jge   n31_disjunction_af
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 688], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 696], rcx
                                                                                        jmp   n36_lit_integer_α
.Lx111_0:
                        mov              rdi, qword ptr [rbp + 704]                     # a
                        mov              rsi, qword ptr [rbp + 712]                     # a
                        mov              rdx, qword ptr [rbp + 32]                      # b
                        mov              rcx, qword ptr [rbp + 40]                      # b
                        mov              r8d, 5                                         # op
                        lea              r9, [rbp + 688]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx111_1
                        cmp              eax, 1
                                                                                        je    n31_disjunction_af
                                                                                        jmp   n36_lit_integer_α
.Lx111_2:
                        mov              rdi, qword ptr [rbp + 704]                     # lhs
                        mov              rsi, qword ptr [rbp + 712]                     # lhs
                        mov              rdx, qword ptr [rbp + 32]                      # rhs
                        mov              rcx, qword ptr [rbp + 40]                      # rhs
                        mov              r8d, 5                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n31_disjunction_af
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n36_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rbp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n37_var_α
.Lx112_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n38_to_α
#-----------------------------------------------------------------------------------------------------------------------
n38_to_α:
                        mov              rdi, qword ptr [rbp + 448]                     # v
                        mov              rsi, qword ptr [rbp + 456]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 448], 3
                        mov              qword ptr [rbp + 456], rax
                        mov              rdi, qword ptr [rbp + 464]                     # v
                        mov              rsi, qword ptr [rbp + 472]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 464], 3
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 432], rax
.Lx116_0:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 472]
                        cmp              rax, rcx
                                                                                        jg    n48_unmark_α
                        mov              qword ptr [rbp + 416], 3
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n39_bound_α
n38_to_β:
                        inc              qword ptr [rbp + 432]
                                                                                        jmp   .Lx116_0
#-----------------------------------------------------------------------------------------------------------------------
n39_bound_α:
                        mov              qword ptr [rbp + 480], rsp
                                                                                        jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n42_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n42_unop_α:
                        mov              rdi, qword ptr [rbp + 1520]                    # lo
                        mov              rsi, qword ptr [rbp + 1528]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n43_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rbp + 672], 3                       # result
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n44_coerce_numeric_α
.Lx124_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n44_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 5
                                                                                        je    .Lx126_1
                        cmp              eax, 3
                                                                                        jne   .Lx126_0
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 3
                                                                                        jne   .Lx126_0
.Lx126_1:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n45_binop_α
.Lx126_0:
                        lea              rdi, [rbp + 640]                               # self
                        lea              rsi, [rbp + 672]                               # other
                        lea              rdx, [rbp + 624]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n45_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_α:
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 3
                                                                                        jne   .Lx127_0
                        mov              rax, qword ptr [rbp + 632]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 608], 3
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n46_call_builtin_icon_α
.Lx127_0:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 672]
                        mov              rcx, qword ptr [rbp + 680]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n47_unmark_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n46_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn129:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn129]                         # fn
                        lea              rsi, [rbp + 544]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        je    n47_unmark_α
                                                                                        jmp   n47_unmark_α
n46_call_builtin_icon_β:
                                                                                        jmp   n47_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n47_unmark_α:
                        mov              rsp, qword ptr [rbp + 480]
                                                                                        jmp   n38_to_β
#-----------------------------------------------------------------------------------------------------------------------
n48_unmark_α:
                        mov              rsp, qword ptr [rbp + 336]
                                                                                        jmp   n27_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n51_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n52_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_proc_staged_α:
                        lea              rsi, [rbp + 144]
                        lea              rdx, [rbp + 160]
                        lea              rcx, [rbp + 176]
                        call             proc_check_dcα
                                                                                        jmp   .Lx141_2
.Lx141_2:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_tins_ω
                                                                                        jmp   proc_tins_ω
n52_call_proc_staged_β:
                                                                                        jmp   proc_tins_ω
.Lx141_0:
                        .quad            .Lx141_0_s
.Lx141_0_s:
                        .string          "check"
#-----------------------------------------------------------------------------------------------------------------------
proc_tins_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_tins_β:
                                                                                        jmp   proc_tins_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_tins_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_tins_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_tins_dcα:
                        pop              r11
                        sub              rsp, 1632
                        mov              qword ptr [rsp + 1608], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1584], r11
                        lea              rax, [rip + .Lx142_2]
                        mov              qword ptr [rbp + 1592], rax
                        lea              rax, [rip + .Lx142_3]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 1504                                      # suffix_off
                        mov              edx, 1584                                      # region_bytes
                        mov              ecx, 3                                         # np
                        mov              r8d, 3                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_tins_α_body
.Lx142_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1616
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx142_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1616
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_tdel_α
proc_tdel_α:
proc_tdel_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:
                        sub              rsp, 624
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
                        mov              qword ptr [rbp + 1024], 2                      # result
                        mov              dword ptr [rbp + 1028], 12
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
                        mov              qword ptr [rbp + 1120], 3                      # result
                        mov              rax, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n146_call_builtin_icon_α
.Lx191_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn193:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn193]                         # fn
                        lea              rsi, [rbp + 1056]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n152_call_builtin_icon_α
                                                                                        jmp   n147_lit_string_α
n146_call_builtin_icon_β:
                                                                                        jmp   n152_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n148_var_α
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n149_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 3                      # result
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n150_call_builtin_icon_α
.Lx197_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n150_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lrkfn199:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]                         # fn
                        lea              rsi, [rbp + 1168]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 104
                                                                                        je    n152_call_builtin_icon_α
                                                                                        jmp   n151_call_builtin_icon_α
n150_call_builtin_icon_β:
                                                                                        jmp   n152_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_builtin_icon_α:
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
.Lrkfn201:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn201]                         # fn
                        lea              rsi, [rbp + 944]                               # args
                        mov              edx, 4                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 104
                                                                                        je    n152_call_builtin_icon_α
                                                                                        jmp   n152_call_builtin_icon_α
n151_call_builtin_icon_β:
                                                                                        jmp   n152_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn203:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn203]                         # fn
                        lea              rsi, [rbp + 912]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 104
                                                                                        je    n154_var_α
                                                                                        jmp   n153_assign_α
n152_call_builtin_icon_β:
                                                                                        jmp   n154_var_α
#-----------------------------------------------------------------------------------------------------------------------
n153_assign_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n154_var_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n155_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:
                        mov              qword ptr [rbp + 864], 3                       # result
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n156_var_α
.Lx207_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n157_to_α
#-----------------------------------------------------------------------------------------------------------------------
n157_to_α:
                        mov              rdi, qword ptr [rbp + 864]                     # v
                        mov              rsi, qword ptr [rbp + 872]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 864], 3
                        mov              qword ptr [rbp + 872], rax
                        mov              rdi, qword ptr [rbp + 880]                     # v
                        mov              rsi, qword ptr [rbp + 888]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 880], 3
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 848], rax
.Lx211_0:
                        mov              rax, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 888]
                        cmp              rax, rcx
                                                                                        jle   .Lx211_240
                        add              rsp, 624
                                                                                        jmp   n159_var_α
.Lx211_240:
                        mov              qword ptr [rbp + 832], 3
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n158_call_builtin_icon_α
n157_to_β:
                        inc              qword ptr [rbp + 848]
                                                                                        jmp   .Lx211_0
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        .section         .rodata
.Lrkfn213:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn213]                         # fn
                        lea              rsi, [rbp + 768]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n157_to_β
                                                                                        jmp   n157_to_β
n158_call_builtin_icon_β:
                                                                                        jmp   n157_to_β
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n160_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn217:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn217]                         # fn
                        lea              rsi, [rbp + 704]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n162_call_builtin_icon_α
                                                                                        jmp   n161_assign_α
n160_call_builtin_icon_β:
                                                                                        jmp   n162_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n162_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n162_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn220:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn220]                         # fn
                        lea              rsi, [rbp + 672]                               # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 104
                                                                                        je    n164_lit_integer_α
                                                                                        jmp   n163_assign_α
n162_call_builtin_icon_β:
                                                                                        jmp   n164_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n164_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_integer_α:
                        mov              qword ptr [rbp + 640], 3                       # result
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n165_assign_α
.Lx222_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n165_assign_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n166_var_α
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
                                                                                        jmp   n168_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n168_iterate_α:
                        mov              qword ptr [rbp + 272], 0
.Lx229_0:
                        mov              rdi, qword ptr [rbp + 288]                     # obj
                        mov              rsi, qword ptr [rbp + 296]                     # obj
                        mov              rdx, qword ptr [rbp + 272]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              rax, 99
                                                                                        je    n184_var_α
                                                                                        jmp   n169_call_builtin_icon_α
n168_iterate_β:
                        inc              qword ptr [rbp + 272]
                                                                                        jmp   .Lx229_0
#-----------------------------------------------------------------------------------------------------------------------
n169_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn231:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn231]                         # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n168_iterate_β
                                                                                        jmp   n170_bound_α
n169_call_builtin_icon_β:
                                                                                        jmp   n168_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n170_bound_α:
                        mov              qword ptr [rbp + 304], rsp
                                                                                        jmp   n171_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:
                        mov              qword ptr [rbp + 384], 3                       # result
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n172_var_α
.Lx234_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n173_to_α
#-----------------------------------------------------------------------------------------------------------------------
n173_to_α:
                        mov              rdi, qword ptr [rbp + 384]                     # v
                        mov              rsi, qword ptr [rbp + 392]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 384], 3
                        mov              qword ptr [rbp + 392], rax
                        mov              rdi, qword ptr [rbp + 400]                     # v
                        mov              rsi, qword ptr [rbp + 408]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 400], 3
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 368], rax
.Lx238_0:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 408]
                        cmp              rax, rcx
                                                                                        jg    n183_unmark_α
                        mov              qword ptr [rbp + 352], 3
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n174_bound_α
n173_to_β:
                        inc              qword ptr [rbp + 368]
                                                                                        jmp   .Lx238_0
#-----------------------------------------------------------------------------------------------------------------------
n174_bound_α:
                        mov              qword ptr [rbp + 416], rsp
                                                                                        jmp   n175_var_α
#-----------------------------------------------------------------------------------------------------------------------
n175_var_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n176_var_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n177_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_integer_α:
                        mov              qword ptr [rbp + 608], 3                       # result
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n178_coerce_numeric_α
.Lx245_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n178_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 5
                                                                                        je    .Lx247_1
                        cmp              eax, 3
                                                                                        jne   .Lx247_0
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 3
                                                                                        jne   .Lx247_0
.Lx247_1:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n179_binop_α
.Lx247_0:
                        lea              rdi, [rbp + 1296]                              # self
                        lea              rsi, [rbp + 608]                               # other
                        lea              rdx, [rbp + 576]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n179_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n179_binop_α:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 3
                                                                                        jne   .Lx248_0
                        mov              rax, qword ptr [rbp + 584]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 560], 3
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n180_assign_α
.Lx248_0:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n182_unmark_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n180_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n180_assign_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n181_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn251:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn251]                         # fn
                        lea              rsi, [rbp + 480]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        je    n182_unmark_α
                                                                                        jmp   n182_unmark_α
n181_call_builtin_icon_β:
                                                                                        jmp   n182_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n182_unmark_α:
                        mov              rsp, qword ptr [rbp + 416]
                                                                                        jmp   n173_to_β
#-----------------------------------------------------------------------------------------------------------------------
n183_unmark_α:
                        mov              rsp, qword ptr [rbp + 304]
                                                                                        jmp   n168_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n185_var_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n187_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n187_call_proc_staged_α:
                        lea              rsi, [rbp + 128]
                        lea              rdx, [rbp + 144]
                        lea              rcx, [rbp + 160]
                        call             proc_check_dcα
                                                                                        jmp   .Lx263_2
.Lx263_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_tdel_ω
                                                                                        jmp   proc_tdel_ω
n187_call_proc_staged_β:
                                                                                        jmp   proc_tdel_ω
.Lx263_0:
                        .quad            .Lx263_0_s
.Lx263_0_s:
                        .string          "check"
#-----------------------------------------------------------------------------------------------------------------------
proc_tdel_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_tdel_β:
                                                                                        jmp   proc_tdel_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_tdel_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_tdel_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_tdel_dcα:
                        pop              r11
                        sub              rsp, 1376
                        mov              qword ptr [rsp + 1352], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1328], r11
                        lea              rax, [rip + .Lx264_2]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rax, [rip + .Lx264_3]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 1248                                      # suffix_off
                        mov              edx, 1328                                      # region_bytes
                        mov              ecx, 2                                         # np
                        mov              r8d, 2                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_tdel_α_body
.Lx264_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1360
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx264_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1360
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_check_α
proc_check_α:
proc_check_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:
                        sub              rsp, 2224
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
                        lea              rdi, [rip + .Lrkfn355]                         # fn
                        lea              rsi, [rbp + 2288]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              eax, 104
                                                                                        je    n268_disjunction_α
                                                                                        jmp   n267_assign_α
n266_call_builtin_icon_β:
                                                                                        jmp   n268_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n267_assign_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n268_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n268_disjunction_α:
                        mov              qword ptr [rbp + 1696], 0
                        mov              qword ptr [rbp + 1704], 0
                        mov              dword ptr [rbp + 1712], 0
                                                                                        jmp   n269_var_α
n268_disjunction_as:
                        mov              eax, dword ptr [rbp + 1712]
                        cmp              eax, 0
                                                                                        jne   .Lx358_0
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n287_lit_string_α
.Lx358_0:
                                                                                        jmp   n287_lit_string_α
n268_disjunction_β:
                        mov              eax, dword ptr [rbp + 1712]
                                                                                        jmp   n287_lit_string_α
n268_disjunction_af:
                        add              dword ptr [rbp + 1712], 1
                        mov              eax, dword ptr [rbp + 1712]
                                                                                        jmp   n287_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:
                        mov              rax, qword ptr [1879052288]                    # verbose
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 2256], rax                    # result
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n270_unop_test_α
n269_var_β:
                                                                                        jmp   n268_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n270_unop_test_α:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 104
                                                                                        je    n268_disjunction_af
                        cmp              eax, 0
                                                                                        je    n268_disjunction_af
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n271_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_string_α:
                        mov              qword ptr [rbp + 1856], 2                      # result
                        mov              dword ptr [rbp + 1860], 9
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n272_var_α
.Lx361_0:
                        .quad            .Lx361_0_s
.Lx361_0_s:
                        .string          "  \tsizes "
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n273_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n273_unop_α:
                        mov              rdi, qword ptr [rbp + 16]                      # lo
                        mov              rsi, qword ptr [rbp + 24]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n274_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_integer_α:
                        mov              qword ptr [rbp + 1968], 3                      # result
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n275_call_builtin_icon_α
.Lx365_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n275_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1912], rax
                        .section         .rodata
.Lrkfn367:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn367]                         # fn
                        lea              rsi, [rbp + 1888]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 104
                                                                                        je    n287_lit_string_α
                                                                                        jmp   n276_lit_string_α
n275_call_builtin_icon_β:
                                                                                        jmp   n287_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:
                        mov              qword ptr [rbp + 1984], 2                      # result
                        mov              dword ptr [rbp + 1988], 3
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n277_var_α
.Lx368_0:
                        .quad            .Lx368_0_s
.Lx368_0_s:
                        .string          " <="
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n278_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n278_unop_α:
                        mov              rdi, qword ptr [rbp + 2368]                    # lo
                        mov              rsi, qword ptr [rbp + 2376]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n279_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 3                      # result
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n280_call_builtin_icon_α
.Lx372_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n280_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2040], rax
                        .section         .rodata
.Lrkfn374:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn374]                         # fn
                        lea              rsi, [rbp + 2016]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 104
                                                                                        je    n287_lit_string_α
                                                                                        jmp   n281_lit_string_α
n280_call_builtin_icon_β:
                                                                                        jmp   n287_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:
                        mov              qword ptr [rbp + 2112], 2                      # result
                        mov              dword ptr [rbp + 2116], 3
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n282_var_α
.Lx375_0:
                        .quad            .Lx375_0_s
.Lx375_0_s:
                        .string          " <="
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n283_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n283_unop_α:
                        mov              rdi, qword ptr [rbp + 32]                      # lo
                        mov              rsi, qword ptr [rbp + 40]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   n284_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_integer_α:
                        mov              qword ptr [rbp + 2224], 3                      # result
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n285_call_builtin_icon_α
.Lx379_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n285_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2168], rax
                        .section         .rodata
.Lrkfn381:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn381]                         # fn
                        lea              rsi, [rbp + 2144]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 104
                                                                                        je    n287_lit_string_α
                                                                                        jmp   n286_call_builtin_icon_α
n285_call_builtin_icon_β:
                                                                                        jmp   n287_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n286_call_builtin_icon_α:
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
.Lrkfn383:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn383]                         # fn
                        lea              rsi, [rbp + 1744]                              # args
                        mov              edx, 6                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 104
                                                                                        je    n287_lit_string_α
                                                                                        jmp   n268_disjunction_as
n286_call_builtin_icon_β:
                                                                                        jmp   n287_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:
                        mov              qword ptr [rbp + 1680], 2                      # result
                        mov              dword ptr [rbp + 1684], 5
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n288_assign_α
.Lx384_0:
                        .quad            .Lx384_0_s
.Lx384_0_s:
                        .string          "\t[ok]"
#-----------------------------------------------------------------------------------------------------------------------
n288_assign_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n289_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n289_disjunction_α:
                        mov              qword ptr [rbp + 1232], 0
                        mov              qword ptr [rbp + 1240], 0
                        mov              dword ptr [rbp + 1248], 0
                                                                                        jmp   n335_var_α
n289_disjunction_as:
                        mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 0
                                                                                        jne   .Lx387_0
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n290_disjunction_α
.Lx387_0:
                                                                                        jmp   n290_disjunction_α
n289_disjunction_β:
                        mov              eax, dword ptr [rbp + 1248]
                                                                                        jmp   n290_disjunction_α
n289_disjunction_af:
                        add              dword ptr [rbp + 1248], 1
                        mov              eax, dword ptr [rbp + 1248]
                                                                                        jmp   n290_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n290_disjunction_α:
                        mov              qword ptr [rbp + 784], 0
                        mov              qword ptr [rbp + 792], 0
                        mov              dword ptr [rbp + 800], 0
                                                                                        jmp   n318_var_α
n290_disjunction_as:
                        mov              eax, dword ptr [rbp + 800]
                        cmp              eax, 0
                                                                                        jne   .Lx389_0
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n291_disjunction_α
.Lx389_0:
                                                                                        jmp   n291_disjunction_α
n290_disjunction_β:
                        mov              eax, dword ptr [rbp + 800]
                                                                                        jmp   n291_disjunction_α
n290_disjunction_af:
                        add              dword ptr [rbp + 800], 1
                        mov              eax, dword ptr [rbp + 800]
                                                                                        jmp   n291_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n291_disjunction_α:
                        mov              qword ptr [rbp + 128], 0
                        mov              qword ptr [rbp + 136], 0
                        mov              dword ptr [rbp + 144], 0
                                                                                        jmp   n294_var_α
n291_disjunction_as:
                        mov              eax, dword ptr [rbp + 144]
                        cmp              eax, 0
                                                                                        jne   .Lx391_0
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n292_var_α
.Lx391_0:
                                                                                        jmp   n292_var_α
n291_disjunction_β:
                        mov              eax, dword ptr [rbp + 144]
                                                                                        jmp   n292_var_α
n291_disjunction_af:
                        add              dword ptr [rbp + 144], 1
                        mov              eax, dword ptr [rbp + 144]
                                                                                        jmp   n292_var_α
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n293_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n293_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn395:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn395]                         # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        jne   .Lx394_240
                        add              rsp, 2224
                                                                                        jmp   proc_check_ω
.Lx394_240:
                        add              rsp, 2224
                                                                                        jmp   proc_check_ω
n293_call_builtin_icon_β:
                        add              rsp, 2224
                                                                                        jmp   proc_check_ω
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n295_unop_α
n294_var_β:
                                                                                        jmp   n291_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n295_unop_α:
                        mov              rdi, qword ptr [rbp + 2368]                    # lo
                        mov              rsi, qword ptr [rbp + 2376]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n296_var_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n297_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n297_unop_α:
                        mov              rdi, qword ptr [rbp + 48]                      # lo
                        mov              rsi, qword ptr [rbp + 56]                      # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n298_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n298_binop_test_α:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 112
                                                                                        je    .Lx402_0
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 112
                                                                                        je    .Lx402_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 3
                                                                                        jne   .Lx402_2
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 3
                                                                                        jne   .Lx402_2
.Lx402_1:
                        mov              rax, qword ptr [rbp + 728]
                        mov              rcx, qword ptr [rbp + 760]
                        cmp              rax, rcx
                                                                                        jge   n291_disjunction_af
                        mov              rcx, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rcx
                        mov              rcx, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rcx
                                                                                        jmp   n299_lit_string_α
.Lx402_0:
                        mov              rdi, qword ptr [rbp + 720]                     # a
                        mov              rsi, qword ptr [rbp + 728]                     # a
                        mov              rdx, qword ptr [rbp + 752]                     # b
                        mov              rcx, qword ptr [rbp + 760]                     # b
                        mov              r8d, 5                                         # op
                        lea              r9, [rbp + 704]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx402_1
                        cmp              eax, 1
                                                                                        je    n291_disjunction_af
                                                                                        jmp   n299_lit_string_α
.Lx402_2:
                        mov              rdi, qword ptr [rbp + 720]                     # lhs
                        mov              rsi, qword ptr [rbp + 728]                     # lhs
                        mov              rdx, qword ptr [rbp + 752]                     # rhs
                        mov              rcx, qword ptr [rbp + 760]                     # rhs
                        mov              r8d, 5                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n291_disjunction_af
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n299_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_string_α:
                        mov              qword ptr [rbp + 688], 2                       # result
                        mov              dword ptr [rbp + 692], 18
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n300_call_builtin_icon_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "\n generated twice:"
#-----------------------------------------------------------------------------------------------------------------------
n300_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn405:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn405]                         # fn
                        lea              rsi, [rbp + 656]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 104
                                                                                        je    n301_var_α
                                                                                        jmp   n301_var_α
n300_call_builtin_icon_β:
                                                                                        jmp   n301_var_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n302_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n302_iterate_α:
                        mov              qword ptr [rbp + 256], 0
.Lx409_0:
                        mov              rdi, qword ptr [rbp + 272]                     # obj
                        mov              rsi, qword ptr [rbp + 280]                     # obj
                        mov              rdx, qword ptr [rbp + 256]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              rax, 99
                                                                                        je    n315_keyword_icon_α
                                                                                        jmp   n303_assign_α
n302_iterate_β:
                        inc              qword ptr [rbp + 256]
                                                                                        jmp   .Lx409_0
#-----------------------------------------------------------------------------------------------------------------------
n303_assign_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n304_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n304_bound_α:
                        mov              qword ptr [rbp + 288], rsp
                                                                                        jmp   n305_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n305_disjunction_α:
                        mov              qword ptr [rbp + 336], 0
                        mov              qword ptr [rbp + 344], 0
                        mov              dword ptr [rbp + 352], 0
                                                                                        jmp   n310_var_α
n305_disjunction_as:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        jne   .Lx414_0
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n306_unmark_α
.Lx414_0:
                        cmp              eax, 1
                                                                                        jne   .Lx414_1
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n306_unmark_α
.Lx414_1:
                                                                                        jmp   n306_unmark_α
n305_disjunction_β:
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 0
                                                                                        je    n305_disjunction_af
                                                                                        jmp   n305_disjunction_af
n305_disjunction_af:
                        add              dword ptr [rbp + 352], 1
                        mov              eax, dword ptr [rbp + 352]
                        cmp              eax, 1
                                                                                        je    n307_lit_string_α
                                                                                        jmp   n306_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n306_unmark_α:
                        mov              rsp, qword ptr [rbp + 288]
                                                                                        jmp   n302_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_string_α:
                        mov              qword ptr [rbp + 608], 2                       # result
                        mov              dword ptr [rbp + 612], 1
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n308_var_α
n307_lit_string_β:
                                                                                        jmp   n305_disjunction_af
.Lx417_0:
                        .quad            .Lx417_0_s
.Lx417_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n309_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n309_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn421:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn421]                         # fn
                        lea              rsi, [rbp + 560]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        je    n305_disjunction_af
                                                                                        jmp   n305_disjunction_as
n309_call_builtin_icon_β:
                                                                                        jmp   n305_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n311_var_α
n310_var_β:
                                                                                        jmp   n305_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n312_var_α
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n313_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n313_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn429:              .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn429]                         # fn
                        lea              rsi, [rbp + 464]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n305_disjunction_af
                                                                                        jmp   n314_call_builtin_icon_α
n313_call_builtin_icon_β:
                                                                                        jmp   n305_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n314_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn431:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn431]                         # fn
                        lea              rsi, [rbp + 384]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    n305_disjunction_af
                                                                                        jmp   n305_disjunction_as
n314_call_builtin_icon_β:
                                                                                        jmp   n305_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n315_keyword_icon_α:
                        mov              qword ptr [rbp + 192], 0
                        mov              qword ptr [rbp + 200], 0
                                                                                        jmp   n316_assign_α
n315_keyword_icon_β:
                                                                                        jmp   n292_var_α
#-----------------------------------------------------------------------------------------------------------------------
n316_assign_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n317_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n317_conjunction_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n291_disjunction_as
n317_conjunction_β:
                                                                                        jmp   n292_var_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n319_var_α
n318_var_β:
                                                                                        jmp   n290_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n319_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n320_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n320_binop_α:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1200]
                        mov              rcx, qword ptr [rbp + 1208]
                        call             rt_cdiff@PLT
                        cmp              eax, 104
                                                                                        je    n290_disjunction_af
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n321_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n321_assign_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n322_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n322_unop_α:
                        mov              rdi, qword ptr [rbp + 1152]                    # lo
                        mov              rsi, qword ptr [rbp + 1160]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n323_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_integer_α:
                        mov              qword ptr [rbp + 1216], 3                      # result
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n324_binop_test_α
.Lx442_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n324_binop_test_α:
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 112
                                                                                        je    .Lx443_0
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 112
                                                                                        je    .Lx443_0
                        mov              eax, dword ptr [rbp + 1136]
                        cmp              eax, 3
                                                                                        jne   .Lx443_2
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 3
                                                                                        jne   .Lx443_2
.Lx443_1:
                        mov              rax, qword ptr [rbp + 1144]
                        mov              rcx, qword ptr [rbp + 1224]
                        cmp              rax, rcx
                                                                                        jle   n290_disjunction_af
                        mov              rcx, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1120], rcx
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1128], rcx
                                                                                        jmp   n325_lit_string_α
.Lx443_0:
                        mov              rdi, qword ptr [rbp + 1136]                    # a
                        mov              rsi, qword ptr [rbp + 1144]                    # a
                        mov              rdx, qword ptr [rbp + 1216]                    # b
                        mov              rcx, qword ptr [rbp + 1224]                    # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 1120]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx443_1
                        cmp              eax, 1
                                                                                        je    n290_disjunction_af
                                                                                        jmp   n325_lit_string_α
.Lx443_2:
                        mov              rdi, qword ptr [rbp + 1136]                    # lhs
                        mov              rsi, qword ptr [rbp + 1144]                    # lhs
                        mov              rdx, qword ptr [rbp + 1216]                    # rhs
                        mov              rcx, qword ptr [rbp + 1224]                    # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n290_disjunction_af
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n325_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:
                        mov              qword ptr [rbp + 1104], 2                      # result
                        mov              dword ptr [rbp + 1108], 27
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n326_call_builtin_icon_α
.Lx444_0:
                        .quad            .Lx444_0_s
.Lx444_0_s:
                        .string          "\n unknown values generated:"
#-----------------------------------------------------------------------------------------------------------------------
n326_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn446:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn446]                         # fn
                        lea              rsi, [rbp + 1072]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n327_lit_string_α
                                                                                        jmp   n327_lit_string_α
n326_call_builtin_icon_β:
                                                                                        jmp   n327_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_string_α:
                        mov              qword ptr [rbp + 944], 2                       # result
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n328_var_α
.Lx447_0:
                        .quad            .Lx447_0_s
.Lx447_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n328_var_α:
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n329_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n329_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn451:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn451]                         # fn
                        lea              rsi, [rbp + 1008]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    n332_keyword_icon_α
                                                                                        jmp   n330_iterate_α
n329_call_builtin_icon_β:
                                                                                        jmp   n332_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n330_iterate_α:
                        mov              qword ptr [rbp + 976], 0
.Lx453_0:
                        mov              rdi, qword ptr [rbp + 992]                     # obj
                        mov              rsi, qword ptr [rbp + 1000]                    # obj
                        mov              rdx, qword ptr [rbp + 976]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              rax, 99
                                                                                        je    n332_keyword_icon_α
                                                                                        jmp   n331_call_builtin_icon_α
n330_iterate_β:
                        inc              qword ptr [rbp + 976]
                                                                                        jmp   .Lx453_0
#-----------------------------------------------------------------------------------------------------------------------
n331_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lrkfn455:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn455]                         # fn
                        lea              rsi, [rbp + 896]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 104
                                                                                        je    n330_iterate_β
                                                                                        jmp   n330_iterate_β
n331_call_builtin_icon_β:
                                                                                        jmp   n330_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n332_keyword_icon_α:
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                                                                                        jmp   n333_assign_α
n332_keyword_icon_β:
                                                                                        jmp   n291_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n333_assign_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              rdx, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n334_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n334_conjunction_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n290_disjunction_as
n334_conjunction_β:
                                                                                        jmp   n291_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n336_var_α
n335_var_β:
                                                                                        jmp   n289_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n337_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n337_binop_α:
                        mov              rdi, qword ptr [rbp + 1632]
                        mov              rsi, qword ptr [rbp + 1640]
                        mov              rdx, qword ptr [rbp + 1648]
                        mov              rcx, qword ptr [rbp + 1656]
                        call             rt_cdiff@PLT
                        cmp              eax, 104
                                                                                        je    n289_disjunction_af
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n338_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n338_assign_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              rdx, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n339_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n339_unop_α:
                        mov              rdi, qword ptr [rbp + 1600]                    # lo
                        mov              rsi, qword ptr [rbp + 1608]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                                                                                        jmp   n340_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_integer_α:
                        mov              qword ptr [rbp + 1664], 3                      # result
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n341_binop_test_α
.Lx466_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n341_binop_test_α:
                        mov              eax, dword ptr [rbp + 1584]
                        cmp              eax, 112
                                                                                        je    .Lx467_0
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 112
                                                                                        je    .Lx467_0
                        mov              eax, dword ptr [rbp + 1584]
                        cmp              eax, 3
                                                                                        jne   .Lx467_2
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 3
                                                                                        jne   .Lx467_2
.Lx467_1:
                        mov              rax, qword ptr [rbp + 1592]
                        mov              rcx, qword ptr [rbp + 1672]
                        cmp              rax, rcx
                                                                                        jle   n289_disjunction_af
                        mov              rcx, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1568], rcx
                        mov              rcx, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1576], rcx
                                                                                        jmp   n342_lit_string_α
.Lx467_0:
                        mov              rdi, qword ptr [rbp + 1584]                    # a
                        mov              rsi, qword ptr [rbp + 1592]                    # a
                        mov              rdx, qword ptr [rbp + 1664]                    # b
                        mov              rcx, qword ptr [rbp + 1672]                    # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 1568]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx467_1
                        cmp              eax, 1
                                                                                        je    n289_disjunction_af
                                                                                        jmp   n342_lit_string_α
.Lx467_2:
                        mov              rdi, qword ptr [rbp + 1584]                    # lhs
                        mov              rsi, qword ptr [rbp + 1592]                    # lhs
                        mov              rdx, qword ptr [rbp + 1664]                    # rhs
                        mov              rcx, qword ptr [rbp + 1672]                    # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n289_disjunction_af
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n342_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:
                        mov              qword ptr [rbp + 1552], 2                      # result
                        mov              dword ptr [rbp + 1556], 16
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n343_call_builtin_icon_α
.Lx468_0:
                        .quad            .Lx468_0_s
.Lx468_0_s:
                        .string          "\n not generated:"
#-----------------------------------------------------------------------------------------------------------------------
n343_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lrkfn470:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn470]                         # fn
                        lea              rsi, [rbp + 1520]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 104
                                                                                        je    n344_lit_string_α
                                                                                        jmp   n344_lit_string_α
n343_call_builtin_icon_β:
                                                                                        jmp   n344_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_string_α:
                        mov              qword ptr [rbp + 1392], 2                      # result
                        mov              dword ptr [rbp + 1396], 1
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n345_var_α
.Lx471_0:
                        .quad            .Lx471_0_s
.Lx471_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n346_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n346_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lrkfn475:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn475]                         # fn
                        lea              rsi, [rbp + 1456]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 104
                                                                                        je    n349_keyword_icon_α
                                                                                        jmp   n347_iterate_α
n346_call_builtin_icon_β:
                                                                                        jmp   n349_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n347_iterate_α:
                        mov              qword ptr [rbp + 1424], 0
.Lx477_0:
                        mov              rdi, qword ptr [rbp + 1440]                    # obj
                        mov              rsi, qword ptr [rbp + 1448]                    # obj
                        mov              rdx, qword ptr [rbp + 1424]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              rax, 99
                                                                                        je    n349_keyword_icon_α
                                                                                        jmp   n348_call_builtin_icon_α
n347_iterate_β:
                        inc              qword ptr [rbp + 1424]
                                                                                        jmp   .Lx477_0
#-----------------------------------------------------------------------------------------------------------------------
n348_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lrkfn479:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn479]                         # fn
                        lea              rsi, [rbp + 1344]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 104
                                                                                        je    n347_iterate_β
                                                                                        jmp   n347_iterate_β
n348_call_builtin_icon_β:
                                                                                        jmp   n347_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n349_keyword_icon_α:
                        mov              qword ptr [rbp + 1296], 0
                        mov              qword ptr [rbp + 1304], 0
                                                                                        jmp   n350_assign_α
n349_keyword_icon_β:
                                                                                        jmp   n290_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n350_assign_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n351_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n351_conjunction_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n289_disjunction_as
n351_conjunction_β:
                                                                                        jmp   n290_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_check_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_check_β:
                                                                                        jmp   proc_check_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_check_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_check_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_check_dcα:
                        pop              r11
                        sub              rsp, 2464
                        mov              qword ptr [rsp + 2440], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2416], r11
                        lea              rax, [rip + .Lx483_2]
                        mov              qword ptr [rbp + 2424], rax
                        lea              rax, [rip + .Lx483_3]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp                                       # fb
                        mov              esi, 2336                                      # suffix_off
                        mov              edx, 2416                                      # region_bytes
                        mov              ecx, 3                                         # np
                        mov              r8d, 3                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_check_α_body
.Lx483_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2448
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx483_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2448
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_stale_α
proc_stale_α:
proc_stale_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n484_lit_integer_α:
                        sub              rsp, 2096
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
                        mov              qword ptr [rbp + 2128], 3                      # result
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
                        lea              rdi, [rip + .Lrkfn579]                         # fn
                        lea              rsi, [rbp + 2112]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 104
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
                        lea              rdi, [rip + .Lrkfn582]                         # fn
                        lea              rsi, [rbp + 2080]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 104
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
                        lea              rdi, [rip + .Lrkfn585]                         # fn
                        lea              rsi, [rbp + 2048]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 104
                                                                                        je    n491_lit_integer_α
                                                                                        jmp   n491_lit_integer_α
n490_call_builtin_icon_β:
                                                                                        jmp   n491_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_integer_α:
                        mov              qword ptr [rbp + 1760], 3                      # result
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
                        mov              rdi, qword ptr [rbp + 1760]                    # v
                        mov              rsi, qword ptr [rbp + 1768]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1760], 3
                        mov              qword ptr [rbp + 1768], rax
                        mov              rdi, qword ptr [rbp + 1776]                    # v
                        mov              rsi, qword ptr [rbp + 1784]                    # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1776], 3
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1744], rax
.Lx590_0:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              rcx, qword ptr [rbp + 1784]
                        cmp              rax, rcx
                                                                                        jle   .Lx590_240
                        add              rsp, 2096
                                                                                        jmp   n506_lit_string_α
.Lx590_240:
                        mov              qword ptr [rbp + 1728], 3
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n494_assign_α
n493_to_β:
                        inc              qword ptr [rbp + 1744]
                                                                                        jmp   .Lx590_0
#-----------------------------------------------------------------------------------------------------------------------
n494_assign_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n495_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n495_bound_α:
                        mov              qword ptr [rbp + 1792], rsp
                                                                                        jmp   n496_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n496_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n497_var_α
#-----------------------------------------------------------------------------------------------------------------------
n497_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n498_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n498_subscript_α:
                        mov              rdi, qword ptr [rbp + 1952]                    # base
                        mov              rsi, qword ptr [rbp + 1960]                    # base
                        mov              rdx, qword ptr [rbp + 1968]                    # idx
                        mov              rcx, qword ptr [rbp + 1976]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n501_var_α
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n499_var_α
#-----------------------------------------------------------------------------------------------------------------------
n499_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n500_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n500_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1984]                    # var
                        mov              rsi, qword ptr [rbp + 1992]                    # var
                        mov              rdx, qword ptr [rbp + 2016]                    # val
                        mov              rcx, qword ptr [rbp + 2024]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n501_var_α
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n501_var_α
#-----------------------------------------------------------------------------------------------------------------------
n501_var_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n502_var_α
#-----------------------------------------------------------------------------------------------------------------------
n502_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n503_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n503_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        .section         .rodata
.Lrkfn607:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn607]                         # fn
                        lea              rsi, [rbp + 1872]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 104
                                                                                        je    n505_unmark_α
                                                                                        jmp   n504_conjunction_α
n503_call_builtin_icon_β:
                                                                                        jmp   n505_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n504_conjunction_α:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n505_unmark_α
n504_conjunction_β:
                                                                                        jmp   n505_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n505_unmark_α:
                        mov              rsp, qword ptr [rbp + 1792]
                                                                                        jmp   n493_to_β
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:
                        mov              qword ptr [rbp + 1712], 2                      # result
                        mov              dword ptr [rbp + 1716], 12
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n507_call_builtin_icon_α
.Lx611_0:
                        .quad            .Lx611_0_s
.Lx611_0_s:
                        .string          "checking !S:"
#-----------------------------------------------------------------------------------------------------------------------
n507_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1688], rax
                        .section         .rodata
.Lrkfn613:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn613]                         # fn
                        lea              rsi, [rbp + 1680]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 104
                                                                                        je    n508_var_α
                                                                                        jmp   n508_var_α
n507_call_builtin_icon_β:
                                                                                        jmp   n508_var_α
#-----------------------------------------------------------------------------------------------------------------------
n508_var_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n509_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n509_iterate_α:
                        mov              qword ptr [rbp + 1168], 0
.Lx617_0:
                        mov              rdi, qword ptr [rbp + 1184]                    # obj
                        mov              rsi, qword ptr [rbp + 1192]                    # obj
                        mov              rdx, qword ptr [rbp + 1168]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              rax, 99
                                                                                        je    n528_lit_string_α
                                                                                        jmp   n510_assign_α
n509_iterate_β:
                        inc              qword ptr [rbp + 1168]
                                                                                        jmp   .Lx617_0
#-----------------------------------------------------------------------------------------------------------------------
n510_assign_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n511_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n511_bound_α:
                        mov              qword ptr [rbp + 1200], rsp
                                                                                        jmp   n512_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n512_disjunction_α:
                        mov              qword ptr [rbp + 1392], 0
                        mov              qword ptr [rbp + 1400], 0
                        mov              dword ptr [rbp + 1408], 0
                                                                                        jmp   n513_var_α
n512_disjunction_as:
                        mov              eax, dword ptr [rbp + 1408]
                        cmp              eax, 0
                                                                                        jne   .Lx622_0
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n521_var_α
.Lx622_0:
                                                                                        jmp   n521_var_α
n512_disjunction_β:
                        mov              eax, dword ptr [rbp + 1408]
                                                                                        jmp   n521_var_α
n512_disjunction_af:
                        add              dword ptr [rbp + 1408], 1
                        mov              eax, dword ptr [rbp + 1408]
                                                                                        jmp   n521_var_α
#-----------------------------------------------------------------------------------------------------------------------
n513_var_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n514_var_α
n513_var_β:
                                                                                        jmp   n516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n514_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n515_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n515_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1608], rax
                        .section         .rodata
.Lrkfn628:              .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn628]                         # fn
                        lea              rsi, [rbp + 1584]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 104
                                                                                        je    n516_var_α
                                                                                        jmp   n512_disjunction_af
n515_call_builtin_icon_β:
                                                                                        jmp   n516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n516_var_α:
                        mov              qword ptr [rbp + 1552], 0
                        mov              qword ptr [rbp + 1560], 0
                                                                                        jmp   n517_lit_string_α
n516_var_β:
                                                                                        jmp   n512_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n517_lit_string_α:
                        mov              qword ptr [rbp + 1504], 2                      # result
                        mov              dword ptr [rbp + 1508], 2
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n518_var_α
.Lx630_0:
                        .quad            .Lx630_0_s
.Lx630_0_s:
                        .string          "S["
#-----------------------------------------------------------------------------------------------------------------------
n518_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n519_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n519_lit_string_α:
                        mov              qword ptr [rbp + 1536], 2                      # result
                        mov              dword ptr [rbp + 1540], 7
                        mov              rax, qword ptr [rip + .Lx633_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n520_call_builtin_icon_α
.Lx633_0:
                        .quad            .Lx633_0_s
.Lx633_0_s:
                        .string          "] stale"
#-----------------------------------------------------------------------------------------------------------------------
n520_call_builtin_icon_α:
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
                        lea              rdi, [rip + .Lrkfn635]                         # fn
                        lea              rsi, [rbp + 1440]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 104
                                                                                        je    n521_var_α
                                                                                        jmp   n512_disjunction_as
n520_call_builtin_icon_β:
                                                                                        jmp   n521_var_α
#-----------------------------------------------------------------------------------------------------------------------
n521_var_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n522_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n522_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2176]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n523_random_α
#-----------------------------------------------------------------------------------------------------------------------
n523_random_α:
                        mov              rdi, qword ptr [rbp + 1360]                    # base
                        mov              rsi, qword ptr [rbp + 1368]                    # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n527_unmark_α
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n524_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n524_deref_α:
                        mov              rdi, qword ptr [rbp + 1344]                    # d
                        mov              rsi, qword ptr [rbp + 1352]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n527_unmark_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n525_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n525_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn643:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn643]                         # fn
                        lea              rsi, [rbp + 1280]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 104
                                                                                        je    n527_unmark_α
                                                                                        jmp   n526_conjunction_α
n525_call_builtin_icon_β:
                                                                                        jmp   n527_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n526_conjunction_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n527_unmark_α
n526_conjunction_β:
                                                                                        jmp   n527_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n527_unmark_α:
                        mov              rsp, qword ptr [rbp + 1200]
                                                                                        jmp   n509_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n528_lit_string_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], 12
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n529_call_builtin_icon_α
.Lx647_0:
                        .quad            .Lx647_0_s
.Lx647_0_s:
                        .string          "checking !T:"
#-----------------------------------------------------------------------------------------------------------------------
n529_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lrkfn649:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn649]                         # fn
                        lea              rsi, [rbp + 1104]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 104
                                                                                        je    n530_var_α
                                                                                        jmp   n530_var_α
n529_call_builtin_icon_β:
                                                                                        jmp   n530_var_α
#-----------------------------------------------------------------------------------------------------------------------
n530_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n531_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n531_iterate_α:
                        mov              qword ptr [rbp + 624], 0
.Lx653_0:
                        mov              rdi, qword ptr [rbp + 640]                     # obj
                        mov              rsi, qword ptr [rbp + 648]                     # obj
                        mov              rdx, qword ptr [rbp + 624]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              rax, 99
                                                                                        je    n551_lit_string_α
                                                                                        jmp   n532_assign_α
n531_iterate_β:
                        inc              qword ptr [rbp + 624]
                                                                                        jmp   .Lx653_0
#-----------------------------------------------------------------------------------------------------------------------
n532_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n533_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n533_bound_α:
                        mov              qword ptr [rbp + 656], rsp
                                                                                        jmp   n534_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n534_disjunction_α:
                        mov              qword ptr [rbp + 848], 0
                        mov              qword ptr [rbp + 856], 0
                        mov              dword ptr [rbp + 864], 0
                                                                                        jmp   n535_var_ref_α
n534_disjunction_as:
                        mov              eax, dword ptr [rbp + 864]
                        cmp              eax, 0
                                                                                        jne   .Lx658_0
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n544_var_α
.Lx658_0:
                                                                                        jmp   n544_var_α
n534_disjunction_β:
                        mov              eax, dword ptr [rbp + 864]
                                                                                        jmp   n544_var_α
n534_disjunction_af:
                        add              dword ptr [rbp + 864], 1
                        mov              eax, dword ptr [rbp + 864]
                                                                                        jmp   n544_var_α
#-----------------------------------------------------------------------------------------------------------------------
n535_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n536_var_α
n535_var_ref_β:
                                                                                        jmp   n534_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n536_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n537_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n537_subscript_α:
                        mov              rdi, qword ptr [rbp + 1024]                    # base
                        mov              rsi, qword ptr [rbp + 1032]                    # base
                        mov              rdx, qword ptr [rbp + 1040]                    # idx
                        mov              rcx, qword ptr [rbp + 1048]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n534_disjunction_af
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n538_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n538_deref_α:
                        mov              rdi, qword ptr [rbp + 1056]                    # d
                        mov              rsi, qword ptr [rbp + 1064]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n534_disjunction_af
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n539_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n539_unop_test_α:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 104
                                                                                        je    n534_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n534_disjunction_af
                        mov              qword ptr [rbp + 1008], 0
                        mov              qword ptr [rbp + 1016], 0
                                                                                        jmp   n540_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n540_lit_string_α:
                        mov              qword ptr [rbp + 960], 2                       # result
                        mov              dword ptr [rbp + 964], 2
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n541_var_α
.Lx666_0:
                        .quad            .Lx666_0_s
.Lx666_0_s:
                        .string          "T["
#-----------------------------------------------------------------------------------------------------------------------
n541_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n542_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n542_lit_string_α:
                        mov              qword ptr [rbp + 992], 2                       # result
                        mov              dword ptr [rbp + 996], 7
                        mov              rax, qword ptr [rip + .Lx669_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n543_call_builtin_icon_α
.Lx669_0:
                        .quad            .Lx669_0_s
.Lx669_0_s:
                        .string          "] stale"
#-----------------------------------------------------------------------------------------------------------------------
n543_call_builtin_icon_α:
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
.Lrkfn671:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn671]                         # fn
                        lea              rsi, [rbp + 896]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 104
                                                                                        je    n544_var_α
                                                                                        jmp   n534_disjunction_as
n543_call_builtin_icon_β:
                                                                                        jmp   n544_var_α
#-----------------------------------------------------------------------------------------------------------------------
n544_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n545_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n545_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2176]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n546_random_α
#-----------------------------------------------------------------------------------------------------------------------
n546_random_α:
                        mov              rdi, qword ptr [rbp + 816]                     # base
                        mov              rsi, qword ptr [rbp + 824]                     # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n550_unmark_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n547_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n547_deref_α:
                        mov              rdi, qword ptr [rbp + 800]                     # d
                        mov              rsi, qword ptr [rbp + 808]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n550_unmark_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n548_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n548_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn679:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn679]                         # fn
                        lea              rsi, [rbp + 736]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 104
                                                                                        je    n550_unmark_α
                                                                                        jmp   n549_conjunction_α
n548_call_builtin_icon_β:
                                                                                        jmp   n550_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n549_conjunction_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n550_unmark_α
n549_conjunction_β:
                                                                                        jmp   n550_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n550_unmark_α:
                        mov              rsp, qword ptr [rbp + 656]
                                                                                        jmp   n531_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n551_lit_string_α:
                        mov              qword ptr [rbp + 592], 2                       # result
                        mov              dword ptr [rbp + 596], 16
                        mov              rax, qword ptr [rip + .Lx683_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n552_call_builtin_icon_α
.Lx683_0:
                        .quad            .Lx683_0_s
.Lx683_0_s:
                        .string          "checking key(T):"
#-----------------------------------------------------------------------------------------------------------------------
n552_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn685:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn685]                         # fn
                        lea              rsi, [rbp + 560]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        je    n553_var_α
                                                                                        jmp   n553_var_α
n552_call_builtin_icon_β:
                                                                                        jmp   n553_var_α
#-----------------------------------------------------------------------------------------------------------------------
n553_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n554_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n554_iterate_α:
                        mov              qword ptr [rbp + 80], 0
.Lx689_0:
                        mov              rdi, qword ptr [rbp + 96]                      # obj
                        mov              rsi, qword ptr [rbp + 104]                     # obj
                        mov              rdx, qword ptr [rbp + 80]                      # idx
                        call             rt_list_bang_key_at@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              rax, 99
                                                                                        je    n574_call_builtin_icon_α
                                                                                        jmp   n555_assign_α
n554_iterate_β:
                        inc              qword ptr [rbp + 80]
                                                                                        jmp   .Lx689_0
#-----------------------------------------------------------------------------------------------------------------------
n555_assign_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n556_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n556_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n557_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n557_disjunction_α:
                        mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 312], 0
                        mov              dword ptr [rbp + 320], 0
                                                                                        jmp   n558_var_ref_α
n557_disjunction_as:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0
                                                                                        jne   .Lx694_0
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n567_var_α
.Lx694_0:
                                                                                        jmp   n567_var_α
n557_disjunction_β:
                        mov              eax, dword ptr [rbp + 320]
                                                                                        jmp   n567_var_α
n557_disjunction_af:
                        add              dword ptr [rbp + 320], 1
                        mov              eax, dword ptr [rbp + 320]
                                                                                        jmp   n567_var_α
#-----------------------------------------------------------------------------------------------------------------------
n558_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n559_var_α
n558_var_ref_β:
                                                                                        jmp   n557_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n559_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n560_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n560_subscript_α:
                        mov              rdi, qword ptr [rbp + 480]                     # base
                        mov              rsi, qword ptr [rbp + 488]                     # base
                        mov              rdx, qword ptr [rbp + 496]                     # idx
                        mov              rcx, qword ptr [rbp + 504]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n557_disjunction_af
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n561_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n561_deref_α:
                        mov              rdi, qword ptr [rbp + 512]                     # d
                        mov              rsi, qword ptr [rbp + 520]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n557_disjunction_af
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n562_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n562_unop_test_α:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 104
                                                                                        je    n557_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n557_disjunction_af
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                                                                                        jmp   n563_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n563_lit_string_α:
                        mov              qword ptr [rbp + 416], 2                       # result
                        mov              dword ptr [rbp + 420], 2
                        mov              rax, qword ptr [rip + .Lx702_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n564_var_α
.Lx702_0:
                        .quad            .Lx702_0_s
.Lx702_0_s:
                        .string          "T["
#-----------------------------------------------------------------------------------------------------------------------
n564_var_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n565_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n565_lit_string_α:
                        mov              qword ptr [rbp + 448], 2                       # result
                        mov              dword ptr [rbp + 452], 7
                        mov              rax, qword ptr [rip + .Lx705_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n566_call_builtin_icon_α
.Lx705_0:
                        .quad            .Lx705_0_s
.Lx705_0_s:
                        .string          "] stale"
#-----------------------------------------------------------------------------------------------------------------------
n566_call_builtin_icon_α:
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
.Lrkfn707:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn707]                         # fn
                        lea              rsi, [rbp + 352]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n567_var_α
                                                                                        jmp   n557_disjunction_as
n566_call_builtin_icon_β:
                                                                                        jmp   n567_var_α
#-----------------------------------------------------------------------------------------------------------------------
n567_var_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n568_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n568_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2176]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n569_random_α
#-----------------------------------------------------------------------------------------------------------------------
n569_random_α:
                        mov              rdi, qword ptr [rbp + 272]                     # base
                        mov              rsi, qword ptr [rbp + 280]                     # base
                        call             rt_random_var@PLT
                        cmp              eax, 104
                                                                                        je    n573_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n570_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n570_deref_α:
                        mov              rdi, qword ptr [rbp + 256]                     # d
                        mov              rsi, qword ptr [rbp + 264]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n573_unmark_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n571_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n571_call_builtin_icon_α:
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
                        lea              rdi, [rip + .Lrkfn715]                         # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n573_unmark_α
                                                                                        jmp   n572_conjunction_α
n571_call_builtin_icon_β:
                                                                                        jmp   n573_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n572_conjunction_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n573_unmark_α
n572_conjunction_β:
                                                                                        jmp   n573_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n573_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n554_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n574_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn720:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn720]                         # fn
                        lea              rsi, [rbp + 32]                                # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    n575_return_α
                                                                                        jmp   n575_return_α
n574_call_builtin_icon_β:
                                                                                        jmp   n575_return_α
#-----------------------------------------------------------------------------------------------------------------------
n575_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_stale_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_stale_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_stale_β:
                                                                                        jmp   proc_stale_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_stale_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_stale_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
proc_stale_dcα:
                        pop              r11
                        sub              rsp, 2272
                        mov              qword ptr [rsp + 2248], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2224], r11
                        lea              rax, [rip + .Lx722_2]
                        mov              qword ptr [rbp + 2232], rax
                        lea              rax, [rip + .Lx722_3]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rdi, rbp                                       # fb
                        mov              esi, 2144                                      # suffix_off
                        mov              edx, 2224                                      # region_bytes
                        mov              ecx, 0                                         # np
                        mov              r8d, 0                                         # nargs
                        mov              r9d, 0                                         # idx
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_stale_α_body
.Lx722_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2256
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx722_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2256
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n723_disjunction_α:
                        mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 680], 0
                        mov              dword ptr [rbp + 688], 0
                                                                                        jmp   n733_var_ref_α
n723_disjunction_as:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0
                                                                                        jne   .Lx755_0
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n724_disjunction_α
.Lx755_0:
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
                                                                                        jmp   n732_lit_integer_α
n724_disjunction_as:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 0
                                                                                        jne   .Lx757_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n725_disjunction_α
.Lx757_0:
                        cmp              eax, 1
                                                                                        jne   .Lx757_1
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n725_disjunction_α
.Lx757_1:
                        cmp              eax, 2
                                                                                        jne   .Lx757_2
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n725_disjunction_α
.Lx757_2:
                                                                                        jmp   n725_disjunction_α
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
                                                                                        je    n731_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n730_lit_integer_α
                                                                                        jmp   n741_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n725_disjunction_α:
                        mov              qword ptr [rbp + 592], 0
                        mov              qword ptr [rbp + 600], 0
                        mov              dword ptr [rbp + 608], 0
                                                                                        jmp   n729_lit_integer_α
n725_disjunction_as:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0
                                                                                        jne   .Lx759_0
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n726_call_proc_staged_α
.Lx759_0:
                        cmp              eax, 1
                                                                                        jne   .Lx759_1
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n726_call_proc_staged_α
.Lx759_1:
                        cmp              eax, 2
                                                                                        jne   .Lx759_2
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n726_call_proc_staged_α
.Lx759_2:
                                                                                        jmp   n726_call_proc_staged_α
n725_disjunction_β:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0
                                                                                        je    n725_disjunction_af
                        cmp              eax, 1
                                                                                        je    n725_disjunction_af
                                                                                        jmp   n725_disjunction_af
n725_disjunction_af:
                        add              dword ptr [rbp + 608], 1
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 1
                                                                                        je    n728_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n727_lit_integer_α
                                                                                        jmp   n724_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n726_call_proc_staged_α:
                        lea              rsi, [rbp + 512]
                        lea              rdx, [rbp + 592]
                        call             proc_tdel_dcα
                                                                                        jmp   .Lx761_2
.Lx761_2:
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n725_disjunction_β
                                                                                        jmp   n725_disjunction_β
n726_call_proc_staged_β:
                                                                                        jmp   n725_disjunction_β
.Lx761_0:
                        .quad            .Lx761_0_s
.Lx761_0_s:
                        .string          "tdel"
#-----------------------------------------------------------------------------------------------------------------------
n727_lit_integer_α:
                        mov              qword ptr [rbp + 656], 3                       # result
                        mov              rax, qword ptr [rip + .Lx762_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n725_disjunction_as
n727_lit_integer_β:
                                                                                        jmp   n725_disjunction_af
.Lx762_0:
                        .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n728_lit_integer_α:
                        mov              qword ptr [rbp + 640], 3                       # result
                        mov              rax, qword ptr [rip + .Lx763_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n725_disjunction_as
n728_lit_integer_β:
                                                                                        jmp   n725_disjunction_af
.Lx763_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_integer_α:
                        mov              qword ptr [rbp + 624], 3                       # result
                        mov              rax, qword ptr [rip + .Lx764_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n725_disjunction_as
n729_lit_integer_β:
                                                                                        jmp   n725_disjunction_af
.Lx764_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_integer_α:
                        mov              qword ptr [rbp + 576], 3                       # result
                        mov              rax, qword ptr [rip + .Lx765_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n724_disjunction_as
n730_lit_integer_β:
                                                                                        jmp   n724_disjunction_af
.Lx765_0:
                        .quad            991
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_integer_α:
                        mov              qword ptr [rbp + 560], 3                       # result
                        mov              rax, qword ptr [rip + .Lx766_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n724_disjunction_as
n731_lit_integer_β:
                                                                                        jmp   n724_disjunction_af
.Lx766_0:
                        .quad            619
#-----------------------------------------------------------------------------------------------------------------------
n732_lit_integer_α:
                        mov              qword ptr [rbp + 544], 3                       # result
                        mov              rax, qword ptr [rip + .Lx767_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n724_disjunction_as
n732_lit_integer_β:
                                                                                        jmp   n724_disjunction_af
.Lx767_0:
                        .quad            41
#-----------------------------------------------------------------------------------------------------------------------
n733_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n734_lit_integer_α
n733_var_ref_β:
                                                                                        jmp   n723_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_integer_α:
                        mov              qword ptr [rbp + 768], 3                       # result
                        mov              rax, qword ptr [rip + .Lx770_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n735_subscript_α
.Lx770_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n735_subscript_α:
                        mov              rdi, qword ptr [rbp + 752]                     # base
                        mov              rsi, qword ptr [rbp + 760]                     # base
                        mov              rdx, qword ptr [rbp + 768]                     # idx
                        mov              rcx, qword ptr [rbp + 776]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n723_disjunction_af
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n736_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n736_deref_α:
                        mov              rdi, qword ptr [rbp + 784]                     # d
                        mov              rsi, qword ptr [rbp + 792]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n723_disjunction_af
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n737_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n737_lit_string_α:
                        mov              qword ptr [rbp + 816], 2                       # result
                        mov              dword ptr [rbp + 820], 2
                        mov              rax, qword ptr [rip + .Lx773_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n738_binop_test_α
.Lx773_0:
                        .quad            .Lx773_0_s
.Lx773_0_s:
                        .string          "-v"
#-----------------------------------------------------------------------------------------------------------------------
n738_binop_test_α:
                        mov              rdi, qword ptr [rbp + 800]                     # lhs
                        mov              rsi, qword ptr [rbp + 808]                     # lhs
                        mov              rdx, qword ptr [rbp + 816]                     # rhs
                        mov              rcx, qword ptr [rbp + 824]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n723_disjunction_af
                        mov              rdi, qword ptr [rbp + 816]                     # d
                        mov              rsi, qword ptr [rbp + 824]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n739_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n739_lit_integer_α:
                        mov              qword ptr [rbp + 720], 3                       # result
                        mov              rax, qword ptr [rip + .Lx775_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n740_assign_α
.Lx775_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n740_assign_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [1879052288], rax                    # verbose
                        mov              qword ptr [1879052296], rdx
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n723_disjunction_as
n740_assign_β:
                                                                                        jmp   n724_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n741_disjunction_α:
                        mov              qword ptr [rbp + 208], 0
                        mov              qword ptr [rbp + 216], 0
                        mov              dword ptr [rbp + 224], 0
                                                                                        jmp   n753_lit_integer_α
n741_disjunction_as:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0
                                                                                        jne   .Lx778_0
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n742_disjunction_α
.Lx778_0:
                        cmp              eax, 1
                                                                                        jne   .Lx778_1
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n742_disjunction_α
.Lx778_1:
                        cmp              eax, 2
                                                                                        jne   .Lx778_2
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n742_disjunction_α
.Lx778_2:
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
                                                                                        je    n752_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n751_lit_integer_α
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n742_disjunction_α:
                        mov              qword ptr [rbp + 288], 0
                        mov              qword ptr [rbp + 296], 0
                        mov              dword ptr [rbp + 304], 0
                                                                                        jmp   n750_lit_integer_α
n742_disjunction_as:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 0
                                                                                        jne   .Lx780_0
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n743_disjunction_α
.Lx780_0:
                        cmp              eax, 1
                                                                                        jne   .Lx780_1
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n743_disjunction_α
.Lx780_1:
                        cmp              eax, 2
                                                                                        jne   .Lx780_2
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n743_disjunction_α
.Lx780_2:
                                                                                        jmp   n743_disjunction_α
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
                                                                                        je    n748_lit_integer_α
                                                                                        jmp   n741_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n743_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n747_lit_integer_α
n743_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx782_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n744_call_proc_staged_α
.Lx782_0:
                        cmp              eax, 1
                                                                                        jne   .Lx782_1
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n744_call_proc_staged_α
.Lx782_1:
                        cmp              eax, 2
                                                                                        jne   .Lx782_2
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n744_call_proc_staged_α
.Lx782_2:
                                                                                        jmp   n744_call_proc_staged_α
n743_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n743_disjunction_af
                        cmp              eax, 1
                                                                                        je    n743_disjunction_af
                                                                                        jmp   n743_disjunction_af
n743_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n746_lit_integer_α
                        cmp              eax, 2
                                                                                        je    n745_lit_integer_α
                                                                                        jmp   n742_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n744_call_proc_staged_α:
                        lea              rsi, [rbp + 208]
                        lea              rdx, [rbp + 288]
                        lea              rcx, [rbp + 368]
                        call             proc_tins_dcα
                                                                                        jmp   .Lx784_2
.Lx784_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n743_disjunction_β
                                                                                        jmp   n743_disjunction_β
n744_call_proc_staged_β:
                                                                                        jmp   n743_disjunction_β
.Lx784_0:
                        .quad            .Lx784_0_s
.Lx784_0_s:
                        .string          "tins"
#-----------------------------------------------------------------------------------------------------------------------
n745_lit_integer_α:
                        mov              qword ptr [rbp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx785_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n743_disjunction_as
n745_lit_integer_β:
                                                                                        jmp   n743_disjunction_af
.Lx785_0:
                        .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n746_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx786_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n743_disjunction_as
n746_lit_integer_β:
                                                                                        jmp   n743_disjunction_af
.Lx786_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n747_lit_integer_α:
                        mov              qword ptr [rbp + 400], 3                       # result
                        mov              rax, qword ptr [rip + .Lx787_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n743_disjunction_as
n747_lit_integer_β:
                                                                                        jmp   n743_disjunction_af
.Lx787_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n748_lit_integer_α:
                        mov              qword ptr [rbp + 352], 3                       # result
                        mov              rax, qword ptr [rip + .Lx788_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n742_disjunction_as
n748_lit_integer_β:
                                                                                        jmp   n742_disjunction_af
.Lx788_0:
                        .quad            503
#-----------------------------------------------------------------------------------------------------------------------
n749_lit_integer_α:
                        mov              qword ptr [rbp + 336], 3                       # result
                        mov              rax, qword ptr [rip + .Lx789_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n742_disjunction_as
n749_lit_integer_β:
                                                                                        jmp   n742_disjunction_af
.Lx789_0:
                        .quad            419
#-----------------------------------------------------------------------------------------------------------------------
n750_lit_integer_α:
                        mov              qword ptr [rbp + 320], 3                       # result
                        mov              rax, qword ptr [rip + .Lx790_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n742_disjunction_as
n750_lit_integer_β:
                                                                                        jmp   n742_disjunction_af
.Lx790_0:
                        .quad            239
#-----------------------------------------------------------------------------------------------------------------------
n751_lit_integer_α:
                        mov              qword ptr [rbp + 272], 3                       # result
                        mov              rax, qword ptr [rip + .Lx791_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n741_disjunction_as
n751_lit_integer_β:
                                                                                        jmp   n741_disjunction_af
.Lx791_0:
                        .quad            233
#-----------------------------------------------------------------------------------------------------------------------
n752_lit_integer_α:
                        mov              qword ptr [rbp + 256], 3                       # result
                        mov              rax, qword ptr [rip + .Lx792_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n741_disjunction_as
n752_lit_integer_β:
                                                                                        jmp   n741_disjunction_af
.Lx792_0:
                        .quad            103
#-----------------------------------------------------------------------------------------------------------------------
n753_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx793_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n741_disjunction_as
n753_lit_integer_β:
                                                                                        jmp   n741_disjunction_af
.Lx793_0:
                        .quad            40
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
