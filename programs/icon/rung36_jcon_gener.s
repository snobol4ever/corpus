                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__tins:
                        sub              rsp, 1664
                        mov              qword ptr [rsp + 1640], rcx
                        mov              qword ptr [rsp + 1648], rdx
                        mov              rdi, rsp
                        add              rdi, 1504
                        xor              eax, eax
                        mov              ecx, 64
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
tins_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], 12
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n1_var_α
.Lx53_0:                .quad            .Lx53_0_s
.Lx53_0_s:              .string          "test insert:"
#-----------------------------------------------------------------------------------------------------------------------
n1_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              qword ptr [rsp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Lx56_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n3_call_builtin_icon_α
.Lx56_0:                .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α: mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1208], rax
                        .section         .rodata
.Lrkfn58:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn58]
                        lea              rsi, [rsp + 1200]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              eax, 104;                            je    n13_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_lit_string_α
n3_call_builtin_icon_β:                                                       jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 1
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n5_var_α
.Lx59_0:                .quad            .Lx59_0_s
.Lx59_0_s:              .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              qword ptr [rsp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n7_call_builtin_icon_α
.Lx62_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α: mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1320], rax
                        .section         .rodata
.Lrkfn64:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn64]
                        lea              rsi, [rsp + 1312]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              eax, 104;                            je    n13_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_lit_string_α
n7_call_builtin_icon_β:                                                       jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n9_var_α
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              qword ptr [rsp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n11_call_builtin_icon_α
.Lx68_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1448], rax
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1432], rax
                        .section         .rodata
.Lrkfn70:               .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn70]
                        lea              rsi, [rsp + 1424]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              eax, 104;                            je    n13_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_call_builtin_icon_α
n11_call_builtin_icon_β:
                                                                              jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1064], rax
                        .section         .rodata
.Lrkfn72:               .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]
                        lea              rsi, [rsp + 1056]
                        mov              edx, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              eax, 104;                            je    n13_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n13_call_builtin_icon_α
n12_call_builtin_icon_β:
                                                                              jmp   n13_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn74:               .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn74]
                        lea              rsi, [rsp + 1024]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              eax, 104;                            je    n15_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_assign_α
n13_call_builtin_icon_β:
                                                                              jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              rax, qword ptr [rsp + 1008]
                        mov              rdx, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:              mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 936], rax;          jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              qword ptr [rsp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n17_var_α
.Lx78_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n18_to_α
#-----------------------------------------------------------------------------------------------------------------------
n18_to_α:               mov              rdi, qword ptr [rsp + 976]
                        mov              rsi, qword ptr [rsp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 976], 3
                        mov              qword ptr [rsp + 984], rax
                        mov              rdi, qword ptr [rsp + 992]
                        mov              rsi, qword ptr [rsp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 992], 3
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 960], rax
.Lx82_0:                mov              rax, qword ptr [rsp + 960]
                        mov              rcx, qword ptr [rsp + 1000]
                        cmp              rax, rcx;                            jg    n20_var_α
                        mov              qword ptr [rsp + 944], 3
                        mov              qword ptr [rsp + 952], rax;          jmp   n19_call_builtin_icon_α
n18_to_β:               inc              qword ptr [rsp + 960];               jmp   .Lx82_0
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 888], rax
                        .section         .rodata
.Lrkfn84:               .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]
                        lea              rsi, [rsp + 880]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              eax, 104;                            je    n18_to_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n18_to_β
n19_call_builtin_icon_β:
                                                                              jmp   n18_to_β
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 856], rax;          jmp   n21_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn88:               .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rsp + 816]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              eax, 104;                            je    n23_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_assign_α
n21_call_builtin_icon_β:
                                                                              jmp   n23_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n23_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn91:               .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rsp + 784]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              eax, 104;                            je    n25_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n24_assign_α
n23_call_builtin_icon_β:
                                                                              jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:           mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 264], rax;          jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 328], rax;          jmp   n27_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n27_iterate_α:          mov              qword ptr [rsp + 304], 0
.Lx98_0:                mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              rdx, qword ptr [rsp + 304]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              rax, 104;                            je    n49_var_α
                                                                              jmp   n28_assign_α
n27_iterate_β:          inc              qword ptr [rsp + 304];               jmp   .Lx98_0
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:           mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n29_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn101:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn101]
                        lea              rsi, [rsp + 208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104;                            je    n27_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n30_bound_α
n29_call_builtin_icon_β:
                                                                              jmp   n27_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n30_bound_α:            mov              qword ptr [rsp + 336], rsp;          jmp   n31_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n31_disjunction_α:      mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              dword ptr [rsp + 400], 0;            jmp   n32_var_α
n31_disjunction_as:     mov              eax, dword ptr [rsp + 400]
                        cmp              eax, 0;                              jne   .Lx105_0
                                                                              jmp   n48_unmark_α
.Lx105_0:                                                                     jmp   n48_unmark_α
n31_disjunction_β:      mov              eax, dword ptr [rsp + 400];          jmp   n48_unmark_α
n31_disjunction_af:     add              dword ptr [rsp + 400], 1
                        mov              eax, dword ptr [rsp + 400];          jmp   n48_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 728], rax;          jmp   n33_unop_α
n32_var_β:                                                                    jmp   n31_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n33_unop_α:             mov              rdi, qword ptr [rsp + 1520]
                        mov              rsi, qword ptr [rsp + 1528]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 744], rax;          jmp   n35_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n35_binop_test_α:       mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 112;                            je    .Lx111_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 112;                            je    .Lx111_0
                        mov              eax, dword ptr [rsp + 704]
                        cmp              eax, 3;                              jne   .Lx111_2
                        mov              eax, dword ptr [rsp + 32]
                        cmp              eax, 3;                              jne   .Lx111_2
.Lx111_1:               mov              rax, qword ptr [rsp + 712]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              rax, rcx;                            jge   n31_disjunction_af
                        mov              rcx, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 688], rcx
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 696], rcx;          jmp   n36_lit_integer_α
.Lx111_0:               mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 5
                        lea              r9, [rsp + 688]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx111_1
                        cmp              eax, 1;                              je    n31_disjunction_af
                                                                              jmp   n36_lit_integer_α
.Lx111_2:               mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n31_disjunction_af
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 696], rax;          jmp   n36_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n37_var_α
.Lx112_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 472], rax;          jmp   n38_to_α
#-----------------------------------------------------------------------------------------------------------------------
n38_to_α:               mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 448], 3
                        mov              qword ptr [rsp + 456], rax
                        mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 464], 3
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 432], rax
.Lx116_0:               mov              rax, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 472]
                        cmp              rax, rcx;                            jg    n48_unmark_α
                        mov              qword ptr [rsp + 416], 3
                        mov              qword ptr [rsp + 424], rax;          jmp   n39_bound_α
n38_to_β:               inc              qword ptr [rsp + 432];               jmp   .Lx116_0
#-----------------------------------------------------------------------------------------------------------------------
n39_bound_α:            mov              qword ptr [rsp + 480], rsp;          jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:              mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 600], rax;          jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 664], rax;          jmp   n42_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n42_unop_α:             mov              rdi, qword ptr [rsp + 1520]
                        mov              rsi, qword ptr [rsp + 1528]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n43_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:      mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n44_coerce_numeric_α
.Lx124_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n44_coerce_numeric_α:   mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 5;                              je    .Lx126_1
                        cmp              eax, 3;                              jne   .Lx126_0
                        mov              eax, dword ptr [rsp + 672]
                        cmp              eax, 3;                              jne   .Lx126_0
.Lx126_1:               mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 632], rax;          jmp   n45_binop_α
.Lx126_0:               lea              rdi, [rsp + 640]
                        lea              rsi, [rsp + 672]
                        lea              rdx, [rsp + 624]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n45_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_α:            mov              eax, dword ptr [rsp + 624]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx127_2
                        mov              rax, qword ptr [rsp + 632]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 608], 3
                        mov              qword ptr [rsp + 616], rax;          jmp   .Lx127_7
.Lx127_2:               and              edx, 1;                              jz    .Lx127_0
                        mov              rsi, qword ptr [rsp + 632]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx127_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx127_4
.Lx127_3:               movq             xmm0, rsi
.Lx127_4:               cmp              ecx, 5;                              je    .Lx127_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx127_6
.Lx127_5:               movq             xmm1, rdi
.Lx127_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 608], 5
                        mov              qword ptr [rsp + 616], rax
.Lx127_7:                                                                     jmp   n46_call_builtin_icon_α
.Lx127_0:               mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        mov              rdx, qword ptr [rsp + 672]
                        mov              rcx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n47_unmark_α
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n46_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn129:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn129]
                        lea              rsi, [rsp + 544]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              eax, 104;                            je    n47_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n47_unmark_α
n46_call_builtin_icon_β:
                                                                              jmp   n47_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n47_unmark_α:           mov              rsp, qword ptr [rsp + 480];          jmp   n38_to_β
#-----------------------------------------------------------------------------------------------------------------------
n48_unmark_α:           mov              rsp, qword ptr [rsp + 336];          jmp   n27_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:              mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 152], rax;          jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 168], rax;          jmp   n51_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 184], rax;          jmp   n52_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_proc_staged_α: lea              rsi, [rsp + 144]
                        lea              rdx, [rsp + 160]
                        lea              rcx, [rsp + 176]
                        call             check_dcα;                           jmp   .Lx141_2
.Lx141_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx141_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
.Lx141_29:              mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104;                            je    tins_ω
                                                                              jmp   tins_γ
n52_call_proc_staged_β:                                                       jmp   tins_ω
.Lx141_0:               .quad            .Lx141_0_s
.Lx141_0_s:             .string          "check"
#-----------------------------------------------------------------------------------------------------------------------
tins_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
tins_β:
                                                                              jmp   tins_ω
#-----------------------------------------------------------------------------------------------------------------------
tins_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1640]
                        add              rsp, 1664;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tins_ω:
                        mov              rcx, qword ptr [rsp + 1648]
                        add              rsp, 1664;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tins_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rcx
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rsp + 16]
                        mov              edi, 2
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        lea              rcx, [rip + .Lx142_2]
                        lea              rdx, [rip + .Lx142_3];               jmp   FN__tins
.Lx142_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx142_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__tdel:
                        sub              rsp, 1392
                        mov              qword ptr [rsp + 1368], rcx
                        mov              qword ptr [rsp + 1376], rdx
                        mov              rdi, rsp
                        add              rdi, 1248
                        xor              eax, eax
                        mov              ecx, 64
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
tdel_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:      mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 12
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n144_var_α
.Lx188_0:               .quad            .Lx188_0_s
.Lx188_0_s:             .string          "test delete:"
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n145_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:     mov              qword ptr [rsp + 1120], 3            # result
                        mov              rax, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n146_call_builtin_icon_α
.Lx191_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n146_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1064], rax
                        .section         .rodata
.Lrkfn193:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn193]
                        lea              rsi, [rsp + 1056]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              eax, 104;                            je    n152_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n147_lit_string_α
n146_call_builtin_icon_β:
                                                                              jmp   n152_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:      mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n148_var_α
.Lx194_0:               .quad            .Lx194_0_s
.Lx194_0_s:             .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n149_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:     mov              qword ptr [rsp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n150_call_builtin_icon_α
.Lx197_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n150_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1176], rax
                        .section         .rodata
.Lrkfn199:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]
                        lea              rsi, [rsp + 1168]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              eax, 104;                            je    n152_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n151_call_builtin_icon_α
n150_call_builtin_icon_β:
                                                                              jmp   n152_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n151_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 952], rax
                        .section         .rodata
.Lrkfn201:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn201]
                        lea              rsi, [rsp + 944]
                        mov              edx, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              eax, 104;                            je    n152_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n152_call_builtin_icon_α
n151_call_builtin_icon_β:
                                                                              jmp   n152_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn203:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn203]
                        lea              rsi, [rsp + 912]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              eax, 104;                            je    n154_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n153_assign_α
n152_call_builtin_icon_β:
                                                                              jmp   n154_var_α
#-----------------------------------------------------------------------------------------------------------------------
n153_assign_α:          mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n154_var_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 824], rax;          jmp   n155_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:     mov              qword ptr [rsp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n156_var_α
.Lx207_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n156_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 888], rax;          jmp   n157_to_α
#-----------------------------------------------------------------------------------------------------------------------
n157_to_α:              mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 864], 3
                        mov              qword ptr [rsp + 872], rax
                        mov              rdi, qword ptr [rsp + 880]
                        mov              rsi, qword ptr [rsp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 880], 3
                        mov              qword ptr [rsp + 888], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 848], rax
.Lx211_0:               mov              rax, qword ptr [rsp + 848]
                        mov              rcx, qword ptr [rsp + 888]
                        cmp              rax, rcx;                            jg    n159_var_α
                        mov              qword ptr [rsp + 832], 3
                        mov              qword ptr [rsp + 840], rax;          jmp   n158_call_builtin_icon_α
n157_to_β:              inc              qword ptr [rsp + 848];               jmp   .Lx211_0
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 776], rax
                        .section         .rodata
.Lrkfn213:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn213]
                        lea              rsi, [rsp + 768]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              eax, 104;                            je    n157_to_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n157_to_β
n158_call_builtin_icon_β:
                                                                              jmp   n157_to_β
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:             mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 744], rax;          jmp   n160_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn217:              .string          "copy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn217]
                        lea              rsi, [rsp + 704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              eax, 104;                            je    n162_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n161_assign_α
n160_call_builtin_icon_β:
                                                                              jmp   n162_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n161_assign_α:          mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n162_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n162_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn220:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn220]
                        lea              rsi, [rsp + 672]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              eax, 104;                            je    n164_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n163_assign_α
n162_call_builtin_icon_β:
                                                                              jmp   n164_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n163_assign_α:          mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n164_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_integer_α:     mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n165_assign_α
.Lx222_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n165_assign_α:          mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n166_var_α
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:             mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 248], rax;          jmp   n167_var_α
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:             mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 296], rax;          jmp   n168_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n168_iterate_α:         mov              qword ptr [rsp + 272], 0
.Lx229_0:               mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              rax, 104;                            je    n184_var_α
                                                                              jmp   n169_call_builtin_icon_α
n168_iterate_β:         inc              qword ptr [rsp + 272];               jmp   .Lx229_0
#-----------------------------------------------------------------------------------------------------------------------
n169_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn231:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn231]
                        lea              rsi, [rsp + 192]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104;                            je    n168_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n170_bound_α
n169_call_builtin_icon_β:
                                                                              jmp   n168_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n170_bound_α:           mov              qword ptr [rsp + 304], rsp;          jmp   n171_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:     mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n172_var_α
.Lx234_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n172_var_α:             mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 408], rax;          jmp   n173_to_α
#-----------------------------------------------------------------------------------------------------------------------
n173_to_α:              mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 384], 3
                        mov              qword ptr [rsp + 392], rax
                        mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 400], 3
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 368], rax
.Lx238_0:               mov              rax, qword ptr [rsp + 368]
                        mov              rcx, qword ptr [rsp + 408]
                        cmp              rax, rcx;                            jg    n183_unmark_α
                        mov              qword ptr [rsp + 352], 3
                        mov              qword ptr [rsp + 360], rax;          jmp   n174_bound_α
n173_to_β:              inc              qword ptr [rsp + 368];               jmp   .Lx238_0
#-----------------------------------------------------------------------------------------------------------------------
n174_bound_α:           mov              qword ptr [rsp + 416], rsp;          jmp   n175_var_α
#-----------------------------------------------------------------------------------------------------------------------
n175_var_α:             mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 536], rax;          jmp   n176_var_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_α:             mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 600], rax;          jmp   n177_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n177_lit_integer_α:     mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n178_coerce_numeric_α
.Lx245_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n178_coerce_numeric_α:  mov              eax, dword ptr [rsp + 1296]
                        cmp              eax, 5;                              je    .Lx247_1
                        cmp              eax, 3;                              jne   .Lx247_0
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 3;                              jne   .Lx247_0
.Lx247_1:               mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 584], rax;          jmp   n179_binop_α
.Lx247_0:               lea              rdi, [rsp + 1296]
                        lea              rsi, [rsp + 608]
                        lea              rdx, [rsp + 576]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n179_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n179_binop_α:           mov              eax, dword ptr [rsp + 576]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx248_2
                        mov              rax, qword ptr [rsp + 584]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 560], 3
                        mov              qword ptr [rsp + 568], rax;          jmp   .Lx248_7
.Lx248_2:               and              edx, 1;                              jz    .Lx248_0
                        mov              rsi, qword ptr [rsp + 584]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx248_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx248_4
.Lx248_3:               movq             xmm0, rsi
.Lx248_4:               cmp              ecx, 5;                              je    .Lx248_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx248_6
.Lx248_5:               movq             xmm1, rdi
.Lx248_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 560], 5
                        mov              qword ptr [rsp + 568], rax
.Lx248_7:                                                                     jmp   n180_assign_α
.Lx248_0:               mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              rdx, qword ptr [rsp + 608]
                        mov              rcx, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n182_unmark_α
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n180_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n180_assign_α:          mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n181_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n181_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn251:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn251]
                        lea              rsi, [rsp + 480]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 104;                            je    n182_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n182_unmark_α
n181_call_builtin_icon_β:
                                                                              jmp   n182_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n182_unmark_α:          mov              rsp, qword ptr [rsp + 416];          jmp   n173_to_β
#-----------------------------------------------------------------------------------------------------------------------
n183_unmark_α:          mov              rsp, qword ptr [rsp + 304];          jmp   n168_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 136], rax;          jmp   n185_var_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:             mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 152], rax;          jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:             mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 168], rax;          jmp   n187_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n187_call_proc_staged_α:
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 144]
                        lea              rcx, [rsp + 160]
                        call             check_dcα;                           jmp   .Lx263_2
.Lx263_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx263_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
.Lx263_29:              mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    tdel_ω
                                                                              jmp   tdel_γ
n187_call_proc_staged_β:
                                                                              jmp   tdel_ω
.Lx263_0:               .quad            .Lx263_0_s
.Lx263_0_s:             .string          "check"
#-----------------------------------------------------------------------------------------------------------------------
tdel_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
tdel_β:
                                                                              jmp   tdel_ω
#-----------------------------------------------------------------------------------------------------------------------
tdel_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1368]
                        add              rsp, 1392;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tdel_ω:
                        mov              rcx, qword ptr [rsp + 1376]
                        add              rsp, 1392;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tdel_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx264_2]
                        lea              rdx, [rip + .Lx264_3];               jmp   FN__tdel
.Lx264_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx264_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__check:
                        sub              rsp, 2496
                        mov              qword ptr [rsp + 2472], rcx
                        mov              qword ptr [rsp + 2480], rdx
                        mov              rdi, rsp
                        add              rdi, 2336
                        xor              eax, eax
                        mov              ecx, 64
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
check_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n266_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n266_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2296], rax
                        .section         .rodata
.Lrkfn355:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn355]
                        lea              rsi, [rsp + 2288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        cmp              eax, 104;                            je    n268_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n267_assign_α
n266_call_builtin_icon_β:
                                                                              jmp   n268_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n267_assign_α:          mov              rax, qword ptr [rsp + 2272]
                        mov              rdx, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx;         jmp   n268_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n268_disjunction_α:     mov              qword ptr [rsp + 1696], 0
                        mov              qword ptr [rsp + 1704], 0
                        mov              dword ptr [rsp + 1712], 0;           jmp   n269_var_α
n268_disjunction_as:    mov              eax, dword ptr [rsp + 1712]
                        cmp              eax, 0;                              jne   .Lx358_0
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n287_lit_string_α
.Lx358_0:                                                                     jmp   n287_lit_string_α
n268_disjunction_β:     mov              eax, dword ptr [rsp + 1712];         jmp   n287_lit_string_α
n268_disjunction_af:    add              dword ptr [rsp + 1712], 1
                        mov              eax, dword ptr [rsp + 1712];         jmp   n287_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:             mov              rax, qword ptr [r9 + 0]              # verbose
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 2256], rax          # result
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n270_unop_test_α
n269_var_β:                                                                   jmp   n268_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n270_unop_test_α:       mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 104;                            je    n268_disjunction_af
                        cmp              eax, 0;                              je    n268_disjunction_af
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n271_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_string_α:      mov              qword ptr [rsp + 1856], 2            # result
                        mov              dword ptr [rsp + 1860], 9
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n272_var_α
.Lx361_0:               .quad            .Lx361_0_s
.Lx361_0_s:             .string          "  \tsizes "
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n273_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n273_unop_α:            mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n274_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_integer_α:     mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Lx365_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n275_call_builtin_icon_α
.Lx365_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n275_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1912], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1896], rax
                        .section         .rodata
.Lrkfn367:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn367]
                        lea              rsi, [rsp + 1888]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              eax, 104;                            je    n287_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n276_lit_string_α
n275_call_builtin_icon_β:
                                                                              jmp   n287_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:      mov              qword ptr [rsp + 1984], 2            # result
                        mov              dword ptr [rsp + 1988], 3
                        mov              rax, qword ptr [rip + .Lx368_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n277_var_α
.Lx368_0:               .quad            .Lx368_0_s
.Lx368_0_s:             .string          " <="
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:             mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n278_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n278_unop_α:            mov              rdi, qword ptr [rsp + 2368]
                        mov              rsi, qword ptr [rsp + 2376]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n279_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_integer_α:     mov              qword ptr [rsp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Lx372_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n280_call_builtin_icon_α
.Lx372_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n280_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2040], rax
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2024], rax
                        .section         .rodata
.Lrkfn374:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn374]
                        lea              rsi, [rsp + 2016]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              eax, 104;                            je    n287_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n281_lit_string_α
n280_call_builtin_icon_β:
                                                                              jmp   n287_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:      mov              qword ptr [rsp + 2112], 2            # result
                        mov              dword ptr [rsp + 2116], 3
                        mov              rax, qword ptr [rip + .Lx375_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n282_var_α
.Lx375_0:               .quad            .Lx375_0_s
.Lx375_0_s:             .string          " <="
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:             mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 2208], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n283_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n283_unop_α:            mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx;         jmp   n284_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_integer_α:     mov              qword ptr [rsp + 2224], 3            # result
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n285_call_builtin_icon_α
.Lx379_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n285_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2152], rax
                        .section         .rodata
.Lrkfn381:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn381]
                        lea              rsi, [rsp + 2144]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              eax, 104;                            je    n287_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n286_call_builtin_icon_α
n285_call_builtin_icon_β:
                                                                              jmp   n287_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n286_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 1832], rax
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 1816], rax
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1800], rax
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1784], rax
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1752], rax
                        .section         .rodata
.Lrkfn383:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn383]
                        lea              rsi, [rsp + 1744]
                        mov              edx, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              eax, 104;                            je    n287_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n268_disjunction_as
n286_call_builtin_icon_β:
                                                                              jmp   n287_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:      mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 5
                        mov              rax, qword ptr [rip + .Lx384_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n288_assign_α
.Lx384_0:               .quad            .Lx384_0_s
.Lx384_0_s:             .string          "\t[ok]"
#-----------------------------------------------------------------------------------------------------------------------
n288_assign_α:          mov              rax, qword ptr [rsp + 1680]
                        mov              rdx, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n289_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n289_disjunction_α:     mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1240], 0
                        mov              dword ptr [rsp + 1248], 0;           jmp   n335_var_α
n289_disjunction_as:    mov              eax, dword ptr [rsp + 1248]
                        cmp              eax, 0;                              jne   .Lx387_0
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n290_disjunction_α
.Lx387_0:                                                                     jmp   n290_disjunction_α
n289_disjunction_β:     mov              eax, dword ptr [rsp + 1248];         jmp   n290_disjunction_α
n289_disjunction_af:    add              dword ptr [rsp + 1248], 1
                        mov              eax, dword ptr [rsp + 1248];         jmp   n290_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n290_disjunction_α:     mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              dword ptr [rsp + 800], 0;            jmp   n318_var_α
n290_disjunction_as:    mov              eax, dword ptr [rsp + 800]
                        cmp              eax, 0;                              jne   .Lx389_0
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 792], rax;          jmp   n291_disjunction_α
.Lx389_0:                                                                     jmp   n291_disjunction_α
n290_disjunction_β:     mov              eax, dword ptr [rsp + 800];          jmp   n291_disjunction_α
n290_disjunction_af:    add              dword ptr [rsp + 800], 1
                        mov              eax, dword ptr [rsp + 800];          jmp   n291_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n291_disjunction_α:     mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              dword ptr [rsp + 144], 0;            jmp   n294_var_α
n291_disjunction_as:    mov              eax, dword ptr [rsp + 144]
                        cmp              eax, 0;                              jne   .Lx391_0
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 136], rax;          jmp   n292_var_α
.Lx391_0:                                                                     jmp   n292_var_α
n291_disjunction_β:     mov              eax, dword ptr [rsp + 144];          jmp   n292_var_α
n291_disjunction_af:    add              dword ptr [rsp + 144], 1
                        mov              eax, dword ptr [rsp + 144];          jmp   n292_var_α
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:             mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 120], rax;          jmp   n293_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n293_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax
                        .section         .rodata
.Lrkfn395:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn395]
                        lea              rsi, [rsp + 80]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104;                            je    check_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   check_γ
n293_call_builtin_icon_β:
                                                                              jmp   check_ω
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 744], rax;          jmp   n295_unop_α
n294_var_β:                                                                   jmp   n291_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n295_unop_α:            mov              rdi, qword ptr [rsp + 2368]
                        mov              rsi, qword ptr [rsp + 2376]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n296_var_α
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 776], rax;          jmp   n297_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n297_unop_α:            mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n298_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n298_binop_test_α:      mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 112;                            je    .Lx402_0
                        mov              eax, dword ptr [rsp + 752]
                        cmp              eax, 112;                            je    .Lx402_0
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 3;                              jne   .Lx402_2
                        mov              eax, dword ptr [rsp + 752]
                        cmp              eax, 3;                              jne   .Lx402_2
.Lx402_1:               mov              rax, qword ptr [rsp + 728]
                        mov              rcx, qword ptr [rsp + 760]
                        cmp              rax, rcx;                            jge   n291_disjunction_af
                        mov              rcx, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rcx
                        mov              rcx, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rcx;          jmp   n299_lit_string_α
.Lx402_0:               mov              rdi, qword ptr [rsp + 720]
                        mov              rsi, qword ptr [rsp + 728]
                        mov              rdx, qword ptr [rsp + 752]
                        mov              rcx, qword ptr [rsp + 760]
                        mov              r8d, 5
                        lea              r9, [rsp + 704]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx402_1
                        cmp              eax, 1;                              je    n291_disjunction_af
                                                                              jmp   n299_lit_string_α
.Lx402_2:               mov              rdi, qword ptr [rsp + 720]
                        mov              rsi, qword ptr [rsp + 728]
                        mov              rdx, qword ptr [rsp + 752]
                        mov              rcx, qword ptr [rsp + 760]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n291_disjunction_af
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax;          jmp   n299_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_string_α:      mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 18
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n300_call_builtin_icon_α
.Lx403_0:               .quad            .Lx403_0_s
.Lx403_0_s:             .string          "\n generated twice:"
#-----------------------------------------------------------------------------------------------------------------------
n300_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        .section         .rodata
.Lrkfn405:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn405]
                        lea              rsi, [rsp + 656]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              eax, 104;                            je    n301_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n301_var_α
n300_call_builtin_icon_β:
                                                                              jmp   n301_var_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:             mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 280], rax;          jmp   n302_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n302_iterate_α:         mov              qword ptr [rsp + 256], 0
.Lx409_0:               mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 256]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              rax, 104;                            je    n315_keyword_icon_α
                                                                              jmp   n303_assign_α
n302_iterate_β:         inc              qword ptr [rsp + 256];               jmp   .Lx409_0
#-----------------------------------------------------------------------------------------------------------------------
n303_assign_α:          mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx;         jmp   n304_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n304_bound_α:           mov              qword ptr [rsp + 288], rsp;          jmp   n305_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n305_disjunction_α:     mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              dword ptr [rsp + 352], 0;            jmp   n310_var_α
n305_disjunction_as:    mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              jne   .Lx414_0
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax;          jmp   n306_unmark_α
.Lx414_0:               cmp              eax, 1;                              jne   .Lx414_1
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 344], rax;          jmp   n306_unmark_α
.Lx414_1:                                                                     jmp   n306_unmark_α
n305_disjunction_β:     mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              je    n305_disjunction_af
                                                                              jmp   n305_disjunction_af
n305_disjunction_af:    add              dword ptr [rsp + 352], 1
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 1;                              je    n307_lit_string_α
                                                                              jmp   n306_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n306_unmark_α:          mov              rsp, qword ptr [rsp + 288];          jmp   n302_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_string_α:      mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 1
                        mov              rax, qword ptr [rip + .Lx417_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n308_var_α
n307_lit_string_β:                                                            jmp   n305_disjunction_af
.Lx417_0:               .quad            .Lx417_0_s
.Lx417_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:             mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 632], rax;          jmp   n309_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n309_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn421:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn421]
                        lea              rsi, [rsp + 560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 104;                            je    n305_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n305_disjunction_as
n309_call_builtin_icon_β:
                                                                              jmp   n305_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:             mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 440], rax;          jmp   n311_var_α
n310_var_β:                                                                   jmp   n305_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:             mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 520], rax;          jmp   n312_var_α
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:             mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 536], rax;          jmp   n313_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n313_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn429:              .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn429]
                        lea              rsi, [rsp + 464]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 104;                            je    n305_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n314_call_builtin_icon_α
n313_call_builtin_icon_β:
                                                                              jmp   n305_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n314_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn431:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn431]
                        lea              rsi, [rsp + 384]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 104;                            je    n305_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n305_disjunction_as
n314_call_builtin_icon_β:
                                                                              jmp   n305_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n315_keyword_icon_α:    mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0;            jmp   n316_assign_α
n315_keyword_icon_β:                                                          jmp   n292_var_α
#-----------------------------------------------------------------------------------------------------------------------
n316_assign_α:          mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n317_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n317_conjunction_α:     mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax;          jmp   n291_disjunction_as
n317_conjunction_β:                                                           jmp   n292_var_α
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:             mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n319_var_α
n318_var_β:                                                                   jmp   n290_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n319_var_α:             mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n320_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n320_binop_α:           mov              rdi, qword ptr [rsp + 2368]
                        mov              rsi, qword ptr [rsp + 2376]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cdiff@PLT
                        cmp              eax, 104;                            je    n290_disjunction_af
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n321_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n321_assign_α:          mov              rax, qword ptr [rsp + 1168]
                        mov              rdx, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n322_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n322_unop_α:            mov              rdi, qword ptr [rsp + 1152]
                        mov              rsi, qword ptr [rsp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n323_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_integer_α:     mov              qword ptr [rsp + 1216], 3            # result
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n324_binop_test_α
.Lx442_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n324_binop_test_α:      mov              eax, dword ptr [rsp + 1136]
                        cmp              eax, 112;                            je    .Lx443_0
                        mov              eax, dword ptr [rsp + 1216]
                        cmp              eax, 112;                            je    .Lx443_0
                        mov              eax, dword ptr [rsp + 1136]
                        cmp              eax, 3;                              jne   .Lx443_2
                        mov              eax, dword ptr [rsp + 1216]
                        cmp              eax, 3;                              jne   .Lx443_2
.Lx443_1:               mov              rax, qword ptr [rsp + 1144]
                        mov              rcx, qword ptr [rsp + 1224]
                        cmp              rax, rcx;                            jle   n290_disjunction_af
                        mov              rcx, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1120], rcx
                        mov              rcx, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1128], rcx;         jmp   n325_lit_string_α
.Lx443_0:               mov              rdi, qword ptr [rsp + 1136]
                        mov              rsi, qword ptr [rsp + 1144]
                        mov              rdx, qword ptr [rsp + 1216]
                        mov              rcx, qword ptr [rsp + 1224]
                        mov              r8d, 7
                        lea              r9, [rsp + 1120]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx443_1
                        cmp              eax, 1;                              je    n290_disjunction_af
                                                                              jmp   n325_lit_string_α
.Lx443_2:               mov              rdi, qword ptr [rsp + 1136]
                        mov              rsi, qword ptr [rsp + 1144]
                        mov              rdx, qword ptr [rsp + 1216]
                        mov              rcx, qword ptr [rsp + 1224]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n290_disjunction_af
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n325_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:      mov              qword ptr [rsp + 1104], 2            # result
                        mov              dword ptr [rsp + 1108], 27
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n326_call_builtin_icon_α
.Lx444_0:               .quad            .Lx444_0_s
.Lx444_0_s:             .string          "\n unknown values generated:"
#-----------------------------------------------------------------------------------------------------------------------
n326_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn446:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn446]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              eax, 104;                            je    n327_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n327_lit_string_α
n326_call_builtin_icon_β:
                                                                              jmp   n327_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_string_α:      mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 1
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n328_var_α
.Lx447_0:               .quad            .Lx447_0_s
.Lx447_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n328_var_α:             mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n329_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n329_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax
                        .section         .rodata
.Lrkfn451:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn451]
                        lea              rsi, [rsp + 1008]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              eax, 104;                            je    n332_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n330_iterate_α
n329_call_builtin_icon_β:
                                                                              jmp   n332_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n330_iterate_α:         mov              qword ptr [rsp + 976], 0
.Lx453_0:               mov              rdi, qword ptr [rsp + 992]
                        mov              rsi, qword ptr [rsp + 1000]
                        mov              rdx, qword ptr [rsp + 976]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              rax, 104;                            je    n332_keyword_icon_α
                                                                              jmp   n331_call_builtin_icon_α
n330_iterate_β:         inc              qword ptr [rsp + 976];               jmp   .Lx453_0
#-----------------------------------------------------------------------------------------------------------------------
n331_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 904], rax
                        .section         .rodata
.Lrkfn455:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn455]
                        lea              rsi, [rsp + 896]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              eax, 104;                            je    n330_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n330_iterate_β
n331_call_builtin_icon_β:
                                                                              jmp   n330_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n332_keyword_icon_α:    mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0;            jmp   n333_assign_α
n332_keyword_icon_β:                                                          jmp   n291_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n333_assign_α:          mov              rax, qword ptr [rsp + 848]
                        mov              rdx, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n334_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n334_conjunction_α:     mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 824], rax;          jmp   n290_disjunction_as
n334_conjunction_β:                                                           jmp   n291_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n335_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n336_var_α
n335_var_β:                                                                   jmp   n289_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:             mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n337_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n337_binop_α:           mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 2368]
                        mov              rcx, qword ptr [rsp + 2376]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_cdiff@PLT
                        cmp              eax, 104;                            je    n289_disjunction_af
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n338_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n338_assign_α:          mov              rax, qword ptr [rsp + 1616]
                        mov              rdx, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n339_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n339_unop_α:            mov              rdi, qword ptr [rsp + 1600]
                        mov              rsi, qword ptr [rsp + 1608]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n340_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_integer_α:     mov              qword ptr [rsp + 1664], 3            # result
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n341_binop_test_α
.Lx466_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n341_binop_test_α:      mov              eax, dword ptr [rsp + 1584]
                        cmp              eax, 112;                            je    .Lx467_0
                        mov              eax, dword ptr [rsp + 1664]
                        cmp              eax, 112;                            je    .Lx467_0
                        mov              eax, dword ptr [rsp + 1584]
                        cmp              eax, 3;                              jne   .Lx467_2
                        mov              eax, dword ptr [rsp + 1664]
                        cmp              eax, 3;                              jne   .Lx467_2
.Lx467_1:               mov              rax, qword ptr [rsp + 1592]
                        mov              rcx, qword ptr [rsp + 1672]
                        cmp              rax, rcx;                            jle   n289_disjunction_af
                        mov              rcx, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1568], rcx
                        mov              rcx, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1576], rcx;         jmp   n342_lit_string_α
.Lx467_0:               mov              rdi, qword ptr [rsp + 1584]
                        mov              rsi, qword ptr [rsp + 1592]
                        mov              rdx, qword ptr [rsp + 1664]
                        mov              rcx, qword ptr [rsp + 1672]
                        mov              r8d, 7
                        lea              r9, [rsp + 1568]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx467_1
                        cmp              eax, 1;                              je    n289_disjunction_af
                                                                              jmp   n342_lit_string_α
.Lx467_2:               mov              rdi, qword ptr [rsp + 1584]
                        mov              rsi, qword ptr [rsp + 1592]
                        mov              rdx, qword ptr [rsp + 1664]
                        mov              rcx, qword ptr [rsp + 1672]
                        mov              r8d, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n289_disjunction_af
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n342_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:      mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 16
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n343_call_builtin_icon_α
.Lx468_0:               .quad            .Lx468_0_s
.Lx468_0_s:             .string          "\n not generated:"
#-----------------------------------------------------------------------------------------------------------------------
n343_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1528], rax
                        .section         .rodata
.Lrkfn470:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn470]
                        lea              rsi, [rsp + 1520]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              eax, 104;                            je    n344_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n344_lit_string_α
n343_call_builtin_icon_β:
                                                                              jmp   n344_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_string_α:      mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 1
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n345_var_α
.Lx471_0:               .quad            .Lx471_0_s
.Lx471_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n345_var_α:             mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n346_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n346_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1464], rax
                        .section         .rodata
.Lrkfn475:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn475]
                        lea              rsi, [rsp + 1456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              eax, 104;                            je    n349_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n347_iterate_α
n346_call_builtin_icon_β:
                                                                              jmp   n349_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n347_iterate_α:         mov              qword ptr [rsp + 1424], 0
.Lx477_0:               mov              rdi, qword ptr [rsp + 1440]
                        mov              rsi, qword ptr [rsp + 1448]
                        mov              rdx, qword ptr [rsp + 1424]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              rax, 104;                            je    n349_keyword_icon_α
                                                                              jmp   n348_call_builtin_icon_α
n347_iterate_β:         inc              qword ptr [rsp + 1424];              jmp   .Lx477_0
#-----------------------------------------------------------------------------------------------------------------------
n348_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1368], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1352], rax
                        .section         .rodata
.Lrkfn479:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn479]
                        lea              rsi, [rsp + 1344]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              eax, 104;                            je    n347_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n347_iterate_β
n348_call_builtin_icon_β:
                                                                              jmp   n347_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n349_keyword_icon_α:    mov              qword ptr [rsp + 1296], 0
                        mov              qword ptr [rsp + 1304], 0;           jmp   n350_assign_α
n349_keyword_icon_β:                                                          jmp   n290_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n350_assign_α:          mov              rax, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n351_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n351_conjunction_α:     mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n289_disjunction_as
n351_conjunction_β:                                                           jmp   n290_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
check_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
check_β:
                                                                              jmp   check_ω
#-----------------------------------------------------------------------------------------------------------------------
check_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2472]
                        add              rsp, 2496;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
check_ω:
                        mov              rcx, qword ptr [rsp + 2480]
                        add              rsp, 2496;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
check_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rcx
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rsp + 16]
                        mov              edi, 2
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 32
                        lea              rcx, [rip + .Lx483_2]
                        lea              rdx, [rip + .Lx483_3];               jmp   FN__check
.Lx483_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx483_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
FN__stale:
                        sub              rsp, 2320
                        mov              qword ptr [rsp + 2296], rcx
                        mov              qword ptr [rsp + 2304], rdx
                        mov              rdi, rsp
                        add              rdi, 2144
                        xor              eax, eax
                        mov              ecx, 64
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 4
                        call             rt_icn_zframe_args_install@PLT
stale_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n484_lit_integer_α:     mov              qword ptr [rsp + 2128], 3            # result
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n485_assign_α
.Lx576_0:               .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n485_assign_α:          mov              rax, qword ptr [rsp + 2128]
                        mov              rdx, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n486_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n486_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn579:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn579]
                        lea              rsi, [rsp + 2112]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              eax, 104;                            je    n488_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n487_assign_α
n486_call_builtin_icon_β:
                                                                              jmp   n488_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n487_assign_α:          mov              rax, qword ptr [rsp + 2096]
                        mov              rdx, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n488_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n488_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn582:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn582]
                        lea              rsi, [rsp + 2080]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        cmp              eax, 104;                            je    n490_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n489_assign_α
n488_call_builtin_icon_β:
                                                                              jmp   n490_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n489_assign_α:          mov              rax, qword ptr [rsp + 2064]
                        mov              rdx, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx;         jmp   n490_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n490_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn585:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn585]
                        lea              rsi, [rsp + 2048]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        cmp              eax, 104;                            je    n491_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n491_lit_integer_α
n490_call_builtin_icon_β:
                                                                              jmp   n491_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_integer_α:     mov              qword ptr [rsp + 1760], 3            # result
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n492_var_α
.Lx586_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n492_var_α:             mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n493_to_α
#-----------------------------------------------------------------------------------------------------------------------
n493_to_α:              mov              rdi, qword ptr [rsp + 1760]
                        mov              rsi, qword ptr [rsp + 1768]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1760], 3
                        mov              qword ptr [rsp + 1768], rax
                        mov              rdi, qword ptr [rsp + 1776]
                        mov              rsi, qword ptr [rsp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1776], 3
                        mov              qword ptr [rsp + 1784], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1744], rax
.Lx590_0:               mov              rax, qword ptr [rsp + 1744]
                        mov              rcx, qword ptr [rsp + 1784]
                        cmp              rax, rcx;                            jg    n506_lit_string_α
                        mov              qword ptr [rsp + 1728], 3
                        mov              qword ptr [rsp + 1736], rax;         jmp   n494_assign_α
n493_to_β:              inc              qword ptr [rsp + 1744];              jmp   .Lx590_0
#-----------------------------------------------------------------------------------------------------------------------
n494_assign_α:          mov              rax, qword ptr [rsp + 1728]
                        mov              rdx, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n495_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n495_bound_α:           mov              qword ptr [rsp + 1792], rsp;         jmp   n496_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n496_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2160]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n497_var_α
#-----------------------------------------------------------------------------------------------------------------------
n497_var_α:             mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n498_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n498_subscript_α:       mov              rdi, qword ptr [rsp + 1952]
                        mov              rsi, qword ptr [rsp + 1960]
                        mov              rdx, qword ptr [rsp + 1968]
                        mov              rcx, qword ptr [rsp + 1976]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n501_var_α
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n499_var_α
#-----------------------------------------------------------------------------------------------------------------------
n499_var_α:             mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n500_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n500_assign_var_α:      mov              rdi, qword ptr [rsp + 1984]
                        mov              rsi, qword ptr [rsp + 1992]
                        mov              rdx, qword ptr [rsp + 2016]
                        mov              rcx, qword ptr [rsp + 2024]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n501_var_α
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx;         jmp   n501_var_α
#-----------------------------------------------------------------------------------------------------------------------
n501_var_α:             mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n502_var_α
#-----------------------------------------------------------------------------------------------------------------------
n502_var_α:             mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n503_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n503_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1896], rax
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1880], rax
                        .section         .rodata
.Lrkfn607:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn607]
                        lea              rsi, [rsp + 1872]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              eax, 104;                            je    n505_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n504_conjunction_α
n503_call_builtin_icon_β:
                                                                              jmp   n505_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n504_conjunction_α:     mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n505_unmark_α
n504_conjunction_β:                                                           jmp   n505_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n505_unmark_α:          mov              rsp, qword ptr [rsp + 1792];         jmp   n493_to_β
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_string_α:      mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 12
                        mov              rax, qword ptr [rip + .Lx611_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n507_call_builtin_icon_α
.Lx611_0:               .quad            .Lx611_0_s
.Lx611_0_s:             .string          "checking !S:"
#-----------------------------------------------------------------------------------------------------------------------
n507_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1688], rax
                        .section         .rodata
.Lrkfn613:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn613]
                        lea              rsi, [rsp + 1680]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              eax, 104;                            je    n508_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n508_var_α
n507_call_builtin_icon_β:
                                                                              jmp   n508_var_α
#-----------------------------------------------------------------------------------------------------------------------
n508_var_α:             mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n509_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n509_iterate_α:         mov              qword ptr [rsp + 1168], 0
.Lx617_0:               mov              rdi, qword ptr [rsp + 1184]
                        mov              rsi, qword ptr [rsp + 1192]
                        mov              rdx, qword ptr [rsp + 1168]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              rax, 104;                            je    n528_lit_string_α
                                                                              jmp   n510_assign_α
n509_iterate_β:         inc              qword ptr [rsp + 1168];              jmp   .Lx617_0
#-----------------------------------------------------------------------------------------------------------------------
n510_assign_α:          mov              rax, qword ptr [rsp + 1152]
                        mov              rdx, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n511_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n511_bound_α:           mov              qword ptr [rsp + 1200], rsp;         jmp   n512_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n512_disjunction_α:     mov              qword ptr [rsp + 1392], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              dword ptr [rsp + 1408], 0;           jmp   n513_var_α
n512_disjunction_as:    mov              eax, dword ptr [rsp + 1408]
                        cmp              eax, 0;                              jne   .Lx622_0
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n521_var_α
.Lx622_0:                                                                     jmp   n521_var_α
n512_disjunction_β:     mov              eax, dword ptr [rsp + 1408];         jmp   n521_var_α
n512_disjunction_af:    add              dword ptr [rsp + 1408], 1
                        mov              eax, dword ptr [rsp + 1408];         jmp   n521_var_α
#-----------------------------------------------------------------------------------------------------------------------
n513_var_α:             mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n514_var_α
n513_var_β:                                                                   jmp   n516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n514_var_α:             mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n515_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n515_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1608], rax
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1592], rax
                        .section         .rodata
.Lrkfn628:              .string          "member"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn628]
                        lea              rsi, [rsp + 1584]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              eax, 104;                            je    n516_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n512_disjunction_af
n515_call_builtin_icon_β:
                                                                              jmp   n516_var_α
#-----------------------------------------------------------------------------------------------------------------------
n516_var_α:             mov              qword ptr [rsp + 1552], 0
                        mov              qword ptr [rsp + 1560], 0;           jmp   n517_lit_string_α
n516_var_β:                                                                   jmp   n512_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n517_lit_string_α:      mov              qword ptr [rsp + 1504], 2            # result
                        mov              dword ptr [rsp + 1508], 2
                        mov              rax, qword ptr [rip + .Lx630_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n518_var_α
.Lx630_0:               .quad            .Lx630_0_s
.Lx630_0_s:             .string          "S["
#-----------------------------------------------------------------------------------------------------------------------
n518_var_α:             mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n519_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n519_lit_string_α:      mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 7
                        mov              rax, qword ptr [rip + .Lx633_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n520_call_builtin_icon_α
.Lx633_0:               .quad            .Lx633_0_s
.Lx633_0_s:             .string          "] stale"
#-----------------------------------------------------------------------------------------------------------------------
n520_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1480], rax
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1448], rax
                        .section         .rodata
.Lrkfn635:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn635]
                        lea              rsi, [rsp + 1440]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              eax, 104;                            je    n521_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n512_disjunction_as
n520_call_builtin_icon_β:
                                                                              jmp   n521_var_α
#-----------------------------------------------------------------------------------------------------------------------
n521_var_α:             mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n522_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n522_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2176]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n523_random_α
#-----------------------------------------------------------------------------------------------------------------------
n523_random_α:          mov              rdi, qword ptr [rsp + 1360]
                        mov              rsi, qword ptr [rsp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n527_unmark_α
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n524_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n524_deref_α:           mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n527_unmark_α
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n525_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n525_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1304], rax
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1288], rax
                        .section         .rodata
.Lrkfn643:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn643]
                        lea              rsi, [rsp + 1280]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              eax, 104;                            je    n527_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n526_conjunction_α
n525_call_builtin_icon_β:
                                                                              jmp   n527_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n526_conjunction_α:     mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n527_unmark_α
n526_conjunction_β:                                                           jmp   n527_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n527_unmark_α:          mov              rsp, qword ptr [rsp + 1200];         jmp   n509_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n528_lit_string_α:      mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 12
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n529_call_builtin_icon_α
.Lx647_0:               .quad            .Lx647_0_s
.Lx647_0_s:             .string          "checking !T:"
#-----------------------------------------------------------------------------------------------------------------------
n529_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax
                        .section         .rodata
.Lrkfn649:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn649]
                        lea              rsi, [rsp + 1104]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              eax, 104;                            je    n530_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n530_var_α
n529_call_builtin_icon_β:
                                                                              jmp   n530_var_α
#-----------------------------------------------------------------------------------------------------------------------
n530_var_α:             mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 648], rax;          jmp   n531_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n531_iterate_α:         mov              qword ptr [rsp + 624], 0
.Lx653_0:               mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 624]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              rax, 104;                            je    n551_lit_string_α
                                                                              jmp   n532_assign_α
n531_iterate_β:         inc              qword ptr [rsp + 624];               jmp   .Lx653_0
#-----------------------------------------------------------------------------------------------------------------------
n532_assign_α:          mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n533_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n533_bound_α:           mov              qword ptr [rsp + 656], rsp;          jmp   n534_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n534_disjunction_α:     mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              dword ptr [rsp + 864], 0;            jmp   n535_var_ref_α
n534_disjunction_as:    mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 0;                              jne   .Lx658_0
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax;          jmp   n544_var_α
.Lx658_0:                                                                     jmp   n544_var_α
n534_disjunction_β:     mov              eax, dword ptr [rsp + 864];          jmp   n544_var_α
n534_disjunction_af:    add              dword ptr [rsp + 864], 1
                        mov              eax, dword ptr [rsp + 864];          jmp   n544_var_α
#-----------------------------------------------------------------------------------------------------------------------
n535_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2160]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n536_var_α
n535_var_ref_β:                                                               jmp   n534_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n536_var_α:             mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n537_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n537_subscript_α:       mov              rdi, qword ptr [rsp + 1024]
                        mov              rsi, qword ptr [rsp + 1032]
                        mov              rdx, qword ptr [rsp + 1040]
                        mov              rcx, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n534_disjunction_af
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n538_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n538_deref_α:           mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n534_disjunction_af
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n539_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n539_unop_test_α:       mov              eax, dword ptr [rsp + 1072]
                        cmp              eax, 104;                            je    n534_disjunction_af
                        cmp              eax, 0;                              jne   n534_disjunction_af
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0;           jmp   n540_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n540_lit_string_α:      mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 2
                        mov              rax, qword ptr [rip + .Lx666_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n541_var_α
.Lx666_0:               .quad            .Lx666_0_s
.Lx666_0_s:             .string          "T["
#-----------------------------------------------------------------------------------------------------------------------
n541_var_α:             mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 984], rax;          jmp   n542_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n542_lit_string_α:      mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 7
                        mov              rax, qword ptr [rip + .Lx669_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n543_call_builtin_icon_α
.Lx669_0:               .quad            .Lx669_0_s
.Lx669_0_s:             .string          "] stale"
#-----------------------------------------------------------------------------------------------------------------------
n543_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 904], rax
                        .section         .rodata
.Lrkfn671:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn671]
                        lea              rsi, [rsp + 896]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              eax, 104;                            je    n544_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n534_disjunction_as
n543_call_builtin_icon_β:
                                                                              jmp   n544_var_α
#-----------------------------------------------------------------------------------------------------------------------
n544_var_α:             mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 792], rax;          jmp   n545_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n545_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2176]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n546_random_α
#-----------------------------------------------------------------------------------------------------------------------
n546_random_α:          mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n550_unmark_α
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n547_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n547_deref_α:           mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n550_unmark_α
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n548_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n548_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn679:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn679]
                        lea              rsi, [rsp + 736]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              eax, 104;                            je    n550_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n549_conjunction_α
n548_call_builtin_icon_β:
                                                                              jmp   n550_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n549_conjunction_α:     mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 712], rax;          jmp   n550_unmark_α
n549_conjunction_β:                                                           jmp   n550_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n550_unmark_α:          mov              rsp, qword ptr [rsp + 656];          jmp   n531_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n551_lit_string_α:      mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 16
                        mov              rax, qword ptr [rip + .Lx683_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n552_call_builtin_icon_α
.Lx683_0:               .quad            .Lx683_0_s
.Lx683_0_s:             .string          "checking key(T):"
#-----------------------------------------------------------------------------------------------------------------------
n552_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn685:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn685]
                        lea              rsi, [rsp + 560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 104;                            je    n553_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n553_var_α
n552_call_builtin_icon_β:
                                                                              jmp   n553_var_α
#-----------------------------------------------------------------------------------------------------------------------
n553_var_α:             mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 104], rax;          jmp   n554_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n554_iterate_α:         mov              qword ptr [rsp + 80], 0
.Lx689_0:               mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_list_bang_key_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              rax, 104;                            je    n574_call_builtin_icon_α
                                                                              jmp   n555_assign_α
n554_iterate_β:         inc              qword ptr [rsp + 80];                jmp   .Lx689_0
#-----------------------------------------------------------------------------------------------------------------------
n555_assign_α:          mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n556_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n556_bound_α:           mov              qword ptr [rsp + 112], rsp;          jmp   n557_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n557_disjunction_α:     mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              dword ptr [rsp + 320], 0;            jmp   n558_var_ref_α
n557_disjunction_as:    mov              eax, dword ptr [rsp + 320]
                        cmp              eax, 0;                              jne   .Lx694_0
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax;          jmp   n567_var_α
.Lx694_0:                                                                     jmp   n567_var_α
n557_disjunction_β:     mov              eax, dword ptr [rsp + 320];          jmp   n567_var_α
n557_disjunction_af:    add              dword ptr [rsp + 320], 1
                        mov              eax, dword ptr [rsp + 320];          jmp   n567_var_α
#-----------------------------------------------------------------------------------------------------------------------
n558_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2160]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n559_var_α
n558_var_ref_β:                                                               jmp   n557_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n559_var_α:             mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 504], rax;          jmp   n560_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n560_subscript_α:       mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdx, qword ptr [rsp + 496]
                        mov              rcx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n557_disjunction_af
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n561_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n561_deref_α:           mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n557_disjunction_af
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n562_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n562_unop_test_α:       mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 104;                            je    n557_disjunction_af
                        cmp              eax, 0;                              jne   n557_disjunction_af
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0;            jmp   n563_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n563_lit_string_α:      mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 2
                        mov              rax, qword ptr [rip + .Lx702_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n564_var_α
.Lx702_0:               .quad            .Lx702_0_s
.Lx702_0_s:             .string          "T["
#-----------------------------------------------------------------------------------------------------------------------
n564_var_α:             mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 440], rax;          jmp   n565_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n565_lit_string_α:      mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 7
                        mov              rax, qword ptr [rip + .Lx705_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n566_call_builtin_icon_α
.Lx705_0:               .quad            .Lx705_0_s
.Lx705_0_s:             .string          "] stale"
#-----------------------------------------------------------------------------------------------------------------------
n566_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn707:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn707]
                        lea              rsi, [rsp + 352]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              eax, 104;                            je    n567_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n557_disjunction_as
n566_call_builtin_icon_β:
                                                                              jmp   n567_var_α
#-----------------------------------------------------------------------------------------------------------------------
n567_var_α:             mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 248], rax;          jmp   n568_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n568_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2176]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n569_random_α
#-----------------------------------------------------------------------------------------------------------------------
n569_random_α:          mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n573_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n570_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n570_deref_α:           mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n573_unmark_α
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n571_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n571_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 216], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn715:              .string          "delete"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn715]
                        lea              rsi, [rsp + 192]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104;                            je    n573_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n572_conjunction_α
n571_call_builtin_icon_β:
                                                                              jmp   n573_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n572_conjunction_α:     mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax;          jmp   n573_unmark_α
n572_conjunction_β:                                                           jmp   n573_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n573_unmark_α:          mov              rsp, qword ptr [rsp + 112];          jmp   n554_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n574_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn720:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn720]
                        lea              rsi, [rsp + 32]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        cmp              eax, 104;                            je    n575_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n575_return_α
n574_call_builtin_icon_β:
                                                                              jmp   n575_return_α
#-----------------------------------------------------------------------------------------------------------------------
n575_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   stale_γ
#-----------------------------------------------------------------------------------------------------------------------
stale_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
stale_β:
                                                                              jmp   stale_ω
#-----------------------------------------------------------------------------------------------------------------------
stale_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2296]
                        add              rsp, 2320;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
stale_ω:
                        mov              rcx, qword ptr [rsp + 2304]
                        add              rsp, 2320;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
stale_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx722_2]
                        lea              rdx, [rip + .Lx722_3];               jmp   FN__stale
.Lx722_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx722_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "verbose"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 896
                        mov              qword ptr [rsp + 872], rcx
                        mov              qword ptr [rsp + 880], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n723_disjunction_α:     mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              dword ptr [rsp + 688], 0;            jmp   n733_var_ref_α
n723_disjunction_as:    mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 0;                              jne   .Lx758_0
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax;          jmp   n724_disjunction_α
.Lx758_0:                                                                     jmp   n724_disjunction_α
n723_disjunction_β:     mov              eax, dword ptr [rsp + 688];          jmp   n724_disjunction_α
n723_disjunction_af:    add              dword ptr [rsp + 688], 1
                        mov              eax, dword ptr [rsp + 688];          jmp   n724_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n724_disjunction_α:     mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              dword ptr [rsp + 528], 0;            jmp   n732_lit_integer_α
n724_disjunction_as:    mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 0;                              jne   .Lx760_0
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax;          jmp   n725_disjunction_α
.Lx760_0:               cmp              eax, 1;                              jne   .Lx760_1
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax;          jmp   n725_disjunction_α
.Lx760_1:               cmp              eax, 2;                              jne   .Lx760_2
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 520], rax;          jmp   n725_disjunction_α
.Lx760_2:                                                                     jmp   n725_disjunction_α
n724_disjunction_β:     mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 0;                              je    n724_disjunction_af
                        cmp              eax, 1;                              je    n724_disjunction_af
                                                                              jmp   n724_disjunction_af
n724_disjunction_af:    add              dword ptr [rsp + 528], 1
                        mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 1;                              je    n731_lit_integer_α
                        cmp              eax, 2;                              je    n730_lit_integer_α
                                                                              jmp   n741_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n725_disjunction_α:     mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              dword ptr [rsp + 608], 0;            jmp   n729_lit_integer_α
n725_disjunction_as:    mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              jne   .Lx762_0
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax;          jmp   n726_call_proc_staged_α
.Lx762_0:               cmp              eax, 1;                              jne   .Lx762_1
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax;          jmp   n726_call_proc_staged_α
.Lx762_1:               cmp              eax, 2;                              jne   .Lx762_2
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 600], rax;          jmp   n726_call_proc_staged_α
.Lx762_2:                                                                     jmp   n726_call_proc_staged_α
n725_disjunction_β:     mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              je    n725_disjunction_af
                        cmp              eax, 1;                              je    n725_disjunction_af
                                                                              jmp   n725_disjunction_af
n725_disjunction_af:    add              dword ptr [rsp + 608], 1
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 1;                              je    n728_lit_integer_α
                        cmp              eax, 2;                              je    n727_lit_integer_α
                                                                              jmp   n724_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n726_call_proc_staged_α:
                        lea              rsi, [rsp + 512]
                        lea              rdx, [rsp + 592]
                        call             tdel_dcα;                            jmp   .Lx764_2
.Lx764_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx764_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
.Lx764_29:              mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 104;                            je    n725_disjunction_β
                                                                              jmp   n725_disjunction_β
n726_call_proc_staged_β:
                                                                              jmp   n725_disjunction_β
.Lx764_0:               .quad            .Lx764_0_s
.Lx764_0_s:             .string          "tdel"
#-----------------------------------------------------------------------------------------------------------------------
n727_lit_integer_α:     mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx765_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n725_disjunction_as
n727_lit_integer_β:                                                           jmp   n725_disjunction_af
.Lx765_0:               .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n728_lit_integer_α:     mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lx766_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n725_disjunction_as
n728_lit_integer_β:                                                           jmp   n725_disjunction_af
.Lx766_0:               .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_integer_α:     mov              qword ptr [rsp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Lx767_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n725_disjunction_as
n729_lit_integer_β:                                                           jmp   n725_disjunction_af
.Lx767_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_integer_α:     mov              qword ptr [rsp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Lx768_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n724_disjunction_as
n730_lit_integer_β:                                                           jmp   n724_disjunction_af
.Lx768_0:               .quad            991
#-----------------------------------------------------------------------------------------------------------------------
n731_lit_integer_α:     mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Lx769_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n724_disjunction_as
n731_lit_integer_β:                                                           jmp   n724_disjunction_af
.Lx769_0:               .quad            619
#-----------------------------------------------------------------------------------------------------------------------
n732_lit_integer_α:     mov              qword ptr [rsp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Lx770_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n724_disjunction_as
n732_lit_integer_β:                                                           jmp   n724_disjunction_af
.Lx770_0:               .quad            41
#-----------------------------------------------------------------------------------------------------------------------
n733_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n734_lit_integer_α
n733_var_ref_β:                                                               jmp   n723_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_integer_α:     mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lx773_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n735_subscript_α
.Lx773_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n735_subscript_α:       mov              rdi, qword ptr [rsp + 752]
                        mov              rsi, qword ptr [rsp + 760]
                        mov              rdx, qword ptr [rsp + 768]
                        mov              rcx, qword ptr [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n723_disjunction_af
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n736_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n736_deref_α:           mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n723_disjunction_af
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n737_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n737_lit_string_α:      mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 2
                        mov              rax, qword ptr [rip + .Lx776_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n738_binop_test_α
.Lx776_0:               .quad            .Lx776_0_s
.Lx776_0_s:             .string          "-v"
#-----------------------------------------------------------------------------------------------------------------------
n738_binop_test_α:      mov              rdi, qword ptr [rsp + 800]
                        mov              rsi, qword ptr [rsp + 808]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n723_disjunction_af
                        mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n739_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n739_lit_integer_α:     mov              qword ptr [rsp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Lx778_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n740_assign_α
.Lx778_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n740_assign_α:          mov              rax, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              qword ptr [r9 + 0], rax              # verbose
                        mov              qword ptr [r9 + 8], rdx
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n723_disjunction_as
n740_assign_β:                                                                jmp   n724_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n741_disjunction_α:     mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              dword ptr [rsp + 224], 0;            jmp   n753_lit_integer_α
n741_disjunction_as:    mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 0;                              jne   .Lx781_0
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax;          jmp   n742_disjunction_α
.Lx781_0:               cmp              eax, 1;                              jne   .Lx781_1
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax;          jmp   n742_disjunction_α
.Lx781_1:               cmp              eax, 2;                              jne   .Lx781_2
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 216], rax;          jmp   n742_disjunction_α
.Lx781_2:                                                                     jmp   n742_disjunction_α
n741_disjunction_β:     mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 0;                              je    n741_disjunction_af
                        cmp              eax, 1;                              je    n741_disjunction_af
                                                                              jmp   n741_disjunction_af
n741_disjunction_af:    add              dword ptr [rsp + 224], 1
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 1;                              je    n752_lit_integer_α
                        cmp              eax, 2;                              je    n751_lit_integer_α
                                                                              jmp   n754_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n742_disjunction_α:     mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              dword ptr [rsp + 304], 0;            jmp   n750_lit_integer_α
n742_disjunction_as:    mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 0;                              jne   .Lx783_0
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax;          jmp   n743_disjunction_α
.Lx783_0:               cmp              eax, 1;                              jne   .Lx783_1
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax;          jmp   n743_disjunction_α
.Lx783_1:               cmp              eax, 2;                              jne   .Lx783_2
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 296], rax;          jmp   n743_disjunction_α
.Lx783_2:                                                                     jmp   n743_disjunction_α
n742_disjunction_β:     mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 0;                              je    n742_disjunction_af
                        cmp              eax, 1;                              je    n742_disjunction_af
                                                                              jmp   n742_disjunction_af
n742_disjunction_af:    add              dword ptr [rsp + 304], 1
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 1;                              je    n749_lit_integer_α
                        cmp              eax, 2;                              je    n748_lit_integer_α
                                                                              jmp   n741_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n743_disjunction_α:     mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              dword ptr [rsp + 384], 0;            jmp   n747_lit_integer_α
n743_disjunction_as:    mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              jne   .Lx785_0
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax;          jmp   n744_call_proc_staged_α
.Lx785_0:               cmp              eax, 1;                              jne   .Lx785_1
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax;          jmp   n744_call_proc_staged_α
.Lx785_1:               cmp              eax, 2;                              jne   .Lx785_2
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 376], rax;          jmp   n744_call_proc_staged_α
.Lx785_2:                                                                     jmp   n744_call_proc_staged_α
n743_disjunction_β:     mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              je    n743_disjunction_af
                        cmp              eax, 1;                              je    n743_disjunction_af
                                                                              jmp   n743_disjunction_af
n743_disjunction_af:    add              dword ptr [rsp + 384], 1
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 1;                              je    n746_lit_integer_α
                        cmp              eax, 2;                              je    n745_lit_integer_α
                                                                              jmp   n742_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n744_call_proc_staged_α:
                        lea              rsi, [rsp + 208]
                        lea              rdx, [rsp + 288]
                        lea              rcx, [rsp + 368]
                        call             tins_dcα;                            jmp   .Lx787_2
.Lx787_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx787_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lx787_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104;                            je    n743_disjunction_β
                                                                              jmp   n743_disjunction_β
n744_call_proc_staged_β:
                                                                              jmp   n743_disjunction_β
.Lx787_0:               .quad            .Lx787_0_s
.Lx787_0_s:             .string          "tins"
#-----------------------------------------------------------------------------------------------------------------------
n745_lit_integer_α:     mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lx788_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n743_disjunction_as
n745_lit_integer_β:                                                           jmp   n743_disjunction_af
.Lx788_0:               .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n746_lit_integer_α:     mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx789_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n743_disjunction_as
n746_lit_integer_β:                                                           jmp   n743_disjunction_af
.Lx789_0:               .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n747_lit_integer_α:     mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx790_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n743_disjunction_as
n747_lit_integer_β:                                                           jmp   n743_disjunction_af
.Lx790_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n748_lit_integer_α:     mov              qword ptr [rsp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Lx791_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n742_disjunction_as
n748_lit_integer_β:                                                           jmp   n742_disjunction_af
.Lx791_0:               .quad            503
#-----------------------------------------------------------------------------------------------------------------------
n749_lit_integer_α:     mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Lx792_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n742_disjunction_as
n749_lit_integer_β:                                                           jmp   n742_disjunction_af
.Lx792_0:               .quad            419
#-----------------------------------------------------------------------------------------------------------------------
n750_lit_integer_α:     mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx793_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n742_disjunction_as
n750_lit_integer_β:                                                           jmp   n742_disjunction_af
.Lx793_0:               .quad            239
#-----------------------------------------------------------------------------------------------------------------------
n751_lit_integer_α:     mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx794_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n741_disjunction_as
n751_lit_integer_β:                                                           jmp   n741_disjunction_af
.Lx794_0:               .quad            233
#-----------------------------------------------------------------------------------------------------------------------
n752_lit_integer_α:     mov              qword ptr [rsp + 256], 3             # result
                        mov              rax, qword ptr [rip + .Lx795_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n741_disjunction_as
n752_lit_integer_β:                                                           jmp   n741_disjunction_af
.Lx795_0:               .quad            103
#-----------------------------------------------------------------------------------------------------------------------
n753_lit_integer_α:     mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx796_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n741_disjunction_as
n753_lit_integer_β:                                                           jmp   n741_disjunction_af
.Lx796_0:               .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n754_call_proc_staged_α:
                        call             stale_dcα;                           jmp   .Lx798_2
.Lx798_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx798_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx798_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n755_lit_string_α
                                                                              jmp   n755_lit_string_α
n754_call_proc_staged_β:
                                                                              jmp   n755_lit_string_α
.Lx798_0:               .quad            .Lx798_0_s
.Lx798_0_s:             .string          "stale"
#-----------------------------------------------------------------------------------------------------------------------
n755_lit_string_α:      mov              qword ptr [rsp + 80], 2              # result
                        mov              dword ptr [rsp + 84], 6
                        mov              rax, qword ptr [rip + .Lx799_0]
                        mov              qword ptr [rsp + 88], rax;           jmp   n756_call_builtin_icon_α
.Lx799_0:               .quad            .Lx799_0_s
.Lx799_0_s:             .string          "[done]"
#-----------------------------------------------------------------------------------------------------------------------
n756_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn801:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn801]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n756_call_builtin_icon_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        and              rsp, -16
                        mov              edi, 1
                        call             exit@PLT
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "tins"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__tins
                        .quad            tins_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1568
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "tdel"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__tdel
                        .quad            tdel_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1312
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "check"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__check
                        .quad            check_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            2400
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "stale"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__stale
                        .quad            stale_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            2208
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
