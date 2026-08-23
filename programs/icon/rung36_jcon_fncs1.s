                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__q1:
                        sub              rsp, 2928
                        mov              qword ptr [rsp + 2904], rcx
                        mov              qword ptr [rsp + 2912], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
q1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              r11, 1
                        mov              qword ptr [rsp + 2784], 2            # result
                        mov              dword ptr [rsp + 2788], 7
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n1_disjunction_α
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          " ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:       mov              r11, 2
                        mov              qword ptr [rsp + 2800], 0
                        mov              qword ptr [rsp + 2808], 0
                        mov              dword ptr [rsp + 2816], 0;           jmp   n86_call_builtin_icon_α
n1_disjunction_as:      mov              r11, 2
                        mov              eax, dword ptr [rsp + 2816]
                        cmp              eax, 0;                              jne   .Lx89_0
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n2_call_builtin_icon_α
.Lx89_0:                cmp              eax, 1;                              jne   .Lx89_1
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2808], rax;         jmp   n2_call_builtin_icon_α
.Lx89_1:                                                                      jmp   n2_call_builtin_icon_α
n1_disjunction_β:       mov              r11, 2
                        mov              eax, dword ptr [rsp + 2816]
                        cmp              eax, 0;                              je    n1_disjunction_af
                                                                              jmp   n1_disjunction_af
n1_disjunction_af:      mov              r11, 2
                        add              dword ptr [rsp + 2816], 1
                        mov              eax, dword ptr [rsp + 2816]
                        cmp              eax, 1;                              je    n85_lit_string_α
                                                                              jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α: mov              r11, 3
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2760], rax
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2744], rax
                        .section         .rodata
.Lrkfn91:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rsp + 2736]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx
                        cmp              al, 104;                             je    n1_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n3_lit_string_α
n2_call_builtin_icon_β: mov              r11, 3;                              jmp   n1_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 2496], 2            # result
                        mov              dword ptr [rsp + 2500], 31
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n4_disjunction_α
.Lx92_0:                .quad            .Lx92_0_s
.Lx92_0_s:              .string          "f := open(\"foo.baz\",\"w\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n4_disjunction_α:       mov              r11, 5
                        mov              qword ptr [rsp + 2512], 0
                        mov              qword ptr [rsp + 2520], 0
                        mov              dword ptr [rsp + 2528], 0;           jmp   n80_lit_string_α
n4_disjunction_as:      mov              r11, 5
                        mov              eax, dword ptr [rsp + 2528]
                        cmp              eax, 0;                              jne   .Lx94_0
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n5_call_builtin_icon_α
.Lx94_0:                cmp              eax, 1;                              jne   .Lx94_1
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n5_call_builtin_icon_α
.Lx94_1:                                                                      jmp   n5_call_builtin_icon_α
n4_disjunction_β:       mov              r11, 5
                        mov              eax, dword ptr [rsp + 2528]
                        cmp              eax, 0;                              je    n4_disjunction_af
                                                                              jmp   n4_disjunction_af
n4_disjunction_af:      mov              r11, 5
                        add              dword ptr [rsp + 2528], 1
                        mov              eax, dword ptr [rsp + 2528]
                        cmp              eax, 1;                              je    n79_lit_string_α
                                                                              jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              r11, 6
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2472], rax
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2456], rax
                        .section         .rodata
.Lrkfn96:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn96]
                        lea              rsi, [rsp + 2448]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              al, 104;                             je    n4_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_lit_string_α
n5_call_builtin_icon_β: mov              r11, 6;                              jmp   n4_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 2224], 2            # result
                        mov              dword ptr [rsp + 2228], 29
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n7_disjunction_α
.Lx97_0:                .quad            .Lx97_0_s
.Lx97_0_s:              .string          "write(f,\"hello world\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n7_disjunction_α:       mov              r11, 8
                        mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              dword ptr [rsp + 2256], 0;           jmp   n75_var_α
n7_disjunction_as:      mov              r11, 8
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 0;                              jne   .Lx99_0
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n8_call_builtin_icon_α
.Lx99_0:                cmp              eax, 1;                              jne   .Lx99_1
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n8_call_builtin_icon_α
.Lx99_1:                                                                      jmp   n8_call_builtin_icon_α
n7_disjunction_β:       mov              r11, 8
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 0;                              je    n7_disjunction_af
                                                                              jmp   n7_disjunction_af
n7_disjunction_af:      mov              r11, 8
                        add              dword ptr [rsp + 2256], 1
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 1;                              je    n74_lit_string_α
                                                                              jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α: mov              r11, 9
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2200], rax
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2184], rax
                        .section         .rodata
.Lrkfn101:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn101]
                        lea              rsi, [rsp + 2176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              al, 104;                             je    n7_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_lit_string_α
n8_call_builtin_icon_β: mov              r11, 9;                              jmp   n7_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rsp + 1984], 2            # result
                        mov              dword ptr [rsp + 1988], 15
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n10_disjunction_α
.Lx102_0:               .quad            .Lx102_0_s
.Lx102_0_s:             .string          "close(f) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n10_disjunction_α:      mov              r11, 11
                        mov              qword ptr [rsp + 2000], 0
                        mov              qword ptr [rsp + 2008], 0
                        mov              dword ptr [rsp + 2016], 0;           jmp   n71_var_α
n10_disjunction_as:     mov              r11, 11
                        mov              eax, dword ptr [rsp + 2016]
                        cmp              eax, 0;                              jne   .Lx104_0
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n11_call_builtin_icon_α
.Lx104_0:               cmp              eax, 1;                              jne   .Lx104_1
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n11_call_builtin_icon_α
.Lx104_1:                                                                     jmp   n11_call_builtin_icon_α
n10_disjunction_β:      mov              r11, 11
                        mov              eax, dword ptr [rsp + 2016]
                        cmp              eax, 0;                              je    n10_disjunction_af
                                                                              jmp   n10_disjunction_af
n10_disjunction_af:     mov              r11, 11
                        add              dword ptr [rsp + 2016], 1
                        mov              eax, dword ptr [rsp + 2016]
                        cmp              eax, 1;                              je    n70_lit_string_α
                                                                              jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              r11, 12
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1960], rax
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1944], rax
                        .section         .rodata
.Lrkfn106:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn106]
                        lea              rsi, [rsp + 1936]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx
                        cmp              al, 104;                             je    n10_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_lit_string_α
n11_call_builtin_icon_β:
                        mov              r11, 12;                             jmp   n10_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              r11, 13
                        mov              qword ptr [rsp + 1904], 2            # result
                        mov              dword ptr [rsp + 1908], 7
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n13_call_α
.Lx107_0:               .quad            .Lx107_0_s
.Lx107_0_s:             .string          "foo.baz"
#-----------------------------------------------------------------------------------------------------------------------
n13_call_α:             mov              r11, 14
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1880], rax
                        .section         .rodata
.Lbynamefn14:           .string          "remove"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn14]
                        lea              rsi, [rsp + 1872]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393370
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              al, 104;                             je    n14_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n14_lit_string_α
n13_call_β:             mov              r11, 14;                             jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rsp + 1664], 2            # result
                        mov              dword ptr [rsp + 1668], 29
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n15_disjunction_α
.Lx109_0:               .quad            .Lx109_0_s
.Lx109_0_s:             .string          "F := open(\"fncs1.dat\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n15_disjunction_α:      mov              r11, 16
                        mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              dword ptr [rsp + 1696], 0;           jmp   n66_lit_string_α
n15_disjunction_as:     mov              r11, 16
                        mov              eax, dword ptr [rsp + 1696]
                        cmp              eax, 0;                              jne   .Lx111_0
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n16_call_builtin_icon_α
.Lx111_0:               cmp              eax, 1;                              jne   .Lx111_1
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n16_call_builtin_icon_α
.Lx111_1:                                                                     jmp   n16_call_builtin_icon_α
n15_disjunction_β:      mov              r11, 16
                        mov              eax, dword ptr [rsp + 1696]
                        cmp              eax, 0;                              je    n15_disjunction_af
                                                                              jmp   n15_disjunction_af
n15_disjunction_af:     mov              r11, 16
                        add              dword ptr [rsp + 1696], 1
                        mov              eax, dword ptr [rsp + 1696]
                        cmp              eax, 1;                              je    n65_lit_string_α
                                                                              jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_icon_α:
                        mov              r11, 17
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1640], rax
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1624], rax
                        .section         .rodata
.Lrkfn113:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn113]
                        lea              rsi, [rsp + 1616]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              al, 104;                             je    n15_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_lit_string_α
n16_call_builtin_icon_β:
                        mov              r11, 17;                             jmp   n15_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 31
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n18_disjunction_α
.Lx114_0:               .quad            .Lx114_0_s
.Lx114_0_s:             .string          "every write(reverse(!F)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n18_disjunction_α:      mov              r11, 19
                        mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              dword ptr [rsp + 1392], 0;           jmp   n61_var_α
n18_disjunction_as:     mov              r11, 19
                        mov              eax, dword ptr [rsp + 1392]
                        cmp              eax, 0;                              jne   .Lx116_0
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n19_call_builtin_icon_α
.Lx116_0:               cmp              eax, 1;                              jne   .Lx116_1
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n19_call_builtin_icon_α
.Lx116_1:                                                                     jmp   n19_call_builtin_icon_α
n18_disjunction_β:      mov              r11, 19
                        mov              eax, dword ptr [rsp + 1392]
                        cmp              eax, 0;                              je    n18_disjunction_af
                                                                              jmp   n18_disjunction_af
n18_disjunction_af:     mov              r11, 19
                        add              dword ptr [rsp + 1392], 1
                        mov              eax, dword ptr [rsp + 1392]
                        cmp              eax, 1;                              je    n60_lit_string_α
                                                                              jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              r11, 20
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1320], rax
                        .section         .rodata
.Lrkfn118:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn118]
                        lea              rsi, [rsp + 1312]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    n18_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n20_lit_string_α
n19_call_builtin_icon_β:
                        mov              r11, 20;                             jmp   n18_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       mov              r11, 21
                        mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 15
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n21_disjunction_α
.Lx119_0:               .quad            .Lx119_0_s
.Lx119_0_s:             .string          "close(F) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n21_disjunction_α:      mov              r11, 22
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              dword ptr [rsp + 1152], 0;           jmp   n56_var_α
n21_disjunction_as:     mov              r11, 22
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 0;                              jne   .Lx121_0
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n22_call_builtin_icon_α
.Lx121_0:               cmp              eax, 1;                              jne   .Lx121_1
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n22_call_builtin_icon_α
.Lx121_1:                                                                     jmp   n22_call_builtin_icon_α
n21_disjunction_β:      mov              r11, 22
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 0;                              je    n21_disjunction_af
                                                                              jmp   n21_disjunction_af
n21_disjunction_af:     mov              r11, 22
                        add              dword ptr [rsp + 1152], 1
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 1;                              je    n55_lit_string_α
                                                                              jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_icon_α:
                        mov              r11, 23
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn123:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn123]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n21_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_lit_string_α
n22_call_builtin_icon_β:
                        mov              r11, 23;                             jmp   n21_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 29
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n24_disjunction_α
.Lx124_0:               .quad            .Lx124_0_s
.Lx124_0_s:             .string          "F := open(\"fncs1.dat\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n24_disjunction_α:      mov              r11, 25
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              dword ptr [rsp + 896], 0;            jmp   n51_lit_string_α
n24_disjunction_as:     mov              r11, 25
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 0;                              jne   .Lx126_0
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 888], rax;          jmp   n25_call_builtin_icon_α
.Lx126_0:               cmp              eax, 1;                              jne   .Lx126_1
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 888], rax;          jmp   n25_call_builtin_icon_α
.Lx126_1:                                                                     jmp   n25_call_builtin_icon_α
n24_disjunction_β:      mov              r11, 25
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 0;                              je    n24_disjunction_af
                                                                              jmp   n24_disjunction_af
n24_disjunction_af:     mov              r11, 25
                        add              dword ptr [rsp + 896], 1
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 1;                              je    n50_lit_string_α
                                                                              jmp   n26_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              r11, 26
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn128:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]
                        lea              rsi, [rsp + 816]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n24_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n26_lit_string_α
n25_call_builtin_icon_β:
                        mov              r11, 26;                             jmp   n24_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       mov              r11, 27
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 27
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n27_disjunction_α
.Lx129_0:               .quad            .Lx129_0_s
.Lx129_0_s:             .string          "every write(map(!F)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n27_disjunction_α:      mov              r11, 28
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              dword ptr [rsp + 592], 0;            jmp   n46_var_α
n27_disjunction_as:     mov              r11, 28
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 0;                              jne   .Lx131_0
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax;          jmp   n28_call_builtin_icon_α
.Lx131_0:               cmp              eax, 1;                              jne   .Lx131_1
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 584], rax;          jmp   n28_call_builtin_icon_α
.Lx131_1:                                                                     jmp   n28_call_builtin_icon_α
n27_disjunction_β:      mov              r11, 28
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 0;                              je    n27_disjunction_af
                                                                              jmp   n27_disjunction_af
n27_disjunction_af:     mov              r11, 28
                        add              dword ptr [rsp + 592], 1
                        mov              eax, dword ptr [rsp + 592]
                        cmp              eax, 1;                              je    n45_lit_string_α
                                                                              jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              r11, 29
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn133:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn133]
                        lea              rsi, [rsp + 512]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n27_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_lit_string_α
n28_call_builtin_icon_β:
                        mov              r11, 29;                             jmp   n27_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              r11, 30
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 15
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n30_disjunction_α
.Lx134_0:               .quad            .Lx134_0_s
.Lx134_0_s:             .string          "close(F) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n30_disjunction_α:      mov              r11, 31
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              dword ptr [rsp + 352], 0;            jmp   n41_var_α
n30_disjunction_as:     mov              r11, 31
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              jne   .Lx136_0
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax;          jmp   n31_call_builtin_icon_α
.Lx136_0:               cmp              eax, 1;                              jne   .Lx136_1
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 344], rax;          jmp   n31_call_builtin_icon_α
.Lx136_1:                                                                     jmp   n31_call_builtin_icon_α
n30_disjunction_β:      mov              r11, 31
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              je    n30_disjunction_af
                                                                              jmp   n30_disjunction_af
n30_disjunction_af:     mov              r11, 31
                        add              dword ptr [rsp + 352], 1
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 1;                              je    n40_lit_string_α
                                                                              jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_icon_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn138:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn138]
                        lea              rsi, [rsp + 272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n30_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_lit_string_α
n31_call_builtin_icon_β:
                        mov              r11, 32;                             jmp   n30_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 29
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n33_disjunction_α
.Lx139_0:               .quad            .Lx139_0_s
.Lx139_0_s:             .string          "F := open(\"fncs1.dat\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n33_disjunction_α:      mov              r11, 34
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              dword ptr [rsp + 96], 0;             jmp   n36_lit_string_α
n33_disjunction_as:     mov              r11, 34
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              jne   .Lx141_0
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n34_call_builtin_icon_α
.Lx141_0:               cmp              eax, 1;                              jne   .Lx141_1
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 88], rax;           jmp   n34_call_builtin_icon_α
.Lx141_1:                                                                     jmp   n34_call_builtin_icon_α
n33_disjunction_β:      mov              r11, 34
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              je    n33_disjunction_af
                                                                              jmp   n33_disjunction_af
n33_disjunction_af:     mov              r11, 34
                        add              dword ptr [rsp + 96], 1
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 1;                              je    n35_lit_string_α
                                                                              jmp   q1_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
                        mov              r11, 35
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn143:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn143]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n33_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   q1_γ
n34_call_builtin_icon_β:
                        mov              r11, 35;                             jmp   n33_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              r11, 36
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 4
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n33_disjunction_as
n35_lit_string_β:       mov              r11, 36;                             jmp   n33_disjunction_af
.Lx144_0:               .quad            .Lx144_0_s
.Lx144_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 9
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n37_call_builtin_icon_α
n36_lit_string_β:       mov              r11, 37;                             jmp   n33_disjunction_af
.Lx145_0:               .quad            .Lx145_0_s
.Lx145_0_s:             .string          "fncs1.dat"
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_icon_α:
                        mov              r11, 38
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn147:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262287
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n33_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n38_assign_α
n37_call_builtin_icon_β:
                        mov              r11, 38;                             jmp   n33_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              r11, 39
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [r9 + 0], rax              # F
                        mov              qword ptr [r9 + 8], rdx
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n39_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              r11, 40
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn150:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn150]
                        lea              rsi, [rsp + 128]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n33_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_disjunction_as
n39_call_builtin_icon_β:
                        mov              r11, 40;                             jmp   n33_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              r11, 41
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 4
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n30_disjunction_as
n40_lit_string_β:       mov              r11, 41;                             jmp   n30_disjunction_af
.Lx151_0:               .quad            .Lx151_0_s
.Lx151_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              mov              r11, 42
                        mov              rax, qword ptr [r9 + 0]              # F
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 464], rax           # result
                        mov              qword ptr [rsp + 472], rdx;          jmp   n42_call_builtin_icon_α
n41_var_β:              mov              r11, 42;                             jmp   n30_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_icon_α:
                        mov              r11, 43
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        .section         .rodata
.Lrkfn154:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn154]
                        lea              rsi, [rsp + 432]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327791
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n30_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n43_call_builtin_icon_α
n42_call_builtin_icon_β:
                        mov              r11, 43;                             jmp   n30_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_icon_α:
                        mov              r11, 44
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn156:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn156]
                        lea              rsi, [rsp + 384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n30_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n30_disjunction_as
n43_call_builtin_icon_β:
                        mov              r11, 44;                             jmp   n30_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              r11, 45
                        .section         .rodata
.Lrkfn158:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn158]
                        lea              rsi, [rsp + 624]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n27_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_disjunction_as
n44_call_builtin_icon_β:
                        mov              r11, 45;                             jmp   n27_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              r11, 46
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 4
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n27_disjunction_as
n45_lit_string_β:       mov              r11, 46;                             jmp   n27_disjunction_af
.Lx159_0:               .quad            .Lx159_0_s
.Lx159_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              mov              r11, 47
                        mov              rax, qword ptr [r9 + 0]              # F
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 768], rax           # result
                        mov              qword ptr [rsp + 776], rdx;          jmp   n47_iterate_α
n46_var_β:              mov              r11, 47;                             jmp   n27_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n47_iterate_α:          mov              r11, 48
                        mov              qword ptr [rsp + 752], 0
.Lx162_0:               mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
                        mov              rdx, qword ptr [rsp + 752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              rax, 104;                            je    n27_disjunction_af
                                                                              jmp   n48_call_builtin_icon_α
n47_iterate_β:          mov              r11, 48
                        inc              qword ptr [rsp + 752];               jmp   .Lx162_0
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        mov              r11, 49
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn164:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn164]
                        lea              rsi, [rsp + 704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196743
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n47_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_call_builtin_icon_α
n48_call_builtin_icon_β:
                        mov              r11, 49;                             jmp   n47_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_icon_α:
                        mov              r11, 50
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        .section         .rodata
.Lrkfn166:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn166]
                        lea              rsi, [rsp + 656]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n47_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n47_iterate_β
n49_call_builtin_icon_β:
                        mov              r11, 50;                             jmp   n47_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       mov              r11, 51
                        mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 4
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n24_disjunction_as
n50_lit_string_β:       mov              r11, 51;                             jmp   n24_disjunction_af
.Lx167_0:               .quad            .Lx167_0_s
.Lx167_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              r11, 52
                        mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 9
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n52_call_builtin_icon_α
n51_lit_string_β:       mov              r11, 52;                             jmp   n24_disjunction_af
.Lx168_0:               .quad            .Lx168_0_s
.Lx168_0_s:             .string          "fncs1.dat"
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_icon_α:
                        mov              r11, 53
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lrkfn170:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn170]
                        lea              rsi, [rsp + 992]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262287
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n24_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n53_assign_α
n52_call_builtin_icon_β:
                        mov              r11, 53;                             jmp   n24_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:           mov              r11, 54
                        mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
                        mov              qword ptr [r9 + 0], rax              # F
                        mov              qword ptr [r9 + 8], rdx
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n54_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_icon_α:
                        mov              r11, 55
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn173:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn173]
                        lea              rsi, [rsp + 928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n24_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n24_disjunction_as
n54_call_builtin_icon_β:
                        mov              r11, 55;                             jmp   n24_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       mov              r11, 56
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 4
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n21_disjunction_as
n55_lit_string_β:       mov              r11, 56;                             jmp   n21_disjunction_af
.Lx174_0:               .quad            .Lx174_0_s
.Lx174_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              mov              r11, 57
                        mov              rax, qword ptr [r9 + 0]              # F
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1264], rax          # result
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n57_call_builtin_icon_α
n56_var_β:              mov              r11, 57;                             jmp   n21_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n57_call_builtin_icon_α:
                        mov              r11, 58
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1240], rax
                        .section         .rodata
.Lrkfn177:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn177]
                        lea              rsi, [rsp + 1232]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327791
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n21_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n58_call_builtin_icon_α
n57_call_builtin_icon_β:
                        mov              r11, 58;                             jmp   n21_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_icon_α:
                        mov              r11, 59
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1192], rax
                        .section         .rodata
.Lrkfn179:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn179]
                        lea              rsi, [rsp + 1184]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n21_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n21_disjunction_as
n58_call_builtin_icon_β:
                        mov              r11, 59;                             jmp   n21_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_icon_α:
                        mov              r11, 60
                        .section         .rodata
.Lrkfn181:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn181]
                        lea              rsi, [rsp + 1424]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n18_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_disjunction_as
n59_call_builtin_icon_β:
                        mov              r11, 60;                             jmp   n18_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              r11, 61
                        mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 4
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n18_disjunction_as
n60_lit_string_β:       mov              r11, 61;                             jmp   n18_disjunction_af
.Lx182_0:               .quad            .Lx182_0_s
.Lx182_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              mov              r11, 62
                        mov              rax, qword ptr [r9 + 0]              # F
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1568], rax          # result
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n62_iterate_α
n61_var_β:              mov              r11, 62;                             jmp   n18_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n62_iterate_α:          mov              r11, 63
                        mov              qword ptr [rsp + 1552], 0
.Lx185_0:               mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              rdx, qword ptr [rsp + 1552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              rax, 104;                            je    n18_disjunction_af
                                                                              jmp   n63_call_builtin_icon_α
n62_iterate_β:          mov              r11, 63
                        inc              qword ptr [rsp + 1552];              jmp   .Lx185_0
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_icon_α:
                        mov              r11, 64
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1512], rax
                        .section         .rodata
.Lrkfn187:              .string          "reverse"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]
                        lea              rsi, [rsp + 1504]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458908
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        cmp              al, 104;                             je    n62_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n64_call_builtin_icon_α
n63_call_builtin_icon_β:
                        mov              r11, 64;                             jmp   n62_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_icon_α:
                        mov              r11, 65
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1464], rax
                        .section         .rodata
.Lrkfn189:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn189]
                        lea              rsi, [rsp + 1456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              al, 104;                             je    n62_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n62_iterate_β
n64_call_builtin_icon_β:
                        mov              r11, 65;                             jmp   n62_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              r11, 66
                        mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], 4
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n15_disjunction_as
n65_lit_string_β:       mov              r11, 66;                             jmp   n15_disjunction_af
.Lx190_0:               .quad            .Lx190_0_s
.Lx190_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              r11, 67
                        mov              qword ptr [rsp + 1824], 2            # result
                        mov              dword ptr [rsp + 1828], 9
                        mov              rax, qword ptr [rip + .Lx191_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n67_call_builtin_icon_α
n66_lit_string_β:       mov              r11, 67;                             jmp   n15_disjunction_af
.Lx191_0:               .quad            .Lx191_0_s
.Lx191_0_s:             .string          "fncs1.dat"
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_icon_α:
                        mov              r11, 68
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1800], rax
                        .section         .rodata
.Lrkfn193:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn193]
                        lea              rsi, [rsp + 1792]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262287
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                        cmp              al, 104;                             je    n15_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n68_assign_α
n67_call_builtin_icon_β:
                        mov              r11, 68;                             jmp   n15_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:           mov              r11, 69
                        mov              rax, qword ptr [rsp + 1776]
                        mov              rdx, qword ptr [rsp + 1784]
                        mov              qword ptr [r9 + 0], rax              # F
                        mov              qword ptr [r9 + 8], rdx
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n69_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_icon_α:
                        mov              r11, 70
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1736], rax
                        .section         .rodata
.Lrkfn196:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn196]
                        lea              rsi, [rsp + 1728]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              al, 104;                             je    n15_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n15_disjunction_as
n69_call_builtin_icon_β:
                        mov              r11, 70;                             jmp   n15_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       mov              r11, 71
                        mov              qword ptr [rsp + 2144], 2            # result
                        mov              dword ptr [rsp + 2148], 4
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n10_disjunction_as
n70_lit_string_β:       mov              r11, 71;                             jmp   n10_disjunction_af
.Lx197_0:               .quad            .Lx197_0_s
.Lx197_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              mov              r11, 72
                        mov              rax, qword ptr [r9 + 16]             # f
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 2128], rax          # result
                        mov              qword ptr [rsp + 2136], rdx;         jmp   n72_call_builtin_icon_α
n71_var_β:              mov              r11, 72;                             jmp   n10_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_icon_α:
                        mov              r11, 73
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2104], rax
                        .section         .rodata
.Lrkfn200:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn200]
                        lea              rsi, [rsp + 2096]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327791
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              al, 104;                             je    n10_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n73_call_builtin_icon_α
n72_call_builtin_icon_β:
                        mov              r11, 73;                             jmp   n10_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_icon_α:
                        mov              r11, 74
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2056], rax
                        .section         .rodata
.Lrkfn202:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn202]
                        lea              rsi, [rsp + 2048]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        cmp              al, 104;                             je    n10_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_disjunction_as
n73_call_builtin_icon_β:
                        mov              r11, 74;                             jmp   n10_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       mov              r11, 75
                        mov              qword ptr [rsp + 2416], 2            # result
                        mov              dword ptr [rsp + 2420], 4
                        mov              rax, qword ptr [rip + .Lx203_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n7_disjunction_as
n74_lit_string_β:       mov              r11, 75;                             jmp   n7_disjunction_af
.Lx203_0:               .quad            .Lx203_0_s
.Lx203_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n75_var_α:              mov              r11, 76
                        mov              rax, qword ptr [r9 + 16]             # f
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 2384], rax          # result
                        mov              qword ptr [rsp + 2392], rdx;         jmp   n76_lit_string_α
n75_var_β:              mov              r11, 76;                             jmp   n7_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n76_lit_string_α:       mov              r11, 77
                        mov              qword ptr [rsp + 2400], 2            # result
                        mov              dword ptr [rsp + 2404], 11
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n77_call_builtin_icon_α
.Lx205_0:               .quad            .Lx205_0_s
.Lx205_0_s:             .string          "hello world"
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              r11, 78
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2360], rax
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2344], rax
                        .section         .rodata
.Lrkfn207:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn207]
                        lea              rsi, [rsp + 2336]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              al, 104;                             je    n7_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n78_call_builtin_icon_α
n77_call_builtin_icon_β:
                        mov              r11, 78;                             jmp   n7_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n78_call_builtin_icon_α:
                        mov              r11, 79
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2296], rax
                        .section         .rodata
.Lrkfn209:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rsp + 2288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx
                        cmp              al, 104;                             je    n7_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_disjunction_as
n78_call_builtin_icon_β:
                        mov              r11, 79;                             jmp   n7_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              r11, 80
                        mov              qword ptr [rsp + 2704], 2            # result
                        mov              dword ptr [rsp + 2708], 4
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n4_disjunction_as
n79_lit_string_β:       mov              r11, 80;                             jmp   n4_disjunction_af
.Lx210_0:               .quad            .Lx210_0_s
.Lx210_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       mov              r11, 81
                        mov              qword ptr [rsp + 2672], 2            # result
                        mov              dword ptr [rsp + 2676], 7
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n81_lit_string_α
n80_lit_string_β:       mov              r11, 81;                             jmp   n4_disjunction_af
.Lx211_0:               .quad            .Lx211_0_s
.Lx211_0_s:             .string          "foo.baz"
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       mov              r11, 82
                        mov              qword ptr [rsp + 2688], 2            # result
                        mov              dword ptr [rsp + 2692], 1
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n82_call_builtin_icon_α
.Lx212_0:               .quad            .Lx212_0_s
.Lx212_0_s:             .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_icon_α:
                        mov              r11, 83
                        mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 2648], rax
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2632], rax
                        .section         .rodata
.Lrkfn214:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn214]
                        lea              rsi, [rsp + 2624]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262287
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2608], rax
                        mov              qword ptr [rsp + 2616], rdx
                        cmp              al, 104;                             je    n4_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n83_assign_α
n82_call_builtin_icon_β:
                        mov              r11, 83;                             jmp   n4_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:           mov              r11, 84
                        mov              rax, qword ptr [rsp + 2608]
                        mov              rdx, qword ptr [rsp + 2616]
                        mov              qword ptr [r9 + 16], rax             # f
                        mov              qword ptr [r9 + 24], rdx
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx;         jmp   n84_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_icon_α:
                        mov              r11, 85
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2568], rax
                        .section         .rodata
.Lrkfn217:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn217]
                        lea              rsi, [rsp + 2560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        cmp              al, 104;                             je    n4_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_disjunction_as
n84_call_builtin_icon_β:
                        mov              r11, 85;                             jmp   n4_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              r11, 86
                        mov              qword ptr [rsp + 2864], 2            # result
                        mov              dword ptr [rsp + 2868], 4
                        mov              rax, qword ptr [rip + .Lx218_0]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n1_disjunction_as
n85_lit_string_β:       mov              r11, 86;                             jmp   n1_disjunction_af
.Lx218_0:               .quad            .Lx218_0_s
.Lx218_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_icon_α:
                        mov              r11, 87
                        .section         .rodata
.Lrkfn220:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn220]
                        lea              rsi, [rsp + 2848]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        cmp              al, 104;                             je    n1_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1_disjunction_as
n86_call_builtin_icon_β:
                        mov              r11, 87;                             jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
q1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
q1_β:
                                                                              jmp   q1_ω
#-----------------------------------------------------------------------------------------------------------------------
q1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2904]
                        add              rsp, 2928;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
q1_ω:
                        mov              rcx, qword ptr [rsp + 2912]
                        add              rsp, 2928;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
q1_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx221_2]
                        lea              rdx, [rip + .Lx221_3];               jmp   FN__q1
.Lx221_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx221_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__q2:
                        sub              rsp, 3296
                        mov              qword ptr [rsp + 3272], rcx
                        mov              qword ptr [rsp + 3280], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
q2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_string_α:      mov              r11, 88
                        mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], 61
                        mov              rax, qword ptr [rip + .Lx324_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n223_disjunction_α
.Lx324_0:               .quad            .Lx324_0_s
.Lx324_0_s:             .string          "every write(map(!F,&cset || \"aeiou\",&cset || \"-----\")) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n223_disjunction_α:     mov              r11, 89
                        mov              qword ptr [rsp + 2864], 0
                        mov              qword ptr [rsp + 2872], 0
                        mov              dword ptr [rsp + 2880], 0;           jmp   n314_var_α
n223_disjunction_as:    mov              r11, 89
                        mov              eax, dword ptr [rsp + 2880]
                        cmp              eax, 0;                              jne   .Lx326_0
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n224_call_builtin_icon_α
.Lx326_0:               cmp              eax, 1;                              jne   .Lx326_1
                        mov              rax, qword ptr [rsp + 3232]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 3240]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n224_call_builtin_icon_α
.Lx326_1:                                                                     jmp   n224_call_builtin_icon_α
n223_disjunction_β:     mov              r11, 89
                        mov              eax, dword ptr [rsp + 2880]
                        cmp              eax, 0;                              je    n223_disjunction_af
                                                                              jmp   n223_disjunction_af
n223_disjunction_af:    mov              r11, 89
                        add              dword ptr [rsp + 2880], 1
                        mov              eax, dword ptr [rsp + 2880]
                        cmp              eax, 1;                              je    n313_lit_string_α
                                                                              jmp   n225_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n224_call_builtin_icon_α:
                        mov              r11, 90
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2824], rax
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2808], rax
                        .section         .rodata
.Lrkfn328:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn328]
                        lea              rsi, [rsp + 2800]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              al, 104;                             je    n223_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n225_lit_string_α
n224_call_builtin_icon_β:
                        mov              r11, 90;                             jmp   n223_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_string_α:      mov              r11, 91
                        mov              qword ptr [rsp + 2608], 2            # result
                        mov              dword ptr [rsp + 2612], 15
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n226_disjunction_α
.Lx329_0:               .quad            .Lx329_0_s
.Lx329_0_s:             .string          "close(F) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n226_disjunction_α:     mov              r11, 92
                        mov              qword ptr [rsp + 2624], 0
                        mov              qword ptr [rsp + 2632], 0
                        mov              dword ptr [rsp + 2640], 0;           jmp   n309_var_α
n226_disjunction_as:    mov              r11, 92
                        mov              eax, dword ptr [rsp + 2640]
                        cmp              eax, 0;                              jne   .Lx331_0
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n227_call_builtin_icon_α
.Lx331_0:               cmp              eax, 1;                              jne   .Lx331_1
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n227_call_builtin_icon_α
.Lx331_1:                                                                     jmp   n227_call_builtin_icon_α
n226_disjunction_β:     mov              r11, 92
                        mov              eax, dword ptr [rsp + 2640]
                        cmp              eax, 0;                              je    n226_disjunction_af
                                                                              jmp   n226_disjunction_af
n226_disjunction_af:    mov              r11, 92
                        add              dword ptr [rsp + 2640], 1
                        mov              eax, dword ptr [rsp + 2640]
                        cmp              eax, 1;                              je    n308_lit_string_α
                                                                              jmp   n228_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n227_call_builtin_icon_α:
                        mov              r11, 93
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2584], rax
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2568], rax
                        .section         .rodata
.Lrkfn333:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn333]
                        lea              rsi, [rsp + 2560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        cmp              al, 104;                             je    n226_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n228_lit_string_α
n227_call_builtin_icon_β:
                        mov              r11, 93;                             jmp   n226_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_string_α:      mov              r11, 94
                        mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], 29
                        mov              rax, qword ptr [rip + .Lx334_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n229_disjunction_α
.Lx334_0:               .quad            .Lx334_0_s
.Lx334_0_s:             .string          "F := open(\"fncs1.dat\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n229_disjunction_α:     mov              r11, 95
                        mov              qword ptr [rsp + 2368], 0
                        mov              qword ptr [rsp + 2376], 0
                        mov              dword ptr [rsp + 2384], 0;           jmp   n304_lit_string_α
n229_disjunction_as:    mov              r11, 95
                        mov              eax, dword ptr [rsp + 2384]
                        cmp              eax, 0;                              jne   .Lx336_0
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n230_call_builtin_icon_α
.Lx336_0:               cmp              eax, 1;                              jne   .Lx336_1
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n230_call_builtin_icon_α
.Lx336_1:                                                                     jmp   n230_call_builtin_icon_α
n229_disjunction_β:     mov              r11, 95
                        mov              eax, dword ptr [rsp + 2384]
                        cmp              eax, 0;                              je    n229_disjunction_af
                                                                              jmp   n229_disjunction_af
n229_disjunction_af:    mov              r11, 95
                        add              dword ptr [rsp + 2384], 1
                        mov              eax, dword ptr [rsp + 2384]
                        cmp              eax, 1;                              je    n303_lit_string_α
                                                                              jmp   n231_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n230_call_builtin_icon_α:
                        mov              r11, 96
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2328], rax
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2312], rax
                        .section         .rodata
.Lrkfn338:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn338]
                        lea              rsi, [rsp + 2304]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        cmp              al, 104;                             je    n229_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n231_lit_string_α
n230_call_builtin_icon_β:
                        mov              r11, 96;                             jmp   n229_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:      mov              r11, 97
                        mov              qword ptr [rsp + 1888], 2            # result
                        mov              dword ptr [rsp + 1892], 61
                        mov              rax, qword ptr [rip + .Lx339_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n232_disjunction_α
.Lx339_0:               .quad            .Lx339_0_s
.Lx339_0_s:             .string          "every write(map(!F,&cset || \"     \",&cset || \"aeiou\")) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n232_disjunction_α:     mov              r11, 98
                        mov              qword ptr [rsp + 1904], 0
                        mov              qword ptr [rsp + 1912], 0
                        mov              dword ptr [rsp + 1920], 0;           jmp   n293_var_α
n232_disjunction_as:    mov              r11, 98
                        mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 0;                              jne   .Lx341_0
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n233_call_builtin_icon_α
.Lx341_0:               cmp              eax, 1;                              jne   .Lx341_1
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 1912], rax;         jmp   n233_call_builtin_icon_α
.Lx341_1:                                                                     jmp   n233_call_builtin_icon_α
n232_disjunction_β:     mov              r11, 98
                        mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 0;                              je    n232_disjunction_af
                                                                              jmp   n232_disjunction_af
n232_disjunction_af:    mov              r11, 98
                        add              dword ptr [rsp + 1920], 1
                        mov              eax, dword ptr [rsp + 1920]
                        cmp              eax, 1;                              je    n292_lit_string_α
                                                                              jmp   n234_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n233_call_builtin_icon_α:
                        mov              r11, 99
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1864], rax
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 1848], rax
                        .section         .rodata
.Lrkfn343:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn343]
                        lea              rsi, [rsp + 1840]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx
                        cmp              al, 104;                             je    n232_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n234_lit_string_α
n233_call_builtin_icon_β:
                        mov              r11, 99;                             jmp   n232_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:      mov              r11, 100
                        mov              qword ptr [rsp + 1648], 2            # result
                        mov              dword ptr [rsp + 1652], 15
                        mov              rax, qword ptr [rip + .Lx344_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n235_disjunction_α
.Lx344_0:               .quad            .Lx344_0_s
.Lx344_0_s:             .string          "close(F) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n235_disjunction_α:     mov              r11, 101
                        mov              qword ptr [rsp + 1664], 0
                        mov              qword ptr [rsp + 1672], 0
                        mov              dword ptr [rsp + 1680], 0;           jmp   n288_var_α
n235_disjunction_as:    mov              r11, 101
                        mov              eax, dword ptr [rsp + 1680]
                        cmp              eax, 0;                              jne   .Lx346_0
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n236_call_builtin_icon_α
.Lx346_0:               cmp              eax, 1;                              jne   .Lx346_1
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n236_call_builtin_icon_α
.Lx346_1:                                                                     jmp   n236_call_builtin_icon_α
n235_disjunction_β:     mov              r11, 101
                        mov              eax, dword ptr [rsp + 1680]
                        cmp              eax, 0;                              je    n235_disjunction_af
                                                                              jmp   n235_disjunction_af
n235_disjunction_af:    mov              r11, 101
                        add              dword ptr [rsp + 1680], 1
                        mov              eax, dword ptr [rsp + 1680]
                        cmp              eax, 1;                              je    n287_lit_string_α
                                                                              jmp   n237_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n236_call_builtin_icon_α:
                        mov              r11, 102
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1624], rax
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1608], rax
                        .section         .rodata
.Lrkfn348:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn348]
                        lea              rsi, [rsp + 1600]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    n235_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n237_lit_string_α
n236_call_builtin_icon_β:
                        mov              r11, 102;                            jmp   n235_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n237_lit_string_α:      mov              r11, 103
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 29
                        mov              rax, qword ptr [rip + .Lx349_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n238_disjunction_α
.Lx349_0:               .quad            .Lx349_0_s
.Lx349_0_s:             .string          "f := open(\"fncs1.dat\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n238_disjunction_α:     mov              r11, 104
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              dword ptr [rsp + 1424], 0;           jmp   n283_lit_string_α
n238_disjunction_as:    mov              r11, 104
                        mov              eax, dword ptr [rsp + 1424]
                        cmp              eax, 0;                              jne   .Lx351_0
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n239_call_builtin_icon_α
.Lx351_0:               cmp              eax, 1;                              jne   .Lx351_1
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n239_call_builtin_icon_α
.Lx351_1:                                                                     jmp   n239_call_builtin_icon_α
n238_disjunction_β:     mov              r11, 104
                        mov              eax, dword ptr [rsp + 1424]
                        cmp              eax, 0;                              je    n238_disjunction_af
                                                                              jmp   n238_disjunction_af
n238_disjunction_af:    mov              r11, 104
                        add              dword ptr [rsp + 1424], 1
                        mov              eax, dword ptr [rsp + 1424]
                        cmp              eax, 1;                              je    n282_lit_string_α
                                                                              jmp   n240_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n239_call_builtin_icon_α:
                        mov              r11, 105
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1368], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1352], rax
                        .section         .rodata
.Lrkfn353:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn353]
                        lea              rsi, [rsp + 1344]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              al, 104;                             je    n238_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n240_lit_string_α
n239_call_builtin_icon_β:
                        mov              r11, 105;                            jmp   n238_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:      mov              r11, 106
                        mov              qword ptr [rsp + 1120], 2            # result
                        mov              dword ptr [rsp + 1124], 29
                        mov              rax, qword ptr [rip + .Lx354_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n241_disjunction_α
.Lx354_0:               .quad            .Lx354_0_s
.Lx354_0_s:             .string          "while writes(reads(f)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n241_disjunction_α:     mov              r11, 107
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              dword ptr [rsp + 1152], 0;           jmp   n278_var_α
n241_disjunction_as:    mov              r11, 107
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 0;                              jne   .Lx356_0
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n242_call_builtin_icon_α
.Lx356_0:               cmp              eax, 1;                              jne   .Lx356_1
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n242_call_builtin_icon_α
.Lx356_1:                                                                     jmp   n242_call_builtin_icon_α
n241_disjunction_β:     mov              r11, 107
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 0;                              je    n281_goto_β
                                                                              jmp   n241_disjunction_af
n241_disjunction_af:    mov              r11, 107
                        add              dword ptr [rsp + 1152], 1
                        mov              eax, dword ptr [rsp + 1152]
                        cmp              eax, 1;                              je    n277_lit_string_α
                                                                              jmp   n243_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n242_call_builtin_icon_α:
                        mov              r11, 108
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn358:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn358]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n241_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n243_lit_string_α
n242_call_builtin_icon_β:
                        mov              r11, 108;                            jmp   n241_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n243_lit_string_α:      mov              r11, 109
                        mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 15
                        mov              rax, qword ptr [rip + .Lx359_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n244_disjunction_α
.Lx359_0:               .quad            .Lx359_0_s
.Lx359_0_s:             .string          "close(f) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n244_disjunction_α:     mov              r11, 110
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              dword ptr [rsp + 912], 0;            jmp   n273_var_α
n244_disjunction_as:    mov              r11, 110
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 0;                              jne   .Lx361_0
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 904], rax;          jmp   n245_call_builtin_icon_α
.Lx361_0:               cmp              eax, 1;                              jne   .Lx361_1
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 904], rax;          jmp   n245_call_builtin_icon_α
.Lx361_1:                                                                     jmp   n245_call_builtin_icon_α
n244_disjunction_β:     mov              r11, 110
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 0;                              je    n244_disjunction_af
                                                                              jmp   n244_disjunction_af
n244_disjunction_af:    mov              r11, 110
                        add              dword ptr [rsp + 912], 1
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 1;                              je    n272_lit_string_α
                                                                              jmp   n246_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n245_call_builtin_icon_α:
                        mov              r11, 111
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lrkfn363:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn363]
                        lea              rsi, [rsp + 832]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n244_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n246_lit_string_α
n245_call_builtin_icon_β:
                        mov              r11, 111;                            jmp   n244_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 29
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n247_disjunction_α
.Lx364_0:               .quad            .Lx364_0_s
.Lx364_0_s:             .string          "f := open(\"fncs1.dat\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n247_disjunction_α:     mov              r11, 113
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n268_lit_string_α
n247_disjunction_as:    mov              r11, 113
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Lx366_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n248_call_builtin_icon_α
.Lx366_0:               cmp              eax, 1;                              jne   .Lx366_1
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 648], rax;          jmp   n248_call_builtin_icon_α
.Lx366_1:                                                                     jmp   n248_call_builtin_icon_α
n247_disjunction_β:     mov              r11, 113
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              je    n247_disjunction_af
                                                                              jmp   n247_disjunction_af
n247_disjunction_af:    mov              r11, 113
                        add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 1;                              je    n267_lit_string_α
                                                                              jmp   n249_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n248_call_builtin_icon_α:
                        mov              r11, 114
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn368:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn368]
                        lea              rsi, [rsp + 576]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n247_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n249_lit_string_α
n248_call_builtin_icon_β:
                        mov              r11, 114;                            jmp   n247_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:      mov              r11, 115
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 32
                        mov              rax, qword ptr [rip + .Lx369_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n250_disjunction_α
.Lx369_0:               .quad            .Lx369_0_s
.Lx369_0_s:             .string          "while writes(reads(f,10)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n250_disjunction_α:     mov              r11, 116
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              dword ptr [rsp + 352], 0;            jmp   n262_var_α
n250_disjunction_as:    mov              r11, 116
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              jne   .Lx371_0
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax;          jmp   n251_call_builtin_icon_α
.Lx371_0:               cmp              eax, 1;                              jne   .Lx371_1
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 344], rax;          jmp   n251_call_builtin_icon_α
.Lx371_1:                                                                     jmp   n251_call_builtin_icon_α
n250_disjunction_β:     mov              r11, 116
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              je    n266_goto_β
                                                                              jmp   n250_disjunction_af
n250_disjunction_af:    mov              r11, 116
                        add              dword ptr [rsp + 352], 1
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 1;                              je    n261_lit_string_α
                                                                              jmp   n252_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n251_call_builtin_icon_α:
                        mov              r11, 117
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn373:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn373]
                        lea              rsi, [rsp + 272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n250_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n252_lit_string_α
n251_call_builtin_icon_β:
                        mov              r11, 117;                            jmp   n250_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n252_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 29
                        mov              rax, qword ptr [rip + .Lx374_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n253_disjunction_α
.Lx374_0:               .quad            .Lx374_0_s
.Lx374_0_s:             .string          "f := open(\"fncs1.dat\") ----> "
#-----------------------------------------------------------------------------------------------------------------------
n253_disjunction_α:     mov              r11, 119
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              dword ptr [rsp + 96], 0;             jmp   n256_lit_string_α
n253_disjunction_as:    mov              r11, 119
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              jne   .Lx376_0
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n254_call_builtin_icon_α
.Lx376_0:               cmp              eax, 1;                              jne   .Lx376_1
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 88], rax;           jmp   n254_call_builtin_icon_α
.Lx376_1:                                                                     jmp   n254_call_builtin_icon_α
n253_disjunction_β:     mov              r11, 119
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              je    n253_disjunction_af
                                                                              jmp   n253_disjunction_af
n253_disjunction_af:    mov              r11, 119
                        add              dword ptr [rsp + 96], 1
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 1;                              je    n255_lit_string_α
                                                                              jmp   q2_ω
#-----------------------------------------------------------------------------------------------------------------------
n254_call_builtin_icon_α:
                        mov              r11, 120
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn378:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn378]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n253_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   q2_γ
n254_call_builtin_icon_β:
                        mov              r11, 120;                            jmp   n253_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n255_lit_string_α:      mov              r11, 121
                        mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 4
                        mov              rax, qword ptr [rip + .Lx379_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n253_disjunction_as
n255_lit_string_β:      mov              r11, 121;                            jmp   n253_disjunction_af
.Lx379_0:               .quad            .Lx379_0_s
.Lx379_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 9
                        mov              rax, qword ptr [rip + .Lx380_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n257_call_builtin_icon_α
n256_lit_string_β:      mov              r11, 122;                            jmp   n253_disjunction_af
.Lx380_0:               .quad            .Lx380_0_s
.Lx380_0_s:             .string          "fncs1.dat"
#-----------------------------------------------------------------------------------------------------------------------
n257_call_builtin_icon_α:
                        mov              r11, 123
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn382:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn382]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262287
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n253_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n258_assign_α
n257_call_builtin_icon_β:
                        mov              r11, 123;                            jmp   n253_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n258_assign_α:          mov              r11, 124
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
                        mov              qword ptr [r9 + 16], rax             # f
                        mov              qword ptr [r9 + 24], rdx
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n259_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n259_call_builtin_icon_α:
                        mov              r11, 125
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn385:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn385]
                        lea              rsi, [rsp + 128]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n253_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n253_disjunction_as
n259_call_builtin_icon_β:
                        mov              r11, 125;                            jmp   n253_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n260_call_builtin_icon_α:
                        mov              r11, 126
                        .section         .rodata
.Lrkfn387:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn387]
                        lea              rsi, [rsp + 384]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n262_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n250_disjunction_as
n260_call_builtin_icon_β:
                        mov              r11, 126;                            jmp   n262_var_α
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:      mov              r11, 127
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 4
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n250_disjunction_as
n261_lit_string_β:      mov              r11, 127;                            jmp   n250_disjunction_af
.Lx388_0:               .quad            .Lx388_0_s
.Lx388_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n262_var_α:             mov              r11, 128
                        mov              rax, qword ptr [r9 + 16]             # f
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 512], rax           # result
                        mov              qword ptr [rsp + 520], rdx;          jmp   n263_lit_integer_α
n262_var_β:             mov              r11, 128;                            jmp   n250_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_integer_α:     mov              r11, 129
                        mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lx390_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n264_call_builtin_icon_α
.Lx390_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n264_call_builtin_icon_α:
                        mov              r11, 130
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn392:              .string          "reads"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn392]
                        lea              rsi, [rsp + 464]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327832
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n250_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n265_call_builtin_icon_α
n264_call_builtin_icon_β:
                        mov              r11, 130;                            jmp   n250_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n265_call_builtin_icon_α:
                        mov              r11, 131
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn394:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn394]
                        lea              rsi, [rsp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n250_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n262_var_α
n265_call_builtin_icon_β:
                        mov              r11, 131;                            jmp   n250_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n266_goto_α:            mov              r11, 132;                            jmp   n262_var_α
n266_goto_β:            mov              r11, 132;                            jmp   n262_var_α
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_string_α:      mov              r11, 133
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 4
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n247_disjunction_as
n267_lit_string_β:      mov              r11, 133;                            jmp   n247_disjunction_af
.Lx396_0:               .quad            .Lx396_0_s
.Lx396_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:      mov              r11, 134
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 9
                        mov              rax, qword ptr [rip + .Lx397_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n269_call_builtin_icon_α
n268_lit_string_β:      mov              r11, 134;                            jmp   n247_disjunction_af
.Lx397_0:               .quad            .Lx397_0_s
.Lx397_0_s:             .string          "fncs1.dat"
#-----------------------------------------------------------------------------------------------------------------------
n269_call_builtin_icon_α:
                        mov              r11, 135
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn399:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn399]
                        lea              rsi, [rsp + 752]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262287
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n247_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n270_assign_α
n269_call_builtin_icon_β:
                        mov              r11, 135;                            jmp   n247_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n270_assign_α:          mov              r11, 136
                        mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
                        mov              qword ptr [r9 + 16], rax             # f
                        mov              qword ptr [r9 + 24], rdx
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n271_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n271_call_builtin_icon_α:
                        mov              r11, 137
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax
                        .section         .rodata
.Lrkfn402:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn402]
                        lea              rsi, [rsp + 688]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n247_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n247_disjunction_as
n271_call_builtin_icon_β:
                        mov              r11, 137;                            jmp   n247_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_string_α:      mov              r11, 138
                        mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 4
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n244_disjunction_as
n272_lit_string_β:      mov              r11, 138;                            jmp   n244_disjunction_af
.Lx403_0:               .quad            .Lx403_0_s
.Lx403_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:             mov              r11, 139
                        mov              rax, qword ptr [r9 + 16]             # f
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 1024], rax          # result
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n274_call_builtin_icon_α
n273_var_β:             mov              r11, 139;                            jmp   n244_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n274_call_builtin_icon_α:
                        mov              r11, 140
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lrkfn406:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn406]
                        lea              rsi, [rsp + 992]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327791
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n244_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n275_call_builtin_icon_α
n274_call_builtin_icon_β:
                        mov              r11, 140;                            jmp   n244_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n275_call_builtin_icon_α:
                        mov              r11, 141
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax
                        .section         .rodata
.Lrkfn408:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn408]
                        lea              rsi, [rsp + 944]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n244_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n244_disjunction_as
n275_call_builtin_icon_β:
                        mov              r11, 141;                            jmp   n244_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n276_call_builtin_icon_α:
                        mov              r11, 142
                        .section         .rodata
.Lrkfn410:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn410]
                        lea              rsi, [rsp + 1184]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n278_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n241_disjunction_as
n276_call_builtin_icon_β:
                        mov              r11, 142;                            jmp   n278_var_α
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:      mov              r11, 143
                        mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 4
                        mov              rax, qword ptr [rip + .Lx411_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n241_disjunction_as
n277_lit_string_β:      mov              r11, 143;                            jmp   n241_disjunction_af
.Lx411_0:               .quad            .Lx411_0_s
.Lx411_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n278_var_α:             mov              r11, 144
                        mov              rax, qword ptr [r9 + 16]             # f
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 1296], rax          # result
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n279_call_builtin_icon_α
n278_var_β:             mov              r11, 144;                            jmp   n241_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n279_call_builtin_icon_α:
                        mov              r11, 145
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1272], rax
                        .section         .rodata
.Lrkfn414:              .string          "reads"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn414]
                        lea              rsi, [rsp + 1264]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327832
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    n241_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n280_call_builtin_icon_α
n279_call_builtin_icon_β:
                        mov              r11, 145;                            jmp   n241_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n280_call_builtin_icon_α:
                        mov              r11, 146
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1224], rax
                        .section         .rodata
.Lrkfn416:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn416]
                        lea              rsi, [rsp + 1216]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n241_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n278_var_α
n280_call_builtin_icon_β:
                        mov              r11, 146;                            jmp   n241_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n281_goto_α:            mov              r11, 147;                            jmp   n278_var_α
n281_goto_β:            mov              r11, 147;                            jmp   n278_var_α
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:      mov              r11, 148
                        mov              qword ptr [rsp + 1568], 2            # result
                        mov              dword ptr [rsp + 1572], 4
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n238_disjunction_as
n282_lit_string_β:      mov              r11, 148;                            jmp   n238_disjunction_af
.Lx418_0:               .quad            .Lx418_0_s
.Lx418_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:      mov              r11, 149
                        mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 9
                        mov              rax, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n284_call_builtin_icon_α
n283_lit_string_β:      mov              r11, 149;                            jmp   n238_disjunction_af
.Lx419_0:               .quad            .Lx419_0_s
.Lx419_0_s:             .string          "fncs1.dat"
#-----------------------------------------------------------------------------------------------------------------------
n284_call_builtin_icon_α:
                        mov              r11, 150
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1528], rax
                        .section         .rodata
.Lrkfn421:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn421]
                        lea              rsi, [rsp + 1520]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262287
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              al, 104;                             je    n238_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n285_assign_α
n284_call_builtin_icon_β:
                        mov              r11, 150;                            jmp   n238_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n285_assign_α:          mov              r11, 151
                        mov              rax, qword ptr [rsp + 1504]
                        mov              rdx, qword ptr [rsp + 1512]
                        mov              qword ptr [r9 + 16], rax             # f
                        mov              qword ptr [r9 + 24], rdx
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n286_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n286_call_builtin_icon_α:
                        mov              r11, 152
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1464], rax
                        .section         .rodata
.Lrkfn424:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn424]
                        lea              rsi, [rsp + 1456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              al, 104;                             je    n238_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n238_disjunction_as
n286_call_builtin_icon_β:
                        mov              r11, 152;                            jmp   n238_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:      mov              r11, 153
                        mov              qword ptr [rsp + 1808], 2            # result
                        mov              dword ptr [rsp + 1812], 4
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n235_disjunction_as
n287_lit_string_β:      mov              r11, 153;                            jmp   n235_disjunction_af
.Lx425_0:               .quad            .Lx425_0_s
.Lx425_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             mov              r11, 154
                        mov              rax, qword ptr [r9 + 0]              # F
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 1792], rax          # result
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n289_call_builtin_icon_α
n288_var_β:             mov              r11, 154;                            jmp   n235_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n289_call_builtin_icon_α:
                        mov              r11, 155
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1768], rax
                        .section         .rodata
.Lrkfn428:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn428]
                        lea              rsi, [rsp + 1760]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327791
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              al, 104;                             je    n235_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n290_call_builtin_icon_α
n289_call_builtin_icon_β:
                        mov              r11, 155;                            jmp   n235_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n290_call_builtin_icon_α:
                        mov              r11, 156
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1720], rax
                        .section         .rodata
.Lrkfn430:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn430]
                        lea              rsi, [rsp + 1712]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              al, 104;                             je    n235_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n235_disjunction_as
n290_call_builtin_icon_β:
                        mov              r11, 156;                            jmp   n235_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n291_call_builtin_icon_α:
                        mov              r11, 157
                        .section         .rodata
.Lrkfn432:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn432]
                        lea              rsi, [rsp + 1952]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              al, 104;                             je    n232_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n232_disjunction_as
n291_call_builtin_icon_β:
                        mov              r11, 157;                            jmp   n232_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rsp + 2272], 2            # result
                        mov              dword ptr [rsp + 2276], 4
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n232_disjunction_as
n292_lit_string_β:      mov              r11, 158;                            jmp   n232_disjunction_af
.Lx433_0:               .quad            .Lx433_0_s
.Lx433_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n293_var_α:             mov              r11, 159
                        mov              rax, qword ptr [r9 + 0]              # F
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 2128], rax          # result
                        mov              qword ptr [rsp + 2136], rdx;         jmp   n294_iterate_α
n293_var_β:             mov              r11, 159;                            jmp   n232_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n294_iterate_α:         mov              r11, 160
                        mov              qword ptr [rsp + 2112], 0
.Lx436_0:               mov              rdi, qword ptr [rsp + 2128]
                        mov              rsi, qword ptr [rsp + 2136]
                        mov              rdx, qword ptr [rsp + 2112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              rax, 104;                            je    n232_disjunction_af
                                                                              jmp   n295_keyword_icon_α
n294_iterate_β:         mov              r11, 160
                        inc              qword ptr [rsp + 2112];              jmp   .Lx436_0
#-----------------------------------------------------------------------------------------------------------------------
n295_keyword_icon_α:    mov              r11, 161
                        mov              rdi, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n294_iterate_β
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n296_lit_string_α
n295_keyword_icon_β:    mov              r11, 161;                            jmp   n294_iterate_β
.Lx437_0:               .quad            .Lx437_0_s
.Lx437_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_string_α:      mov              r11, 162
                        mov              qword ptr [rsp + 2192], 2            # result
                        mov              dword ptr [rsp + 2196], 5
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n297_binop_α
.Lx438_0:               .quad            .Lx438_0_s
.Lx438_0_s:             .string          "     "
#-----------------------------------------------------------------------------------------------------------------------
n297_binop_α:           mov              r11, 163
                        mov              rdi, qword ptr [rsp + 2160]
                        mov              rsi, qword ptr [rsp + 2168]
                        mov              rdx, qword ptr [rsp + 2192]
                        mov              rcx, qword ptr [rsp + 2200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n298_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n298_keyword_icon_α:    mov              r11, 164
                        mov              rdi, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n294_iterate_β
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx;         jmp   n299_lit_string_α
n298_keyword_icon_β:    mov              r11, 164;                            jmp   n294_iterate_β
.Lx440_0:               .quad            .Lx440_0_s
.Lx440_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_string_α:      mov              r11, 165
                        mov              qword ptr [rsp + 2256], 2            # result
                        mov              dword ptr [rsp + 2260], 5
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rsp + 2264], rax;         jmp   n300_binop_α
.Lx441_0:               .quad            .Lx441_0_s
.Lx441_0_s:             .string          "aeiou"
#-----------------------------------------------------------------------------------------------------------------------
n300_binop_α:           mov              r11, 166
                        mov              rdi, qword ptr [rsp + 2224]
                        mov              rsi, qword ptr [rsp + 2232]
                        mov              rdx, qword ptr [rsp + 2256]
                        mov              rcx, qword ptr [rsp + 2264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n301_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n301_call_builtin_icon_α:
                        mov              r11, 167
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2072], rax
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2056], rax
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2040], rax
                        .section         .rodata
.Lrkfn444:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn444]
                        lea              rsi, [rsp + 2032]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196743
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        cmp              al, 104;                             je    n294_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n302_call_builtin_icon_α
n301_call_builtin_icon_β:
                        mov              r11, 167;                            jmp   n294_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n302_call_builtin_icon_α:
                        mov              r11, 168
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1992], rax
                        .section         .rodata
.Lrkfn446:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn446]
                        lea              rsi, [rsp + 1984]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              al, 104;                             je    n294_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n294_iterate_β
n302_call_builtin_icon_β:
                        mov              r11, 168;                            jmp   n294_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rsp + 2528], 2            # result
                        mov              dword ptr [rsp + 2532], 4
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n229_disjunction_as
n303_lit_string_β:      mov              r11, 169;                            jmp   n229_disjunction_af
.Lx447_0:               .quad            .Lx447_0_s
.Lx447_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_string_α:      mov              r11, 170
                        mov              qword ptr [rsp + 2512], 2            # result
                        mov              dword ptr [rsp + 2516], 9
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n305_call_builtin_icon_α
n304_lit_string_β:      mov              r11, 170;                            jmp   n229_disjunction_af
.Lx448_0:               .quad            .Lx448_0_s
.Lx448_0_s:             .string          "fncs1.dat"
#-----------------------------------------------------------------------------------------------------------------------
n305_call_builtin_icon_α:
                        mov              r11, 171
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2488], rax
                        .section         .rodata
.Lrkfn450:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn450]
                        lea              rsi, [rsp + 2480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262287
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        cmp              al, 104;                             je    n229_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n306_assign_α
n305_call_builtin_icon_β:
                        mov              r11, 171;                            jmp   n229_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n306_assign_α:          mov              r11, 172
                        mov              rax, qword ptr [rsp + 2464]
                        mov              rdx, qword ptr [rsp + 2472]
                        mov              qword ptr [r9 + 0], rax              # F
                        mov              qword ptr [r9 + 8], rdx
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n307_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n307_call_builtin_icon_α:
                        mov              r11, 173
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2424], rax
                        .section         .rodata
.Lrkfn453:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn453]
                        lea              rsi, [rsp + 2416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        cmp              al, 104;                             je    n229_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n229_disjunction_as
n307_call_builtin_icon_β:
                        mov              r11, 173;                            jmp   n229_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:      mov              r11, 174
                        mov              qword ptr [rsp + 2768], 2            # result
                        mov              dword ptr [rsp + 2772], 4
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n226_disjunction_as
n308_lit_string_β:      mov              r11, 174;                            jmp   n226_disjunction_af
.Lx454_0:               .quad            .Lx454_0_s
.Lx454_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:             mov              r11, 175
                        mov              rax, qword ptr [r9 + 0]              # F
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 2752], rax          # result
                        mov              qword ptr [rsp + 2760], rdx;         jmp   n310_call_builtin_icon_α
n309_var_β:             mov              r11, 175;                            jmp   n226_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n310_call_builtin_icon_α:
                        mov              r11, 176
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2728], rax
                        .section         .rodata
.Lrkfn457:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn457]
                        lea              rsi, [rsp + 2720]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327791
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx
                        cmp              al, 104;                             je    n226_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n311_call_builtin_icon_α
n310_call_builtin_icon_β:
                        mov              r11, 176;                            jmp   n226_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n311_call_builtin_icon_α:
                        mov              r11, 177
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2680], rax
                        .section         .rodata
.Lrkfn459:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn459]
                        lea              rsi, [rsp + 2672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx
                        cmp              al, 104;                             je    n226_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n226_disjunction_as
n311_call_builtin_icon_β:
                        mov              r11, 177;                            jmp   n226_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n312_call_builtin_icon_α:
                        mov              r11, 178
                        .section         .rodata
.Lrkfn461:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn461]
                        lea              rsi, [rsp + 2912]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx
                        cmp              al, 104;                             je    n223_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n223_disjunction_as
n312_call_builtin_icon_β:
                        mov              r11, 178;                            jmp   n223_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_string_α:      mov              r11, 179
                        mov              qword ptr [rsp + 3232], 2            # result
                        mov              dword ptr [rsp + 3236], 4
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rsp + 3240], rax;         jmp   n223_disjunction_as
n313_lit_string_β:      mov              r11, 179;                            jmp   n223_disjunction_af
.Lx462_0:               .quad            .Lx462_0_s
.Lx462_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:             mov              r11, 180
                        mov              rax, qword ptr [r9 + 0]              # F
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 3088], rax          # result
                        mov              qword ptr [rsp + 3096], rdx;         jmp   n315_iterate_α
n314_var_β:             mov              r11, 180;                            jmp   n223_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n315_iterate_α:         mov              r11, 181
                        mov              qword ptr [rsp + 3072], 0
.Lx465_0:               mov              rdi, qword ptr [rsp + 3088]
                        mov              rsi, qword ptr [rsp + 3096]
                        mov              rdx, qword ptr [rsp + 3072]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                        cmp              rax, 104;                            je    n223_disjunction_af
                                                                              jmp   n316_keyword_icon_α
n315_iterate_β:         mov              r11, 181
                        inc              qword ptr [rsp + 3072];              jmp   .Lx465_0
#-----------------------------------------------------------------------------------------------------------------------
n316_keyword_icon_α:    mov              r11, 182
                        mov              rdi, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n315_iterate_β
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx;         jmp   n317_lit_string_α
n316_keyword_icon_β:    mov              r11, 182;                            jmp   n315_iterate_β
.Lx466_0:               .quad            .Lx466_0_s
.Lx466_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:      mov              r11, 183
                        mov              qword ptr [rsp + 3152], 2            # result
                        mov              dword ptr [rsp + 3156], 5
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rsp + 3160], rax;         jmp   n318_binop_α
.Lx467_0:               .quad            .Lx467_0_s
.Lx467_0_s:             .string          "aeiou"
#-----------------------------------------------------------------------------------------------------------------------
n318_binop_α:           mov              r11, 184
                        mov              rdi, qword ptr [rsp + 3120]
                        mov              rsi, qword ptr [rsp + 3128]
                        mov              rdx, qword ptr [rsp + 3152]
                        mov              rcx, qword ptr [rsp + 3160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n319_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n319_keyword_icon_α:    mov              r11, 185
                        mov              rdi, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n315_iterate_β
                        mov              qword ptr [rsp + 3184], rax
                        mov              qword ptr [rsp + 3192], rdx;         jmp   n320_lit_string_α
n319_keyword_icon_β:    mov              r11, 185;                            jmp   n315_iterate_β
.Lx469_0:               .quad            .Lx469_0_s
.Lx469_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:      mov              r11, 186
                        mov              qword ptr [rsp + 3216], 2            # result
                        mov              dword ptr [rsp + 3220], 5
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rsp + 3224], rax;         jmp   n321_binop_α
.Lx470_0:               .quad            .Lx470_0_s
.Lx470_0_s:             .string          "-----"
#-----------------------------------------------------------------------------------------------------------------------
n321_binop_α:           mov              r11, 187
                        mov              rdi, qword ptr [rsp + 3184]
                        mov              rsi, qword ptr [rsp + 3192]
                        mov              rdx, qword ptr [rsp + 3216]
                        mov              rcx, qword ptr [rsp + 3224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n322_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n322_call_builtin_icon_α:
                        mov              r11, 188
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3032], rax
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 3016], rax
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3000], rax
                        .section         .rodata
.Lrkfn473:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn473]
                        lea              rsi, [rsp + 2992]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196743
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        cmp              al, 104;                             je    n315_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n323_call_builtin_icon_α
n322_call_builtin_icon_β:
                        mov              r11, 188;                            jmp   n315_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n323_call_builtin_icon_α:
                        mov              r11, 189
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2952], rax
                        .section         .rodata
.Lrkfn475:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn475]
                        lea              rsi, [rsp + 2944]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx
                        cmp              al, 104;                             je    n315_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n315_iterate_β
n323_call_builtin_icon_β:
                        mov              r11, 189;                            jmp   n315_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
q2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
q2_β:
                                                                              jmp   q2_ω
#-----------------------------------------------------------------------------------------------------------------------
q2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 3272]
                        add              rsp, 3296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
q2_ω:
                        mov              rcx, qword ptr [rsp + 3280]
                        add              rsp, 3296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
q2_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx476_2]
                        lea              rdx, [rip + .Lx476_3];               jmp   FN__q2
.Lx476_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx476_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__q3:
                        sub              rsp, 560
                        mov              qword ptr [rsp + 536], rcx
                        mov              qword ptr [rsp + 544], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
q3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_string_α:      mov              r11, 190
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 27
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n478_disjunction_α
.Lx493_0:               .quad            .Lx493_0_s
.Lx493_0_s:             .string          "while write(read(f)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n478_disjunction_α:     mov              r11, 191
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              dword ptr [rsp + 336], 0;            jmp   n489_var_α
n478_disjunction_as:    mov              r11, 191
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              jne   .Lx495_0
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax;          jmp   n479_call_builtin_icon_α
.Lx495_0:               cmp              eax, 1;                              jne   .Lx495_1
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 328], rax;          jmp   n479_call_builtin_icon_α
.Lx495_1:                                                                     jmp   n479_call_builtin_icon_α
n478_disjunction_β:     mov              r11, 191
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 0;                              je    n492_goto_β
                                                                              jmp   n478_disjunction_af
n478_disjunction_af:    mov              r11, 191
                        add              dword ptr [rsp + 336], 1
                        mov              eax, dword ptr [rsp + 336]
                        cmp              eax, 1;                              je    n488_lit_string_α
                                                                              jmp   n480_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n479_call_builtin_icon_α:
                        mov              r11, 192
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn497:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn497]
                        lea              rsi, [rsp + 256]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n478_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n480_lit_string_α
n479_call_builtin_icon_β:
                        mov              r11, 192;                            jmp   n478_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n480_lit_string_α:      mov              r11, 193
                        mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 15
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n481_disjunction_α
.Lx498_0:               .quad            .Lx498_0_s
.Lx498_0_s:             .string          "close(f) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n481_disjunction_α:     mov              r11, 194
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              dword ptr [rsp + 96], 0;             jmp   n484_var_α
n481_disjunction_as:    mov              r11, 194
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              jne   .Lx500_0
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n482_call_builtin_icon_α
.Lx500_0:               cmp              eax, 1;                              jne   .Lx500_1
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 88], rax;           jmp   n482_call_builtin_icon_α
.Lx500_1:                                                                     jmp   n482_call_builtin_icon_α
n481_disjunction_β:     mov              r11, 194
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              je    n481_disjunction_af
                                                                              jmp   n481_disjunction_af
n481_disjunction_af:    mov              r11, 194
                        add              dword ptr [rsp + 96], 1
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 1;                              je    n483_lit_string_α
                                                                              jmp   q3_ω
#-----------------------------------------------------------------------------------------------------------------------
n482_call_builtin_icon_α:
                        mov              r11, 195
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn502:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn502]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n481_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   q3_γ
n482_call_builtin_icon_β:
                        mov              r11, 195;                            jmp   n481_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n483_lit_string_α:      mov              r11, 196
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 4
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n481_disjunction_as
n483_lit_string_β:      mov              r11, 196;                            jmp   n481_disjunction_af
.Lx503_0:               .quad            .Lx503_0_s
.Lx503_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n484_var_α:             mov              r11, 197
                        mov              rax, qword ptr [r9 + 16]             # f
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 208], rax           # result
                        mov              qword ptr [rsp + 216], rdx;          jmp   n485_call_builtin_icon_α
n484_var_β:             mov              r11, 197;                            jmp   n481_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n485_call_builtin_icon_α:
                        mov              r11, 198
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn506:              .string          "close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn506]
                        lea              rsi, [rsp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327791
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n481_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n486_call_builtin_icon_α
n485_call_builtin_icon_β:
                        mov              r11, 198;                            jmp   n481_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n486_call_builtin_icon_α:
                        mov              r11, 199
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn508:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn508]
                        lea              rsi, [rsp + 128]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n481_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n481_disjunction_as
n486_call_builtin_icon_β:
                        mov              r11, 199;                            jmp   n481_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n487_call_builtin_icon_α:
                        mov              r11, 200
                        .section         .rodata
.Lrkfn510:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn510]
                        lea              rsi, [rsp + 368]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327804
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n489_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n478_disjunction_as
n487_call_builtin_icon_β:
                        mov              r11, 200;                            jmp   n489_var_α
#-----------------------------------------------------------------------------------------------------------------------
n488_lit_string_α:      mov              r11, 201
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 4
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n478_disjunction_as
n488_lit_string_β:      mov              r11, 201;                            jmp   n478_disjunction_af
.Lx511_0:               .quad            .Lx511_0_s
.Lx511_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n489_var_α:             mov              r11, 202
                        mov              rax, qword ptr [r9 + 16]             # f
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 480], rax           # result
                        mov              qword ptr [rsp + 488], rdx;          jmp   n490_call_builtin_icon_α
n489_var_β:             mov              r11, 202;                            jmp   n478_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n490_call_builtin_icon_α:
                        mov              r11, 203
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn514:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn514]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n478_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n491_call_builtin_icon_α
n490_call_builtin_icon_β:
                        mov              r11, 203;                            jmp   n478_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n491_call_builtin_icon_α:
                        mov              r11, 204
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn516:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn516]
                        lea              rsi, [rsp + 400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n478_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n489_var_α
n491_call_builtin_icon_β:
                        mov              r11, 204;                            jmp   n478_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n492_goto_α:            mov              r11, 205;                            jmp   n489_var_α
n492_goto_β:            mov              r11, 205;                            jmp   n489_var_α
#-----------------------------------------------------------------------------------------------------------------------
q3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
q3_β:
                                                                              jmp   q3_ω
#-----------------------------------------------------------------------------------------------------------------------
q3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 536]
                        add              rsp, 560;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
q3_ω:
                        mov              rcx, qword ptr [rsp + 544]
                        add              rsp, 560;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
q3_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx518_2]
                        lea              rdx, [rip + .Lx518_3];               jmp   FN__q3
.Lx518_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx518_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__q4:
                        sub              rsp, 560
                        mov              qword ptr [rsp + 536], rcx
                        mov              qword ptr [rsp + 544], rdx
                        mov              rdi, rsp
                        add              rdi, 480
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
q4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n519_call_builtin_icon_α:
                        mov              r11, 206
                        .section         .rodata
.Lrkfn539:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn539]
                        lea              rsi, [rsp + 464]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n521_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n520_assign_α
n519_call_builtin_icon_β:
                        mov              r11, 206;                            jmp   n521_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n520_assign_α:          mov              r11, 207
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n521_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n521_call_builtin_icon_α:
                        mov              r11, 208
                        .section         .rodata
.Lrkfn542:              .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn542]
                        lea              rsi, [rsp + 432]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262276
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n523_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n522_assign_α
n521_call_builtin_icon_β:
                        mov              r11, 208;                            jmp   n523_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n522_assign_α:          mov              r11, 209
                        mov              rax, qword ptr [rsp + 416]
                        mov              rdx, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n523_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n523_var_ref_α:         mov              r11, 210
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 496]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n524_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n524_lit_integer_α:     mov              r11, 211
                        mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n525_lit_integer_α
.Lx546_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_integer_α:     mov              r11, 212
                        mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n526_to_α
.Lx547_0:               .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n526_to_α:              mov              r11, 213
                        mov              rdi, qword ptr [rsp + 320]
                        mov              rsi, qword ptr [rsp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], 3
                        mov              qword ptr [rsp + 328], rax
                        mov              rdi, qword ptr [rsp + 336]
                        mov              rsi, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], 3
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 304], rax
.Lx549_0:               mov              rax, qword ptr [rsp + 304]
                        mov              rcx, qword ptr [rsp + 344]
                        cmp              rax, rcx;                            jg    n530_var_α
                        mov              qword ptr [rsp + 288], 3
                        mov              qword ptr [rsp + 296], rax;          jmp   n527_subscript_α
n526_to_β:              mov              r11, 213
                        inc              qword ptr [rsp + 304];               jmp   .Lx549_0
#-----------------------------------------------------------------------------------------------------------------------
n527_subscript_α:       mov              r11, 214
                        mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              rdx, qword ptr [rsp + 288]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n526_to_β
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n528_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n528_lit_integer_α:     mov              r11, 215
                        mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n529_assign_var_α
.Lx551_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n529_assign_var_α:      mov              r11, 216
                        mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 384]
                        mov              rcx, qword ptr [rsp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n530_var_α
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n526_to_β
#-----------------------------------------------------------------------------------------------------------------------
n530_var_α:             mov              r11, 217
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 216], rax;          jmp   n531_var_α
#-----------------------------------------------------------------------------------------------------------------------
n531_var_α:             mov              r11, 218
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 264], rax;          jmp   n532_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n532_iterate_α:         mov              r11, 219
                        mov              qword ptr [rsp + 240], 0
.Lx558_0:               mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_key_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              rax, 104;                            je    n534_var_α
                                                                              jmp   n533_call_builtin_icon_α
n532_iterate_β:         mov              r11, 219
                        inc              qword ptr [rsp + 240];               jmp   .Lx558_0
#-----------------------------------------------------------------------------------------------------------------------
n533_call_builtin_icon_α:
                        mov              r11, 220
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn560:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn560]
                        lea              rsi, [rsp + 160]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n532_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n532_iterate_β
n533_call_builtin_icon_β:
                        mov              r11, 220;                            jmp   n532_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n534_var_α:             mov              r11, 221
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 136], rax;          jmp   n535_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n535_call_builtin_icon_α:
                        mov              r11, 222
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn564:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn564]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    q4_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n536_iterate_α
n535_call_builtin_icon_β:
                        mov              r11, 222;                            jmp   q4_ω
#-----------------------------------------------------------------------------------------------------------------------
n536_iterate_α:         mov              r11, 223
                        mov              qword ptr [rsp + 64], 0
.Lx566_0:               mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              rax, 104;                            je    q4_ω
                                                                              jmp   n537_call_builtin_icon_α
n536_iterate_β:         mov              r11, 223
                        inc              qword ptr [rsp + 64];                jmp   .Lx566_0
#-----------------------------------------------------------------------------------------------------------------------
n537_call_builtin_icon_α:
                        mov              r11, 224
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn568:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn568]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n536_iterate_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n536_iterate_β
n537_call_builtin_icon_β:
                        mov              r11, 224;                            jmp   n536_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
q4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
q4_β:
                                                                              jmp   q4_ω
#-----------------------------------------------------------------------------------------------------------------------
q4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 536]
                        add              rsp, 560;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
q4_ω:
                        mov              rcx, qword ptr [rsp + 544]
                        add              rsp, 560;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
q4_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx569_2]
                        lea              rdx, [rip + .Lx569_3];               jmp   FN__q4
.Lx569_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx569_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__q5:
                        sub              rsp, 1616
                        mov              qword ptr [rsp + 1592], rcx
                        mov              qword ptr [rsp + 1600], rdx
                        mov              rdi, rsp
                        add              rdi, 1536
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
q5_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n570_lit_integer_α:     mov              r11, 225
                        mov              qword ptr [rsp + 48], 3              # result
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rsp + 56], rax;           jmp   n571_lit_integer_α
.Lx624_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n571_lit_integer_α:     mov              r11, 226
                        mov              qword ptr [rsp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Lx625_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n572_to_α
.Lx625_0:               .quad            25
#-----------------------------------------------------------------------------------------------------------------------
n572_to_α:              mov              r11, 227
                        mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 32], rax
.Lx627_0:               mov              rax, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              rax, rcx;                            jg    q5_ω
                        mov              qword ptr [rsp + 16], 3
                        mov              qword ptr [rsp + 24], rax;           jmp   n573_assign_α
n572_to_β:              mov              r11, 227
                        inc              qword ptr [rsp + 32];                jmp   .Lx627_0
#-----------------------------------------------------------------------------------------------------------------------
n573_assign_α:          mov              r11, 228
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n574_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n574_bound_α:           mov              r11, 229
                        mov              qword ptr [rsp + 80], rsp;           jmp   n575_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n575_lit_real_α:        mov              r11, 230
                        mov              qword ptr [rsp + 1504], 5            # result
                        mov              rax, qword ptr [rip + .Lx631_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n576_var_α
.Lx631_0:               .quad            4598175219545276416
#-----------------------------------------------------------------------------------------------------------------------
n576_var_α:             mov              r11, 231
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n577_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n577_coerce_numeric_α:  mov              r11, 232
                        mov              eax, dword ptr [rsp + 1536]
                        cmp              al, 5;                               je    .Lx635_1
                        cmp              al, 3;                               jne   .Lx635_0
                        mov              eax, dword ptr [rsp + 1504]
                        cmp              al, 3;                               jne   .Lx635_0
.Lx635_1:               mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n578_binop_α
.Lx635_0:               lea              rdi, [rsp + 1536]
                        lea              rsi, [rsp + 1504]
                        lea              rdx, [rsp + 1488]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n578_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n578_binop_α:           mov              r11, 233
                        mov              eax, dword ptr [rsp + 1504]
                        mov              ecx, dword ptr [rsp + 1488]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx636_2
                        mov              rax, qword ptr [rsp + 1512]
                        mov              rdx, qword ptr [rsp + 1496]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 1472], 3
                        mov              qword ptr [rsp + 1480], rax;         jmp   .Lx636_7
.Lx636_2:               and              edx, 1;                              jz    .Lx636_0
                        mov              rsi, qword ptr [rsp + 1512]
                        mov              rdi, qword ptr [rsp + 1496]
                        cmp              al, 5;                               je    .Lx636_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx636_4
.Lx636_3:               movq             xmm0, rsi
.Lx636_4:               cmp              cl, 5;                               je    .Lx636_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx636_6
.Lx636_5:               movq             xmm1, rdi
.Lx636_6:               mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1472], 5
                        mov              qword ptr [rsp + 1480], rax
.Lx636_7:                                                                     jmp   n579_assign_α
.Lx636_0:               mov              rdi, qword ptr [rsp + 1504]
                        mov              rsi, qword ptr [rsp + 1512]
                        mov              rdx, qword ptr [rsp + 1488]
                        mov              rcx, qword ptr [rsp + 1496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        cmp              al, 104;                             je    n580_var_α
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n579_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n579_assign_α:          mov              r11, 234
                        mov              rax, qword ptr [rsp + 1472]
                        mov              rdx, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx;         jmp   n580_var_α
#-----------------------------------------------------------------------------------------------------------------------
n580_var_α:             mov              r11, 235
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n581_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n581_call_proc_staged_α:
                        mov              r11, 236
                        lea              rsi, [rsp + 1456]
                        call             wf_dcα;                              jmp   .Lx641_2
.Lx641_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx641_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1408]
                        mov              rdx, qword ptr [rsp + 1416]
.Lx641_29:              mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n582_disjunction_α
                                                                              jmp   n582_disjunction_α
n581_call_proc_staged_β:
                        mov              r11, 236;                            jmp   n582_disjunction_α
.Lx641_0:               .quad            .Lx641_0_s
.Lx641_0_s:             .string          "wf"
#-----------------------------------------------------------------------------------------------------------------------
n582_disjunction_α:     mov              r11, 237
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              dword ptr [rsp + 1024], 0;           jmp   n594_var_α
n582_disjunction_as:    mov              r11, 237
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 0;                              jne   .Lx643_0
                                                                              jmp   n583_disjunction_α
.Lx643_0:               cmp              eax, 1;                              jne   .Lx643_1
                                                                              jmp   n583_disjunction_α
.Lx643_1:                                                                     jmp   n583_disjunction_α
n582_disjunction_β:     mov              r11, 237
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 0;                              je    n583_disjunction_α
                                                                              jmp   n583_disjunction_α
n582_disjunction_af:    mov              r11, 237
                        add              dword ptr [rsp + 1024], 1
                        mov              eax, dword ptr [rsp + 1024]
                        cmp              eax, 1;                              je    n590_disjunction_α
                                                                              jmp   n583_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n583_disjunction_α:     mov              r11, 238
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              dword ptr [rsp + 832], 0;            jmp   n588_var_α
n583_disjunction_as:    mov              r11, 238
                        mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 0;                              jne   .Lx645_0
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 824], rax;          jmp   n584_call_proc_staged_α
.Lx645_0:               cmp              eax, 1;                              jne   .Lx645_1
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 824], rax;          jmp   n584_call_proc_staged_α
.Lx645_1:                                                                     jmp   n584_call_proc_staged_α
n583_disjunction_β:     mov              r11, 238
                        mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 0;                              je    n583_disjunction_af
                                                                              jmp   n583_disjunction_af
n583_disjunction_af:    mov              r11, 238
                        add              dword ptr [rsp + 832], 1
                        mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 1;                              je    n585_var_α
                                                                              jmp   n603_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n584_call_proc_staged_α:
                        mov              r11, 239
                        lea              rsi, [rsp + 816]
                        call             wf_dcα;                              jmp   .Lx647_2
.Lx647_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx647_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
.Lx647_29:              mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n583_disjunction_β
                                                                              jmp   n583_disjunction_β
n584_call_proc_staged_β:
                        mov              r11, 239;                            jmp   n583_disjunction_β
.Lx647_0:               .quad            .Lx647_0_s
.Lx647_0_s:             .string          "wf"
#-----------------------------------------------------------------------------------------------------------------------
n585_var_α:             mov              r11, 240
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 984], rax;          jmp   n586_lit_integer_α
n585_var_β:             mov              r11, 240;                            jmp   n583_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n586_lit_integer_α:     mov              r11, 241
                        mov              qword ptr [rsp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Lx650_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n587_call_builtin_icon_α
.Lx650_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n587_call_builtin_icon_α:
                        mov              r11, 242
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn652:              .string          "atan"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn652]
                        lea              rsi, [rsp + 928]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262250
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n583_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n583_disjunction_as
n587_call_builtin_icon_β:
                        mov              r11, 242;                            jmp   n583_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n588_var_α:             mov              r11, 243
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 904], rax;          jmp   n589_call_builtin_icon_α
n588_var_β:             mov              r11, 243;                            jmp   n583_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n589_call_builtin_icon_α:
                        mov              r11, 244
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax
                        .section         .rodata
.Lrkfn656:              .string          "atan"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn656]
                        lea              rsi, [rsp + 864]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262250
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    n583_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n583_disjunction_as
n589_call_builtin_icon_β:
                        mov              r11, 244;                            jmp   n583_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n590_disjunction_α:     mov              r11, 245
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1352], 0
                        mov              dword ptr [rsp + 1360], 0;           jmp   n593_lit_string_α
n590_disjunction_as:    mov              r11, 245
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 0;                              jne   .Lx658_0
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n591_call_proc_staged_α
.Lx658_0:               cmp              eax, 1;                              jne   .Lx658_1
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n591_call_proc_staged_α
.Lx658_1:                                                                     jmp   n591_call_proc_staged_α
n590_disjunction_β:     mov              r11, 245
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 0;                              je    n590_disjunction_af
                                                                              jmp   n590_disjunction_af
n590_disjunction_af:    mov              r11, 245
                        add              dword ptr [rsp + 1360], 1
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              eax, 1;                              je    n592_lit_string_α
                                                                              jmp   n583_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n591_call_proc_staged_α:
                        mov              r11, 246
                        lea              rsi, [rsp + 1344]
                        call             wf_dcα;                              jmp   .Lx660_2
.Lx660_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx660_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1296]
                        mov              rdx, qword ptr [rsp + 1304]
.Lx660_29:              mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    n590_disjunction_β
                                                                              jmp   n590_disjunction_β
n591_call_proc_staged_β:
                        mov              r11, 246;                            jmp   n590_disjunction_β
.Lx660_0:               .quad            .Lx660_0_s
.Lx660_0_s:             .string          "wf"
#-----------------------------------------------------------------------------------------------------------------------
n592_lit_string_α:      mov              r11, 247
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 0
                        mov              rax, qword ptr [rip + .Lx661_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n590_disjunction_as
n592_lit_string_β:      mov              r11, 247;                            jmp   n590_disjunction_af
.Lx661_0:               .quad            .Lx661_0_s
.Lx661_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n593_lit_string_α:      mov              r11, 248
                        mov              qword ptr [rsp + 1376], 2            # result
                        mov              dword ptr [rsp + 1380], 0
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n590_disjunction_as
n593_lit_string_β:      mov              r11, 248;                            jmp   n590_disjunction_af
.Lx662_0:               .quad            .Lx662_0_s
.Lx662_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n594_var_α:             mov              r11, 249
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n595_lit_real_α
n594_var_β:             mov              r11, 249;                            jmp   n582_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n595_lit_real_α:        mov              r11, 250
                        mov              qword ptr [rsp + 1280], 5            # result
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n596_binop_test_α
.Lx665_0:               .quad            4607182418800017408
#-----------------------------------------------------------------------------------------------------------------------
n596_binop_test_α:      mov              r11, 251
                        mov              rdi, qword ptr [rsp + 1264]
                        mov              rsi, qword ptr [rsp + 1272]
                        mov              rdx, qword ptr [rsp + 1280]
                        mov              rcx, qword ptr [rsp + 1288]
                        mov              r8d, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n582_disjunction_af
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n597_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n597_disjunction_α:     mov              r11, 252
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              dword ptr [rsp + 1104], 0;           jmp   n602_proc_value_α
n597_disjunction_as:    mov              r11, 252
                        mov              eax, dword ptr [rsp + 1104]
                        cmp              eax, 0;                              jne   .Lx668_0
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n598_var_α
.Lx668_0:               cmp              eax, 1;                              jne   .Lx668_1
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n598_var_α
.Lx668_1:                                                                     jmp   n598_var_α
n597_disjunction_β:     mov              r11, 252
                        mov              eax, dword ptr [rsp + 1104]
                        cmp              eax, 0;                              je    n597_disjunction_af
                                                                              jmp   n597_disjunction_af
n597_disjunction_af:    mov              r11, 252
                        add              dword ptr [rsp + 1104], 1
                        mov              eax, dword ptr [rsp + 1104]
                        cmp              eax, 1;                              je    n601_proc_value_α
                                                                              jmp   n583_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n598_var_α:             mov              r11, 253
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n599_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n599_call_value_α:      mov              r11, 254
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1176], rax
                        mov              qword ptr [rsp + 1184], 0
                        mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        lea              rdx, [rsp + 1168]
                        mov              ecx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx672_7
                        lea              rcx, [rip + .Lx672_4]
                        push             rcx
                        lea              rcx, [rip + .Lx672_3]
                        push             rcx;                                 jmp   rax
.Lx672_3:               mov              qword ptr [rsp + 1192], rsp
                        mov              rax, qword ptr [rsp + 1184]
                        test             rax, rax;                            jne   .Lx672_5
                        mov              qword ptr [rsp + 1184], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx672_2
.Lx672_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx672_2
.Lx672_4:               mov              qword ptr [rsp + 1192], rsp
                        mov              rax, qword ptr [rsp + 1184]
                        test             rax, rax;                            jne   .Lx672_6
                        mov              qword ptr [rsp + 1184], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx672_2
.Lx672_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx672_2
.Lx672_7:               mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        lea              rdx, [rsp + 1168]
                        mov              ecx, 1
                        lea              r8, [rsp + 1184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx672_2:               mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n597_disjunction_β
                                                                              jmp   n600_call_proc_staged_α
n599_call_value_β:      mov              r11, 254
                        mov              rax, qword ptr [rsp + 1184]
                        cmp              rax, 1;                              jne   .Lx672_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1192];         jmp   qword ptr [rsp]
.Lx672_8:               lea              rdi, [rsp + 1184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n597_disjunction_β
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n600_call_proc_staged_α
                                                                              jmp   n597_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n600_call_proc_staged_α:
                        mov              r11, 255
                        lea              rsi, [rsp + 1152]
                        call             wf_dcα;                              jmp   .Lx674_2
.Lx674_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx674_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
.Lx674_29:              mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n599_call_value_β
                                                                              jmp   n599_call_value_β
n600_call_proc_staged_β:
                        mov              r11, 255;                            jmp   n599_call_value_β
.Lx674_0:               .quad            .Lx674_0_s
.Lx674_0_s:             .string          "wf"
#-----------------------------------------------------------------------------------------------------------------------
n601_proc_value_α:      mov              r11, 256
                        mov              rdi, qword ptr [rip + .Lx676_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n597_disjunction_as
n601_proc_value_β:      mov              r11, 256;                            jmp   n597_disjunction_af
.Lx676_0:               .quad            .Lx676_0_s
.Lx676_0_s:             .string          "asin"
#-----------------------------------------------------------------------------------------------------------------------
n602_proc_value_α:      mov              r11, 257
                        mov              rdi, qword ptr [rip + .Lx678_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n597_disjunction_as
n602_proc_value_β:      mov              r11, 257;                            jmp   n597_disjunction_af
.Lx678_0:               .quad            .Lx678_0_s
.Lx678_0_s:             .string          "acos"
#-----------------------------------------------------------------------------------------------------------------------
n603_disjunction_α:     mov              r11, 258
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              dword ptr [rsp + 608], 0;            jmp   n609_proc_value_α
n603_disjunction_as:    mov              r11, 258
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              jne   .Lx680_0
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax;          jmp   n604_var_α
.Lx680_0:               cmp              eax, 1;                              jne   .Lx680_1
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax;          jmp   n604_var_α
.Lx680_1:               cmp              eax, 2;                              jne   .Lx680_2
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 600], rax;          jmp   n604_var_α
.Lx680_2:                                                                     jmp   n604_var_α
n603_disjunction_β:     mov              r11, 258
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              je    n603_disjunction_af
                        cmp              eax, 1;                              je    n603_disjunction_af
                                                                              jmp   n603_disjunction_af
n603_disjunction_af:    mov              r11, 258
                        add              dword ptr [rsp + 608], 1
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 1;                              je    n608_proc_value_α
                        cmp              eax, 2;                              je    n607_proc_value_α
                                                                              jmp   n610_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n604_var_α:             mov              r11, 259
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 760], rax;          jmp   n605_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n605_call_value_α:      mov              r11, 260
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 696], rax
                        mov              qword ptr [rsp + 704], 0
                        mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        lea              rdx, [rsp + 688]
                        mov              ecx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx684_7
                        lea              rcx, [rip + .Lx684_4]
                        push             rcx
                        lea              rcx, [rip + .Lx684_3]
                        push             rcx;                                 jmp   rax
.Lx684_3:               mov              qword ptr [rsp + 712], rsp
                        mov              rax, qword ptr [rsp + 704]
                        test             rax, rax;                            jne   .Lx684_5
                        mov              qword ptr [rsp + 704], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx684_2
.Lx684_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx684_2
.Lx684_4:               mov              qword ptr [rsp + 712], rsp
                        mov              rax, qword ptr [rsp + 704]
                        test             rax, rax;                            jne   .Lx684_6
                        mov              qword ptr [rsp + 704], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx684_2
.Lx684_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx684_2
.Lx684_7:               mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        lea              rdx, [rsp + 688]
                        mov              ecx, 1
                        lea              r8, [rsp + 704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx684_2:               mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n603_disjunction_β
                                                                              jmp   n606_call_proc_staged_α
n605_call_value_β:      mov              r11, 260
                        mov              rax, qword ptr [rsp + 704]
                        cmp              rax, 1;                              jne   .Lx684_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 712];          jmp   qword ptr [rsp]
.Lx684_8:               lea              rdi, [rsp + 704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n603_disjunction_β
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n606_call_proc_staged_α
                                                                              jmp   n603_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n606_call_proc_staged_α:
                        mov              r11, 261
                        lea              rsi, [rsp + 672]
                        call             wf_dcα;                              jmp   .Lx686_2
.Lx686_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx686_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
.Lx686_29:              mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n605_call_value_β
                                                                              jmp   n605_call_value_β
n606_call_proc_staged_β:
                        mov              r11, 261;                            jmp   n605_call_value_β
.Lx686_0:               .quad            .Lx686_0_s
.Lx686_0_s:             .string          "wf"
#-----------------------------------------------------------------------------------------------------------------------
n607_proc_value_α:      mov              r11, 262
                        mov              rdi, qword ptr [rip + .Lx688_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n603_disjunction_as
n607_proc_value_β:      mov              r11, 262;                            jmp   n603_disjunction_af
.Lx688_0:               .quad            .Lx688_0_s
.Lx688_0_s:             .string          "tan"
#-----------------------------------------------------------------------------------------------------------------------
n608_proc_value_α:      mov              r11, 263
                        mov              rdi, qword ptr [rip + .Lx690_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n603_disjunction_as
n608_proc_value_β:      mov              r11, 263;                            jmp   n603_disjunction_af
.Lx690_0:               .quad            .Lx690_0_s
.Lx690_0_s:             .string          "sin"
#-----------------------------------------------------------------------------------------------------------------------
n609_proc_value_α:      mov              r11, 264
                        mov              rdi, qword ptr [rip + .Lx692_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n603_disjunction_as
n609_proc_value_β:      mov              r11, 264;                            jmp   n603_disjunction_af
.Lx692_0:               .quad            .Lx692_0_s
.Lx692_0_s:             .string          "cos"
#-----------------------------------------------------------------------------------------------------------------------
n610_disjunction_α:     mov              r11, 265
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              dword ptr [rsp + 384], 0;            jmp   n616_proc_value_α
n610_disjunction_as:    mov              r11, 265
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              jne   .Lx694_0
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax;          jmp   n611_var_α
.Lx694_0:               cmp              eax, 1;                              jne   .Lx694_1
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax;          jmp   n611_var_α
.Lx694_1:               cmp              eax, 2;                              jne   .Lx694_2
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 376], rax;          jmp   n611_var_α
.Lx694_2:                                                                     jmp   n611_var_α
n610_disjunction_β:     mov              r11, 265
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 0;                              je    n610_disjunction_af
                        cmp              eax, 1;                              je    n610_disjunction_af
                                                                              jmp   n610_disjunction_af
n610_disjunction_af:    mov              r11, 265
                        add              dword ptr [rsp + 384], 1
                        mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 1;                              je    n615_proc_value_α
                        cmp              eax, 2;                              je    n614_proc_value_α
                                                                              jmp   n617_var_α
#-----------------------------------------------------------------------------------------------------------------------
n611_var_α:             mov              r11, 266
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 536], rax;          jmp   n612_call_value_α
#-----------------------------------------------------------------------------------------------------------------------
n612_call_value_α:      mov              r11, 267
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 472], rax
                        mov              qword ptr [rsp + 480], 0
                        mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        lea              rdx, [rsp + 464]
                        mov              ecx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx698_7
                        lea              rcx, [rip + .Lx698_4]
                        push             rcx
                        lea              rcx, [rip + .Lx698_3]
                        push             rcx;                                 jmp   rax
.Lx698_3:               mov              qword ptr [rsp + 488], rsp
                        mov              rax, qword ptr [rsp + 480]
                        test             rax, rax;                            jne   .Lx698_5
                        mov              qword ptr [rsp + 480], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx698_2
.Lx698_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx698_2
.Lx698_4:               mov              qword ptr [rsp + 488], rsp
                        mov              rax, qword ptr [rsp + 480]
                        test             rax, rax;                            jne   .Lx698_6
                        mov              qword ptr [rsp + 480], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx698_2
.Lx698_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx698_2
.Lx698_7:               mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        lea              rdx, [rsp + 464]
                        mov              ecx, 1
                        lea              r8, [rsp + 480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx698_2:               mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n610_disjunction_β
                                                                              jmp   n613_call_proc_staged_α
n612_call_value_β:      mov              r11, 267
                        mov              rax, qword ptr [rsp + 480]
                        cmp              rax, 1;                              jne   .Lx698_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 488];          jmp   qword ptr [rsp]
.Lx698_8:               lea              rdi, [rsp + 480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n610_disjunction_β
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n613_call_proc_staged_α
                                                                              jmp   n610_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n613_call_proc_staged_α:
                        mov              r11, 268
                        lea              rsi, [rsp + 448]
                        call             wf_dcα;                              jmp   .Lx700_2
.Lx700_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx700_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
.Lx700_29:              mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n612_call_value_β
                                                                              jmp   n612_call_value_β
n613_call_proc_staged_β:
                        mov              r11, 268;                            jmp   n612_call_value_β
.Lx700_0:               .quad            .Lx700_0_s
.Lx700_0_s:             .string          "wf"
#-----------------------------------------------------------------------------------------------------------------------
n614_proc_value_α:      mov              r11, 269
                        mov              rdi, qword ptr [rip + .Lx702_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n610_disjunction_as
n614_proc_value_β:      mov              r11, 269;                            jmp   n610_disjunction_af
.Lx702_0:               .quad            .Lx702_0_s
.Lx702_0_s:             .string          "log"
#-----------------------------------------------------------------------------------------------------------------------
n615_proc_value_α:      mov              r11, 270
                        mov              rdi, qword ptr [rip + .Lx704_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n610_disjunction_as
n615_proc_value_β:      mov              r11, 270;                            jmp   n610_disjunction_af
.Lx704_0:               .quad            .Lx704_0_s
.Lx704_0_s:             .string          "exp"
#-----------------------------------------------------------------------------------------------------------------------
n616_proc_value_α:      mov              r11, 271
                        mov              rdi, qword ptr [rip + .Lx706_0]
                        call             rt_proc_value@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n610_disjunction_as
n616_proc_value_β:      mov              r11, 271;                            jmp   n610_disjunction_af
.Lx706_0:               .quad            .Lx706_0_s
.Lx706_0_s:             .string          "sqrt"
#-----------------------------------------------------------------------------------------------------------------------
n617_var_α:             mov              r11, 272
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 296], rax;          jmp   n618_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n618_lit_integer_α:     mov              r11, 273
                        mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lx709_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n619_call_builtin_icon_α
.Lx709_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n619_call_builtin_icon_α:
                        mov              r11, 274
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn711:              .string          "log"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn711]
                        lea              rsi, [rsp + 240]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196741
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n621_call_builtin_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n620_call_proc_staged_α
n619_call_builtin_icon_β:
                        mov              r11, 274;                            jmp   n621_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n620_call_proc_staged_α:
                        mov              r11, 275
                        lea              rsi, [rsp + 224]
                        call             wf_dcα;                              jmp   .Lx713_2
.Lx713_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx713_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
.Lx713_29:              mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n621_call_builtin_icon_α
                                                                              jmp   n621_call_builtin_icon_α
n620_call_proc_staged_β:
                        mov              r11, 275;                            jmp   n621_call_builtin_icon_α
.Lx713_0:               .quad            .Lx713_0_s
.Lx713_0_s:             .string          "wf"
#-----------------------------------------------------------------------------------------------------------------------
n621_call_builtin_icon_α:
                        mov              r11, 276
                        .section         .rodata
.Lrkfn715:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn715]
                        lea              rsi, [rsp + 160]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n623_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n622_conjunction_α
n621_call_builtin_icon_β:
                        mov              r11, 276;                            jmp   n623_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n622_conjunction_α:     mov              r11, 277
                        mov              rax, qword ptr [rsp + 144]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 152]
                        mov              qword ptr [rsp + 136], rax;          jmp   n623_unmark_α
n622_conjunction_β:     mov              r11, 277;                            jmp   n623_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n623_unmark_α:          mov              r11, 278
                        mov              rsp, qword ptr [rsp + 80];           jmp   n572_to_β
#-----------------------------------------------------------------------------------------------------------------------
q5_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
q5_β:
                                                                              jmp   q5_ω
#-----------------------------------------------------------------------------------------------------------------------
q5_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1592]
                        add              rsp, 1616;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
q5_ω:
                        mov              rcx, qword ptr [rsp + 1600]
                        add              rsp, 1616;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
q5_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lx719_2]
                        lea              rdx, [rip + .Lx719_3];               jmp   FN__q5
.Lx719_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx719_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__wf:
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rcx
                        mov              qword ptr [rsp + 256], rdx
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
wf_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n720_var_α:             mov              r11, 279
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 168], rax;          jmp   n721_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n721_lit_integer_α:     mov              r11, 280
                        mov              qword ptr [rsp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Lx727_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n722_call_builtin_icon_α
.Lx727_0:               .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n722_call_builtin_icon_α:
                        mov              r11, 281
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn729:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn729]
                        lea              rsi, [rsp + 112]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262275
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    wf_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n723_lit_string_α
n722_call_builtin_icon_β:
                        mov              r11, 281;                            jmp   wf_ω
#-----------------------------------------------------------------------------------------------------------------------
n723_lit_string_α:      mov              r11, 282
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 1
                        mov              rax, qword ptr [rip + .Lx730_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n724_call_builtin_icon_α
.Lx730_0:               .quad            .Lx730_0_s
.Lx730_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n724_call_builtin_icon_α:
                        mov              r11, 283
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 72], rax
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn732:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn732]
                        lea              rsi, [rsp + 48]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393389
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    wf_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   wf_γ
n724_call_builtin_icon_β:
                        mov              r11, 283;                            jmp   wf_ω
#-----------------------------------------------------------------------------------------------------------------------
wf_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
wf_β:
                                                                              jmp   wf_ω
#-----------------------------------------------------------------------------------------------------------------------
wf_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 248]
                        add              rsp, 272;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
wf_ω:
                        mov              rcx, qword ptr [rsp + 256]
                        add              rsp, 272;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
wf_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx733_2]
                        lea              rdx, [rip + .Lx733_3];               jmp   FN__wf
.Lx733_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx733_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 4
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 4
                        call             gva_register@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
                        .section         .rodata
.Lgvan0:                .string          "F"
.Lgvan1:                .string          "f"
.Lgvan2:                .string          "w"
.Lgvan3:                .string          "t"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 208
                        mov              qword ptr [rsp + 184], rcx
                        mov              qword ptr [rsp + 192], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n734_call_proc_staged_α:
                        sub              rsp, 16
                        mov              r11, 284
                        call             q1_dcα;                              jmp   .Lx740_2
.Lx740_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx740_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx740_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx740_240
                        add              rsp, 16;                             jmp   n735_call_proc_staged_α
.Lx740_240:                                                                   jmp   n735_call_proc_staged_α
n734_call_proc_staged_β:
                        mov              r11, 284;                            jmp   n735_call_proc_staged_α
.Lx740_0:               .quad            .Lx740_0_s
.Lx740_0_s:             .string          "q1"
#-----------------------------------------------------------------------------------------------------------------------
n735_call_proc_staged_α:
                        sub              rsp, 16
                        mov              r11, 285
                        call             q2_dcα;                              jmp   .Lx742_2
.Lx742_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx742_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx742_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx742_240
                        add              rsp, 16;                             jmp   n736_call_proc_staged_α
.Lx742_240:                                                                   jmp   n736_call_proc_staged_α
n735_call_proc_staged_β:
                        mov              r11, 285;                            jmp   n736_call_proc_staged_α
.Lx742_0:               .quad            .Lx742_0_s
.Lx742_0_s:             .string          "q2"
#-----------------------------------------------------------------------------------------------------------------------
n736_call_proc_staged_α:
                        sub              rsp, 16
                        mov              r11, 286
                        call             q3_dcα;                              jmp   .Lx744_2
.Lx744_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx744_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx744_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx744_240
                        add              rsp, 16;                             jmp   n737_call_proc_staged_α
.Lx744_240:                                                                   jmp   n737_call_proc_staged_α
n736_call_proc_staged_β:
                        mov              r11, 286;                            jmp   n737_call_proc_staged_α
.Lx744_0:               .quad            .Lx744_0_s
.Lx744_0_s:             .string          "q3"
#-----------------------------------------------------------------------------------------------------------------------
n737_call_proc_staged_α:
                        sub              rsp, 16
                        mov              r11, 287
                        call             q4_dcα;                              jmp   .Lx746_2
.Lx746_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx746_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx746_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx746_240
                        add              rsp, 16;                             jmp   n738_call_proc_staged_α
.Lx746_240:                                                                   jmp   n738_call_proc_staged_α
n737_call_proc_staged_β:
                        mov              r11, 287;                            jmp   n738_call_proc_staged_α
.Lx746_0:               .quad            .Lx746_0_s
.Lx746_0_s:             .string          "q4"
#-----------------------------------------------------------------------------------------------------------------------
n738_call_proc_staged_α:
                        sub              rsp, 16
                        mov              r11, 288
                        call             q5_dcα;                              jmp   .Lx748_2
.Lx748_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx748_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx748_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx748_240
                        add              rsp, 16
                        add              rsp, 64;                             jmp   main_ω
.Lx748_240:             add              rsp, 80;                             jmp   main_γ
n738_call_proc_staged_β:
                        mov              r11, 288;                            jmp   main_ω
.Lx748_0:               .quad            .Lx748_0_s
.Lx748_0_s:             .string          "q5"
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
.Lclassspec0:           .string          "array(a,b,c,d,e,f,g)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "q1"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__q1
                        .quad            q1_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            2880
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "q2"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__q2
                        .quad            q2_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            3248
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "q3"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__q3
                        .quad            q3_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            512
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "q4"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__q4
                        .quad            q4_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            512
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "q5"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__q5
                        .quad            q5_dcα
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1568
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "wf"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__wf
                        .quad            wf_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            208
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
