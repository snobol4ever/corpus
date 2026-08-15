                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p1_α
proc_p1_α:
                        sub              rsp, 3008
                        mov              qword ptr [rsp + 2984], rcx
                        mov              qword ptr [rsp + 2992], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_p1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              qword ptr [rsp + 2864], 2            # result
                        mov              dword ptr [rsp + 2868], 7
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n1_disjunction_α
.Lx98_0:                .quad            .Lx98_0_s
.Lx98_0_s:              .string          " ----> "
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:       mov              qword ptr [rsp + 2880], 0
                        mov              qword ptr [rsp + 2888], 0
                        mov              dword ptr [rsp + 2896], 0;           jmp   n95_call_builtin_icon_α
n1_disjunction_as:      mov              eax, dword ptr [rsp + 2896]
                        cmp              eax, 0;                              jne   .Lx100_0
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n2_call_builtin_icon_α
.Lx100_0:               cmp              eax, 1;                              jne   .Lx100_1
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2880], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n2_call_builtin_icon_α
.Lx100_1:                                                                     jmp   n2_call_builtin_icon_α
n1_disjunction_β:       mov              eax, dword ptr [rsp + 2896]
                        cmp              eax, 0;                              je    n1_disjunction_af
                                                                              jmp   n1_disjunction_af
n1_disjunction_af:      add              dword ptr [rsp + 2896], 1
                        mov              eax, dword ptr [rsp + 2896]
                        cmp              eax, 1;                              je    n94_lit_string_α
                                                                              jmp   n3_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_icon_α: mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 2840], rax
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2824], rax
                        .section         .rodata
.Lrkfn102:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn102]
                        lea              rsi, [rsp + 2816]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx
                        cmp              eax, 104;                            je    n1_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n3_lit_string_α
n2_call_builtin_icon_β:                                                       jmp   n1_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              qword ptr [rsp + 2368], 2            # result
                        mov              dword ptr [rsp + 2372], 66
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n4_disjunction_α
.Lx103_0:               .quad            .Lx103_0_s
.Lx103_0_s:             .string          "every write((\"badc\" | \"edgf\" | \"x\") ? write(upto(!&lcase))) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n4_disjunction_α:       mov              qword ptr [rsp + 2384], 0
                        mov              qword ptr [rsp + 2392], 0
                        mov              dword ptr [rsp + 2400], 0;           jmp   n83_disjunction_α
n4_disjunction_as:      mov              eax, dword ptr [rsp + 2400]
                        cmp              eax, 0;                              jne   .Lx105_0
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n5_call_builtin_icon_α
.Lx105_0:               cmp              eax, 1;                              jne   .Lx105_1
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n5_call_builtin_icon_α
.Lx105_1:                                                                     jmp   n5_call_builtin_icon_α
n4_disjunction_β:       mov              eax, dword ptr [rsp + 2400]
                        cmp              eax, 0;                              je    n4_disjunction_af
                                                                              jmp   n4_disjunction_af
n4_disjunction_af:      add              dword ptr [rsp + 2400], 1
                        mov              eax, dword ptr [rsp + 2400]
                        cmp              eax, 1;                              je    n82_lit_string_α
                                                                              jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2344], rax
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2328], rax
                        .section         .rodata
.Lrkfn107:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn107]
                        lea              rsi, [rsp + 2320]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        cmp              eax, 104;                            je    n4_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_lit_string_α
n5_call_builtin_icon_β:                                                       jmp   n4_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              qword ptr [rsp + 1760], 2            # result
                        mov              dword ptr [rsp + 1764], 73
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n7_disjunction_α
.Lx108_0:               .quad            .Lx108_0_s
.Lx108_0_s:             .string          "every write(((\"aeiou\" | \"foobaz\") ? upto('dracula')) ? =(1 to 10)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n7_disjunction_α:       mov              qword ptr [rsp + 1776], 0
                        mov              qword ptr [rsp + 1784], 0
                        mov              dword ptr [rsp + 1792], 0;           jmp   n65_disjunction_α
n7_disjunction_as:      mov              eax, dword ptr [rsp + 1792]
                        cmp              eax, 0;                              jne   .Lx110_0
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n8_call_builtin_icon_α
.Lx110_0:               cmp              eax, 1;                              jne   .Lx110_1
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n8_call_builtin_icon_α
.Lx110_1:                                                                     jmp   n8_call_builtin_icon_α
n7_disjunction_β:       mov              eax, dword ptr [rsp + 1792]
                        cmp              eax, 0;                              je    n7_disjunction_af
                                                                              jmp   n7_disjunction_af
n7_disjunction_af:      add              dword ptr [rsp + 1792], 1
                        mov              eax, dword ptr [rsp + 1792]
                        cmp              eax, 1;                              je    n64_lit_string_α
                                                                              jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_icon_α: mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1736], rax
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1720], rax
                        .section         .rodata
.Lrkfn112:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn112]
                        lea              rsi, [rsp + 1712]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              eax, 104;                            je    n7_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n9_lit_string_α
n8_call_builtin_icon_β:                                                       jmp   n7_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 39
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n10_disjunction_α
.Lx113_0:               .quad            .Lx113_0_s
.Lx113_0_s:             .string          "every write((1 to 10) ? move(1)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n10_disjunction_α:      mov              qword ptr [rsp + 1376], 0
                        mov              qword ptr [rsp + 1384], 0
                        mov              dword ptr [rsp + 1392], 0;           jmp   n54_lit_integer_α
n10_disjunction_as:     mov              eax, dword ptr [rsp + 1392]
                        cmp              eax, 0;                              jne   .Lx115_0
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n11_call_builtin_icon_α
.Lx115_0:               cmp              eax, 1;                              jne   .Lx115_1
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n11_call_builtin_icon_α
.Lx115_1:                                                                     jmp   n11_call_builtin_icon_α
n10_disjunction_β:      mov              eax, dword ptr [rsp + 1392]
                        cmp              eax, 0;                              je    n10_disjunction_af
                                                                              jmp   n10_disjunction_af
n10_disjunction_af:     add              dword ptr [rsp + 1392], 1
                        mov              eax, dword ptr [rsp + 1392]
                        cmp              eax, 1;                              je    n53_lit_string_α
                                                                              jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1320], rax
                        .section         .rodata
.Lrkfn117:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn117]
                        lea              rsi, [rsp + 1312]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              eax, 104;                            je    n10_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_lit_string_α
n11_call_builtin_icon_β:
                                                                              jmp   n10_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 23
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n13_disjunction_α
.Lx118_0:               .quad            .Lx118_0_s
.Lx118_0_s:             .string          "&subject := &pos ----> "
#-----------------------------------------------------------------------------------------------------------------------
n13_disjunction_α:      mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              dword ptr [rsp + 1168], 0;           jmp   n49_keyword_icon_α
n13_disjunction_as:     mov              eax, dword ptr [rsp + 1168]
                        cmp              eax, 0;                              jne   .Lx120_0
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n14_call_builtin_icon_α
.Lx120_0:               cmp              eax, 1;                              jne   .Lx120_1
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n14_call_builtin_icon_α
.Lx120_1:                                                                     jmp   n14_call_builtin_icon_α
n13_disjunction_β:      mov              eax, dword ptr [rsp + 1168]
                        cmp              eax, 0;                              je    n13_disjunction_af
                                                                              jmp   n13_disjunction_af
n13_disjunction_af:     add              dword ptr [rsp + 1168], 1
                        mov              eax, dword ptr [rsp + 1168]
                        cmp              eax, 1;                              je    n48_lit_string_α
                                                                              jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1096], rax
                        .section         .rodata
.Lrkfn122:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn122]
                        lea              rsi, [rsp + 1088]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              eax, 104;                            je    n13_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n15_lit_string_α
n14_call_builtin_icon_β:
                                                                              jmp   n13_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 24
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n16_disjunction_α
.Lx123_0:               .quad            .Lx123_0_s
.Lx123_0_s:             .string          "&pos :=: &subject ----> "
#-----------------------------------------------------------------------------------------------------------------------
n16_disjunction_α:      mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              dword ptr [rsp + 896], 0;            jmp   n43_keyword_icon_α
n16_disjunction_as:     mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 0;                              jne   .Lx125_0
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 888], rax;          jmp   n17_call_builtin_icon_α
.Lx125_0:               cmp              eax, 1;                              jne   .Lx125_1
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 888], rax;          jmp   n17_call_builtin_icon_α
.Lx125_1:                                                                     jmp   n17_call_builtin_icon_α
n16_disjunction_β:      mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 0;                              je    n16_disjunction_af
                                                                              jmp   n16_disjunction_af
n16_disjunction_af:     add              dword ptr [rsp + 896], 1
                        mov              eax, dword ptr [rsp + 896]
                        cmp              eax, 1;                              je    n42_lit_string_α
                                                                              jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn127:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]
                        lea              rsi, [rsp + 816]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              eax, 104;                            je    n16_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_lit_string_α
n17_call_builtin_icon_β:
                                                                              jmp   n16_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 11
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n19_disjunction_α
.Lx128_0:               .quad            .Lx128_0_s
.Lx128_0_s:             .string          "&pos ----> "
#-----------------------------------------------------------------------------------------------------------------------
n19_disjunction_α:      mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              dword ptr [rsp + 688], 0;            jmp   n40_keyword_icon_α
n19_disjunction_as:     mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 0;                              jne   .Lx130_0
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax;          jmp   n20_call_builtin_icon_α
.Lx130_0:               cmp              eax, 1;                              jne   .Lx130_1
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 680], rax;          jmp   n20_call_builtin_icon_α
.Lx130_1:                                                                     jmp   n20_call_builtin_icon_α
n19_disjunction_β:      mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 0;                              je    n19_disjunction_af
                                                                              jmp   n19_disjunction_af
n19_disjunction_af:     add              dword ptr [rsp + 688], 1
                        mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 1;                              je    n39_lit_string_α
                                                                              jmp   n21_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        .section         .rodata
.Lrkfn132:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn132]
                        lea              rsi, [rsp + 608]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              eax, 104;                            je    n19_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n21_lit_string_α
n20_call_builtin_icon_β:
                                                                              jmp   n19_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:       mov              qword ptr [rsp + 448], 2             # result
                        mov              dword ptr [rsp + 452], 15
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n22_disjunction_α
.Lx133_0:               .quad            .Lx133_0_s
.Lx133_0_s:             .string          "&subject ----> "
#-----------------------------------------------------------------------------------------------------------------------
n22_disjunction_α:      mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              dword ptr [rsp + 480], 0;            jmp   n37_keyword_icon_α
n22_disjunction_as:     mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              jne   .Lx135_0
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax;          jmp   n23_call_builtin_icon_α
.Lx135_0:               cmp              eax, 1;                              jne   .Lx135_1
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 472], rax;          jmp   n23_call_builtin_icon_α
.Lx135_1:                                                                     jmp   n23_call_builtin_icon_α
n22_disjunction_β:      mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 0;                              je    n22_disjunction_af
                                                                              jmp   n22_disjunction_af
n22_disjunction_af:     add              dword ptr [rsp + 480], 1
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 1;                              je    n36_lit_string_α
                                                                              jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn137:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn137]
                        lea              rsi, [rsp + 400]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              eax, 104;                            je    n22_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n24_lit_string_α
n23_call_builtin_icon_β:
                                                                              jmp   n22_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 9
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n25_disjunction_α
.Lx138_0:               .quad            .Lx138_0_s
.Lx138_0_s:             .string          "+1 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n25_disjunction_α:      mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              dword ptr [rsp + 288], 0;            jmp   n34_lit_integer_α
n25_disjunction_as:     mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 0;                              jne   .Lx140_0
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax;          jmp   n26_call_builtin_icon_α
.Lx140_0:               cmp              eax, 1;                              jne   .Lx140_1
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 280], rax;          jmp   n26_call_builtin_icon_α
.Lx140_1:                                                                     jmp   n26_call_builtin_icon_α
n25_disjunction_β:      mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 0;                              je    n25_disjunction_af
                                                                              jmp   n25_disjunction_af
n25_disjunction_af:     add              dword ptr [rsp + 288], 1
                        mov              eax, dword ptr [rsp + 288]
                        cmp              eax, 1;                              je    n33_lit_string_α
                                                                              jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn142:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]
                        lea              rsi, [rsp + 208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104;                            je    n25_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_lit_string_α
n26_call_builtin_icon_β:
                                                                              jmp   n25_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 9
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n28_disjunction_α
.Lx143_0:               .quad            .Lx143_0_s
.Lx143_0_s:             .string          "-1 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n28_disjunction_α:      mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              dword ptr [rsp + 96], 0;             jmp   n31_lit_integer_α
n28_disjunction_as:     mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              jne   .Lx145_0
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n29_call_builtin_icon_α
.Lx145_0:               cmp              eax, 1;                              jne   .Lx145_1
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 88], rax;           jmp   n29_call_builtin_icon_α
.Lx145_1:                                                                     jmp   n29_call_builtin_icon_α
n28_disjunction_β:      mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              je    n28_disjunction_af
                                                                              jmp   n28_disjunction_af
n28_disjunction_af:     add              dword ptr [rsp + 96], 1
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 1;                              je    n30_lit_string_α
                                                                              jmp   proc_p1_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn147:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    n28_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   proc_p1_γ
n29_call_builtin_icon_β:
                                                                              jmp   n28_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 4
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n28_disjunction_as
n30_lit_string_β:                                                             jmp   n28_disjunction_af
.Lx148_0:               .quad            .Lx148_0_s
.Lx148_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      mov              qword ptr [rsp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n32_call_builtin_icon_α
n31_lit_integer_β:                                                            jmp   n28_disjunction_af
.Lx149_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn151:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rsp + 128]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 104;                            je    n28_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n28_disjunction_as
n32_call_builtin_icon_β:
                                                                              jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 4
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n25_disjunction_as
n33_lit_string_β:                                                             jmp   n25_disjunction_af
.Lx152_0:               .quad            .Lx152_0_s
.Lx152_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      mov              qword ptr [rsp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n35_call_builtin_icon_α
n34_lit_integer_β:                                                            jmp   n25_disjunction_af
.Lx153_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn155:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn155]
                        lea              rsi, [rsp + 320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 104;                            je    n25_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n25_disjunction_as
n35_call_builtin_icon_β:
                                                                              jmp   n25_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 4
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n22_disjunction_as
n36_lit_string_β:                                                             jmp   n22_disjunction_af
.Lx156_0:               .quad            .Lx156_0_s
.Lx156_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n37_keyword_icon_α:     mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_subject@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n38_call_builtin_icon_α
n37_keyword_icon_β:                                                           jmp   n22_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn159:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]
                        lea              rsi, [rsp + 512]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              eax, 104;                            je    n22_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n22_disjunction_as
n38_call_builtin_icon_β:
                                                                              jmp   n22_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 4
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n19_disjunction_as
n39_lit_string_β:                                                             jmp   n19_disjunction_af
.Lx160_0:               .quad            .Lx160_0_s
.Lx160_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n40_keyword_icon_α:     mov              qword ptr [rsp + 752], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 760], rax;          jmp   n41_call_builtin_icon_α
n40_keyword_icon_β:                                                           jmp   n19_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        .section         .rodata
.Lrkfn163:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn163]
                        lea              rsi, [rsp + 720]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              eax, 104;                            je    n19_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n19_disjunction_as
n41_call_builtin_icon_β:
                                                                              jmp   n19_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], 4
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n16_disjunction_as
n42_lit_string_β:                                                             jmp   n16_disjunction_af
.Lx164_0:               .quad            .Lx164_0_s
.Lx164_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n43_keyword_icon_α:     mov              qword ptr [rsp + 960], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 968], rax;          jmp   n44_keyword_icon_α
n43_keyword_icon_β:                                                           jmp   n16_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n44_keyword_icon_α:     mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_subject@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n45_keyword_assign_α
n44_keyword_icon_β:                                                           jmp   n16_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n45_keyword_assign_α:   mov              rdi, qword ptr [rsp + 992]
                        mov              rsi, qword ptr [rsp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_pos_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n16_disjunction_af
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        mov              r14, rdx
                        sub              r14, 1;                              jmp   n46_keyword_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n46_keyword_assign_α:   mov              rdi, qword ptr [rsp + 960]
                        mov              rsi, qword ptr [rsp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_subject_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n16_disjunction_af
                        mov              qword ptr [rsp + 1040], 2
                        mov              qword ptr [rsp + 1048], rax
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n47_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn170:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn170]
                        lea              rsi, [rsp + 928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              eax, 104;                            je    n16_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_disjunction_as
n47_call_builtin_icon_β:
                                                                              jmp   n16_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 4
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n13_disjunction_as
n48_lit_string_β:                                                             jmp   n13_disjunction_af
.Lx171_0:               .quad            .Lx171_0_s
.Lx171_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n49_keyword_icon_α:     mov              qword ptr [rsp + 1248], 3
                        mov              rax, r14
                        add              rax, 1
                        mov              qword ptr [rsp + 1256], rax;         jmp   n50_keyword_assign_α
n49_keyword_icon_β:                                                           jmp   n13_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n50_keyword_assign_α:   mov              rdi, qword ptr [rsp + 1248]
                        mov              rsi, qword ptr [rsp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_subject_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n13_disjunction_af
                        mov              qword ptr [rsp + 1232], 2
                        mov              qword ptr [rsp + 1240], rax
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n51_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1208], rax
                        .section         .rodata
.Lrkfn175:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]
                        lea              rsi, [rsp + 1200]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              eax, 104;                            je    n13_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n13_disjunction_as
n51_call_builtin_icon_β:
                                                                              jmp   n13_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn177:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn177]
                        lea              rsi, [rsp + 1424]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              eax, 104;                            je    n10_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_disjunction_as
n52_call_builtin_icon_β:
                                                                              jmp   n10_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 4
                        mov              rax, qword ptr [rip + .Lx178_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n10_disjunction_as
n53_lit_string_β:                                                             jmp   n10_disjunction_af
.Lx178_0:               .quad            .Lx178_0_s
.Lx178_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      mov              qword ptr [rsp + 1648], 3            # result
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n55_lit_integer_α
n54_lit_integer_β:                                                            jmp   n10_disjunction_af
.Lx179_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      mov              qword ptr [rsp + 1664], 3            # result
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n56_to_α
.Lx180_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n56_to_α:               mov              rdi, qword ptr [rsp + 1648]
                        mov              rsi, qword ptr [rsp + 1656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1648], 3
                        mov              qword ptr [rsp + 1656], rax
                        mov              rdi, qword ptr [rsp + 1664]
                        mov              rsi, qword ptr [rsp + 1672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1664], 3
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1632], rax
.Lx182_0:               mov              rax, qword ptr [rsp + 1632]
                        mov              rcx, qword ptr [rsp + 1672]
                        cmp              rax, rcx;                            jg    n10_disjunction_af
                        mov              qword ptr [rsp + 1616], 3
                        mov              qword ptr [rsp + 1624], rax;         jmp   n57_scan_enter_α
n56_to_β:               inc              qword ptr [rsp + 1632];              jmp   .Lx182_0
#-----------------------------------------------------------------------------------------------------------------------
n57_scan_enter_α:       mov              rdi, qword ptr [rsp + 1616]
                        mov              rsi, qword ptr [rsp + 1624]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n58_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      mov              qword ptr [rsp + 1600], 3            # result
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n59_scan_move_α
.Lx185_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n59_scan_move_α:        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jge   .Lx187_239
                        add              rsp, 16;                             jmp   n62_scan_α
.Lx187_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx187_240
                        add              rsp, 16;                             jmp   n62_scan_α
.Lx187_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n60_scan_α
n59_scan_move_β:        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n62_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n60_scan_α:             mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1544], rax
                        lea              rdi, [rsp + 1504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 1504]
                        mov              r14, qword ptr [rsp + 1512]
                        mov              r15, qword ptr [rsp + 1520];         jmp   n61_call_builtin_icon_α
n60_scan_β:                                                                   jmp   n10_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1464], rax
                        .section         .rodata
.Lrkfn191:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rsp + 1456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              eax, 104;                            je    n56_to_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n56_to_β
n61_call_builtin_icon_β:
                                                                              jmp   n56_to_β
#-----------------------------------------------------------------------------------------------------------------------
n62_scan_α:             lea              rdi, [rsp + 1504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 1504]
                        mov              r14, qword ptr [rsp + 1512]
                        mov              r15, qword ptr [rsp + 1520];         jmp   n56_to_β
n62_scan_β:                                                                   jmp   n56_to_β
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn195:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn195]
                        lea              rsi, [rsp + 1824]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              eax, 104;                            je    n7_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n7_disjunction_as
n63_call_builtin_icon_β:
                                                                              jmp   n7_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       mov              qword ptr [rsp + 2288], 2            # result
                        mov              dword ptr [rsp + 2292], 4
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n7_disjunction_as
n64_lit_string_β:                                                             jmp   n7_disjunction_af
.Lx196_0:               .quad            .Lx196_0_s
.Lx196_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n65_disjunction_α:      mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              dword ptr [rsp + 2240], 0;           jmp   n80_lit_string_α
n65_disjunction_as:     mov              eax, dword ptr [rsp + 2240]
                        cmp              eax, 0;                              jne   .Lx198_0
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n66_scan_enter_α
.Lx198_0:               cmp              eax, 1;                              jne   .Lx198_1
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n66_scan_enter_α
.Lx198_1:                                                                     jmp   n66_scan_enter_α
n65_disjunction_β:      mov              eax, dword ptr [rsp + 2240]
                        cmp              eax, 0;                              je    n65_disjunction_af
                                                                              jmp   n65_disjunction_af
n65_disjunction_af:     add              dword ptr [rsp + 2240], 1
                        mov              eax, dword ptr [rsp + 2240]
                        cmp              eax, 1;                              je    n79_lit_string_α
                                                                              jmp   n7_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n66_scan_enter_α:       mov              rdi, qword ptr [rsp + 2224]
                        mov              rsi, qword ptr [rsp + 2232]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n67_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_charset_α:      mov              qword ptr [rsp + 2208], 2            # result
                        mov              dword ptr [rsp + 2212], -1
                        mov              rax, qword ptr [rip + .Lx201_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n68_scan_upto_α
.Lx201_0:               .quad            .Lx201_0_s
.Lx201_0_s:             .string          "acdlru"
#-----------------------------------------------------------------------------------------------------------------------
n68_scan_upto_α:        mov              qword ptr [rsp + 2192], r14
.Lx203_0:               mov              rax, qword ptr [rsp + 2192]
                        cmp              rax, r15;                            jge   n96_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx203_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx203_1
                        mov              qword ptr [rsp + 2176], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 2184], rax;         jmp   n69_scan_α
.Lx203_1:               inc              qword ptr [rsp + 2192];              jmp   .Lx203_0
n68_scan_upto_β:        inc              qword ptr [rsp + 2192];              jmp   .Lx203_0
.Lx203_2:               .quad            .Lx203_2_s
.Lx203_2_s:             .string          "acdlru"
#-----------------------------------------------------------------------------------------------------------------------
n69_scan_α:             mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2152], rax
                        lea              rdi, [rsp + 2112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 2112]
                        mov              r14, qword ptr [rsp + 2120]
                        mov              r15, qword ptr [rsp + 2128];         jmp   n70_scan_enter_α
n69_scan_β:             mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_reenter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax;                            jmp   n68_scan_upto_β
                                                                              jmp   n7_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n70_scan_enter_α:       mov              rdi, qword ptr [rsp + 2144]
                        mov              rsi, qword ptr [rsp + 2152]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n71_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:      mov              qword ptr [rsp + 2064], 3            # result
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n72_lit_integer_α
.Lx208_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      mov              qword ptr [rsp + 2080], 3            # result
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n73_to_α
.Lx209_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n73_to_α:               mov              rdi, qword ptr [rsp + 2064]
                        mov              rsi, qword ptr [rsp + 2072]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2064], 3
                        mov              qword ptr [rsp + 2072], rax
                        mov              rdi, qword ptr [rsp + 2080]
                        mov              rsi, qword ptr [rsp + 2088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2080], 3
                        mov              qword ptr [rsp + 2088], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2048], rax
.Lx211_0:               mov              rax, qword ptr [rsp + 2048]
                        mov              rcx, qword ptr [rsp + 2088]
                        cmp              rax, rcx;                            jg    n78_scan_α
                        mov              qword ptr [rsp + 2032], 3
                        mov              qword ptr [rsp + 2040], rax;         jmp   n74_scan_match_α
n73_to_β:               inc              qword ptr [rsp + 2048];              jmp   .Lx211_0
#-----------------------------------------------------------------------------------------------------------------------
n74_scan_match_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 2032]
                        mov              rsi, qword ptr [rsp + 2040]
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_needle@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, rdx;                            jge   .Lx213_239
                        add              rsp, 16;                             jmp   n73_to_β
.Lx213_239:             mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, qword ptr [rsp + 8]
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             eax, eax;                            je    .Lx213_240
                        add              rsp, 16;                             jmp   n73_to_β
.Lx213_240:             mov              qword ptr [rsp + 2000], 3
                        mov              rax, r14
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rax, 1
                        mov              qword ptr [rsp + 2008], rax;         jmp   n75_scan_tab_α
#-----------------------------------------------------------------------------------------------------------------------
n75_scan_tab_α:         sub              rsp, 16
                        mov              rax, qword ptr [rsp + 2008]
                        cmp              rax, 1;                              jge   .Lx215_0
                        add              rax, r15
                        add              rax, 1
.Lx215_0:               cmp              rax, 1;                              jge   .Lx215_239
                        add              rsp, 16;                             jmp   n73_to_β
.Lx215_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx215_240
                        add              rsp, 16;                             jmp   n73_to_β
.Lx215_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx;         jmp   n76_scan_α
n75_scan_tab_β:         mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n73_to_β
#-----------------------------------------------------------------------------------------------------------------------
n76_scan_α:             mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1944], rax
                        lea              rdi, [rsp + 1904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 1904]
                        mov              r14, qword ptr [rsp + 1912]
                        mov              r15, qword ptr [rsp + 1920];         jmp   n77_call_builtin_icon_α
n76_scan_β:                                                                   jmp   n7_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1864], rax
                        .section         .rodata
.Lrkfn219:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn219]
                        lea              rsi, [rsp + 1856]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              eax, 104;                            je    n69_scan_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n69_scan_β
n77_call_builtin_icon_β:
                                                                              jmp   n69_scan_β
#-----------------------------------------------------------------------------------------------------------------------
n78_scan_α:             lea              rdi, [rsp + 1904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 1904]
                        mov              r14, qword ptr [rsp + 1912]
                        mov              r15, qword ptr [rsp + 1920];         jmp   n69_scan_β
n78_scan_β:                                                                   jmp   n69_scan_β
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              qword ptr [rsp + 2272], 2            # result
                        mov              dword ptr [rsp + 2276], 6
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n65_disjunction_as
n79_lit_string_β:                                                             jmp   n65_disjunction_af
.Lx222_0:               .quad            .Lx222_0_s
.Lx222_0_s:             .string          "foobaz"
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       mov              qword ptr [rsp + 2256], 2            # result
                        mov              dword ptr [rsp + 2260], 5
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 2264], rax;         jmp   n65_disjunction_as
n80_lit_string_β:                                                             jmp   n65_disjunction_af
.Lx223_0:               .quad            .Lx223_0_s
.Lx223_0_s:             .string          "aeiou"
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn225:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn225]
                        lea              rsi, [rsp + 2432]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx
                        cmp              eax, 104;                            je    n4_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n4_disjunction_as
n81_call_builtin_icon_β:
                                                                              jmp   n4_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              qword ptr [rsp + 2784], 2            # result
                        mov              dword ptr [rsp + 2788], 4
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n4_disjunction_as
n82_lit_string_β:                                                             jmp   n4_disjunction_af
.Lx226_0:               .quad            .Lx226_0_s
.Lx226_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n83_disjunction_α:      mov              qword ptr [rsp + 2704], 0
                        mov              qword ptr [rsp + 2712], 0
                        mov              dword ptr [rsp + 2720], 0;           jmp   n93_lit_string_α
n83_disjunction_as:     mov              eax, dword ptr [rsp + 2720]
                        cmp              eax, 0;                              jne   .Lx228_0
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n84_scan_enter_α
.Lx228_0:               cmp              eax, 1;                              jne   .Lx228_1
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n84_scan_enter_α
.Lx228_1:               cmp              eax, 2;                              jne   .Lx228_2
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2712], rax;         jmp   n84_scan_enter_α
.Lx228_2:                                                                     jmp   n84_scan_enter_α
n83_disjunction_β:      mov              eax, dword ptr [rsp + 2720]
                        cmp              eax, 0;                              je    n83_disjunction_af
                        cmp              eax, 1;                              je    n83_disjunction_af
                                                                              jmp   n83_disjunction_af
n83_disjunction_af:     add              dword ptr [rsp + 2720], 1
                        mov              eax, dword ptr [rsp + 2720]
                        cmp              eax, 1;                              je    n92_lit_string_α
                        cmp              eax, 2;                              je    n91_lit_string_α
                                                                              jmp   n4_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n84_scan_enter_α:       mov              rdi, qword ptr [rsp + 2704]
                        mov              rsi, qword ptr [rsp + 2712]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n85_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_charset_α:      mov              qword ptr [rsp + 2688], 2            # result
                        mov              dword ptr [rsp + 2692], -1
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 2696], rax;         jmp   n86_iterate_α
.Lx231_0:               .quad            .Lx231_0_s
.Lx231_0_s:             .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n86_iterate_α:          mov              qword ptr [rsp + 2672], 0
.Lx233_0:               mov              rdi, qword ptr [rsp + 2688]
                        mov              rsi, qword ptr [rsp + 2696]
                        mov              rdx, qword ptr [rsp + 2672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx
                        cmp              rax, 104;                            je    n97_scan_α
                                                                              jmp   n87_scan_upto_α
n86_iterate_β:          inc              qword ptr [rsp + 2672];              jmp   .Lx233_0
#-----------------------------------------------------------------------------------------------------------------------
n87_scan_upto_α:        mov              qword ptr [rsp + 2640], r14
.Lx235_0:               mov              rax, qword ptr [rsp + 2640]
                        cmp              rax, r15;                            jge   n86_iterate_β
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rsp + 2664]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx235_1
                        mov              qword ptr [rsp + 2624], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 2632], rax;         jmp   n88_call_builtin_icon_α
.Lx235_1:               inc              qword ptr [rsp + 2640];              jmp   .Lx235_0
n87_scan_upto_β:        inc              qword ptr [rsp + 2640];              jmp   .Lx235_0
#-----------------------------------------------------------------------------------------------------------------------
n88_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2600], rax
                        .section         .rodata
.Lrkfn237:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]
                        lea              rsi, [rsp + 2592]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx
                        cmp              eax, 104;                            je    n87_scan_upto_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n89_scan_α
n88_call_builtin_icon_β:
                                                                              jmp   n87_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n89_scan_α:             mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2552], rax
                        lea              rdi, [rsp + 2512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 2512]
                        mov              r14, qword ptr [rsp + 2520]
                        mov              r15, qword ptr [rsp + 2528];         jmp   n90_call_builtin_icon_α
n89_scan_β:                                                                   jmp   n4_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2472], rax
                        .section         .rodata
.Lrkfn241:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn241]
                        lea              rsi, [rsp + 2464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx
                        cmp              eax, 104;                            je    n83_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n83_disjunction_β
n90_call_builtin_icon_β:
                                                                              jmp   n83_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:       mov              qword ptr [rsp + 2768], 2            # result
                        mov              dword ptr [rsp + 2772], 1
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n83_disjunction_as
n91_lit_string_β:                                                             jmp   n83_disjunction_af
.Lx242_0:               .quad            .Lx242_0_s
.Lx242_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:       mov              qword ptr [rsp + 2752], 2            # result
                        mov              dword ptr [rsp + 2756], 4
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n83_disjunction_as
n92_lit_string_β:                                                             jmp   n83_disjunction_af
.Lx243_0:               .quad            .Lx243_0_s
.Lx243_0_s:             .string          "edgf"
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:       mov              qword ptr [rsp + 2736], 2            # result
                        mov              dword ptr [rsp + 2740], 4
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n83_disjunction_as
n93_lit_string_β:                                                             jmp   n83_disjunction_af
.Lx244_0:               .quad            .Lx244_0_s
.Lx244_0_s:             .string          "badc"
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       mov              qword ptr [rsp + 2944], 2            # result
                        mov              dword ptr [rsp + 2948], 4
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 2952], rax;         jmp   n1_disjunction_as
n94_lit_string_β:                                                             jmp   n1_disjunction_af
.Lx245_0:               .quad            .Lx245_0_s
.Lx245_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn247:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn247]
                        lea              rsi, [rsp + 2928]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              eax, 104;                            je    n1_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1_disjunction_as
n95_call_builtin_icon_β:
                                                                              jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n96_scan_α:             lea              rdi, [rsp + 2112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 2112]
                        mov              r14, qword ptr [rsp + 2120]
                        mov              r15, qword ptr [rsp + 2128];         jmp   n65_disjunction_β
n96_scan_β:                                                                   jmp   n65_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n97_scan_α:             lea              rdi, [rsp + 2512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 2512]
                        mov              r14, qword ptr [rsp + 2520]
                        mov              r15, qword ptr [rsp + 2528];         jmp   n83_disjunction_β
n97_scan_β:                                                                   jmp   n83_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_β:
                                                                              jmp   proc_p1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2984]
                        add              rsp, 3008;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_ω:
                        mov              rcx, qword ptr [rsp + 2992]
                        add              rsp, 3008;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_p1_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx252_2]
                        lea              rdx, [rip + .Lx252_3];               jmp   proc_p1_α
.Lx252_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx252_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p2_α
proc_p2_α:
                        sub              rsp, 2592
                        mov              qword ptr [rsp + 2568], rcx
                        mov              qword ptr [rsp + 2576], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_p2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_string_α:      mov              qword ptr [rsp + 2384], 2            # result
                        mov              dword ptr [rsp + 2388], 10
                        mov              rax, qword ptr [rip + .Lx331_0]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n254_disjunction_α
.Lx331_0:               .quad            .Lx331_0_s
.Lx331_0_s:             .string          "?10 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n254_disjunction_α:     mov              qword ptr [rsp + 2400], 0
                        mov              qword ptr [rsp + 2408], 0
                        mov              dword ptr [rsp + 2416], 0;           jmp   n327_lit_integer_α
n254_disjunction_as:    mov              eax, dword ptr [rsp + 2416]
                        cmp              eax, 0;                              jne   .Lx333_0
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n255_call_builtin_icon_α
.Lx333_0:               cmp              eax, 1;                              jne   .Lx333_1
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n255_call_builtin_icon_α
.Lx333_1:                                                                     jmp   n255_call_builtin_icon_α
n254_disjunction_β:     mov              eax, dword ptr [rsp + 2416]
                        cmp              eax, 0;                              je    n254_disjunction_af
                                                                              jmp   n254_disjunction_af
n254_disjunction_af:    add              dword ptr [rsp + 2416], 1
                        mov              eax, dword ptr [rsp + 2416]
                        cmp              eax, 1;                              je    n326_lit_string_α
                                                                              jmp   n256_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n255_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2360], rax
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2344], rax
                        .section         .rodata
.Lrkfn335:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn335]
                        lea              rsi, [rsp + 2336]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              eax, 104;                            je    n254_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n256_lit_string_α
n255_call_builtin_icon_β:
                                                                              jmp   n254_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_string_α:      mov              qword ptr [rsp + 2160], 2            # result
                        mov              dword ptr [rsp + 2164], 10
                        mov              rax, qword ptr [rip + .Lx336_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n257_disjunction_α
.Lx336_0:               .quad            .Lx336_0_s
.Lx336_0_s:             .string          "?10 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n257_disjunction_α:     mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              dword ptr [rsp + 2192], 0;           jmp   n322_lit_integer_α
n257_disjunction_as:    mov              eax, dword ptr [rsp + 2192]
                        cmp              eax, 0;                              jne   .Lx338_0
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n258_call_builtin_icon_α
.Lx338_0:               cmp              eax, 1;                              jne   .Lx338_1
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n258_call_builtin_icon_α
.Lx338_1:                                                                     jmp   n258_call_builtin_icon_α
n257_disjunction_β:     mov              eax, dword ptr [rsp + 2192]
                        cmp              eax, 0;                              je    n257_disjunction_af
                                                                              jmp   n257_disjunction_af
n257_disjunction_af:    add              dword ptr [rsp + 2192], 1
                        mov              eax, dword ptr [rsp + 2192]
                        cmp              eax, 1;                              je    n321_lit_string_α
                                                                              jmp   n259_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n258_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2136], rax
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2120], rax
                        .section         .rodata
.Lrkfn340:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn340]
                        lea              rsi, [rsp + 2112]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              eax, 104;                            je    n257_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n259_lit_string_α
n258_call_builtin_icon_β:
                                                                              jmp   n257_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:      mov              qword ptr [rsp + 1936], 2            # result
                        mov              dword ptr [rsp + 1940], 10
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n260_disjunction_α
.Lx341_0:               .quad            .Lx341_0_s
.Lx341_0_s:             .string          "?10 ----> "
#-----------------------------------------------------------------------------------------------------------------------
n260_disjunction_α:     mov              qword ptr [rsp + 1952], 0
                        mov              qword ptr [rsp + 1960], 0
                        mov              dword ptr [rsp + 1968], 0;           jmp   n317_lit_integer_α
n260_disjunction_as:    mov              eax, dword ptr [rsp + 1968]
                        cmp              eax, 0;                              jne   .Lx343_0
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n261_call_builtin_icon_α
.Lx343_0:               cmp              eax, 1;                              jne   .Lx343_1
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n261_call_builtin_icon_α
.Lx343_1:                                                                     jmp   n261_call_builtin_icon_α
n260_disjunction_β:     mov              eax, dword ptr [rsp + 1968]
                        cmp              eax, 0;                              je    n260_disjunction_af
                                                                              jmp   n260_disjunction_af
n260_disjunction_af:    add              dword ptr [rsp + 1968], 1
                        mov              eax, dword ptr [rsp + 1968]
                        cmp              eax, 1;                              je    n316_lit_string_α
                                                                              jmp   n262_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n261_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1912], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1896], rax
                        .section         .rodata
.Lrkfn345:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn345]
                        lea              rsi, [rsp + 1888]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              eax, 104;                            je    n260_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n262_lit_string_α
n261_call_builtin_icon_β:
                                                                              jmp   n260_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:      mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 13
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n263_disjunction_α
.Lx346_0:               .quad            .Lx346_0_s
.Lx346_0_s:             .string          "~&cset ----> "
#-----------------------------------------------------------------------------------------------------------------------
n263_disjunction_α:     mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1736], 0
                        mov              dword ptr [rsp + 1744], 0;           jmp   n313_keyword_icon_α
n263_disjunction_as:    mov              eax, dword ptr [rsp + 1744]
                        cmp              eax, 0;                              jne   .Lx348_0
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n264_call_builtin_icon_α
.Lx348_0:               cmp              eax, 1;                              jne   .Lx348_1
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n264_call_builtin_icon_α
.Lx348_1:                                                                     jmp   n264_call_builtin_icon_α
n263_disjunction_β:     mov              eax, dword ptr [rsp + 1744]
                        cmp              eax, 0;                              je    n263_disjunction_af
                                                                              jmp   n263_disjunction_af
n263_disjunction_af:    add              dword ptr [rsp + 1744], 1
                        mov              eax, dword ptr [rsp + 1744]
                        cmp              eax, 1;                              je    n312_lit_string_α
                                                                              jmp   n265_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n264_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1672], rax
                        .section         .rodata
.Lrkfn350:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn350]
                        lea              rsi, [rsp + 1664]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              eax, 104;                            je    n263_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n265_lit_string_α
n264_call_builtin_icon_β:
                                                                              jmp   n263_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:      mov              qword ptr [rsp + 1488], 2            # result
                        mov              dword ptr [rsp + 1492], 14
                        mov              rax, qword ptr [rip + .Lx351_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n266_disjunction_α
.Lx351_0:               .quad            .Lx351_0_s
.Lx351_0_s:             .string          "~&ascii ----> "
#-----------------------------------------------------------------------------------------------------------------------
n266_disjunction_α:     mov              qword ptr [rsp + 1504], 0
                        mov              qword ptr [rsp + 1512], 0
                        mov              dword ptr [rsp + 1520], 0;           jmp   n309_keyword_icon_α
n266_disjunction_as:    mov              eax, dword ptr [rsp + 1520]
                        cmp              eax, 0;                              jne   .Lx353_0
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n267_call_builtin_icon_α
.Lx353_0:               cmp              eax, 1;                              jne   .Lx353_1
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n267_call_builtin_icon_α
.Lx353_1:                                                                     jmp   n267_call_builtin_icon_α
n266_disjunction_β:     mov              eax, dword ptr [rsp + 1520]
                        cmp              eax, 0;                              je    n266_disjunction_af
                                                                              jmp   n266_disjunction_af
n266_disjunction_af:    add              dword ptr [rsp + 1520], 1
                        mov              eax, dword ptr [rsp + 1520]
                        cmp              eax, 1;                              je    n308_lit_string_α
                                                                              jmp   n268_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n267_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1448], rax
                        .section         .rodata
.Lrkfn355:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn355]
                        lea              rsi, [rsp + 1440]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              eax, 104;                            je    n266_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n268_lit_string_α
n267_call_builtin_icon_β:
                                                                              jmp   n266_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:      mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 33
                        mov              rax, qword ptr [rip + .Lx356_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n269_disjunction_α
.Lx356_0:               .quad            .Lx356_0_s
.Lx356_0_s:             .string          "&subject := string(&lcase) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n269_disjunction_α:     mov              qword ptr [rsp + 1248], 0
                        mov              qword ptr [rsp + 1256], 0
                        mov              dword ptr [rsp + 1264], 0;           jmp   n304_lit_charset_α
n269_disjunction_as:    mov              eax, dword ptr [rsp + 1264]
                        cmp              eax, 0;                              jne   .Lx358_0
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n270_call_builtin_icon_α
.Lx358_0:               cmp              eax, 1;                              jne   .Lx358_1
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n270_call_builtin_icon_α
.Lx358_1:                                                                     jmp   n270_call_builtin_icon_α
n269_disjunction_β:     mov              eax, dword ptr [rsp + 1264]
                        cmp              eax, 0;                              je    n269_disjunction_af
                                                                              jmp   n269_disjunction_af
n269_disjunction_af:    add              dword ptr [rsp + 1264], 1
                        mov              eax, dword ptr [rsp + 1264]
                        cmp              eax, 1;                              je    n303_lit_string_α
                                                                              jmp   n271_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n270_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1192], rax
                        .section         .rodata
.Lrkfn360:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn360]
                        lea              rsi, [rsp + 1184]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              eax, 104;                            je    n269_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n271_lit_string_α
n270_call_builtin_icon_β:
                                                                              jmp   n269_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_string_α:      mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 11
                        mov              rax, qword ptr [rip + .Lx361_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n272_disjunction_α
.Lx361_0:               .quad            .Lx361_0_s
.Lx361_0_s:             .string          "=\"a\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n272_disjunction_α:     mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              dword ptr [rsp + 960], 0;            jmp   n299_lit_string_α
n272_disjunction_as:    mov              eax, dword ptr [rsp + 960]
                        cmp              eax, 0;                              jne   .Lx363_0
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax;          jmp   n273_call_builtin_icon_α
.Lx363_0:               cmp              eax, 1;                              jne   .Lx363_1
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 952], rax;          jmp   n273_call_builtin_icon_α
.Lx363_1:                                                                     jmp   n273_call_builtin_icon_α
n272_disjunction_β:     mov              eax, dword ptr [rsp + 960]
                        cmp              eax, 0;                              je    n272_disjunction_af
                                                                              jmp   n272_disjunction_af
n272_disjunction_af:    add              dword ptr [rsp + 960], 1
                        mov              eax, dword ptr [rsp + 960]
                        cmp              eax, 1;                              je    n298_lit_string_α
                                                                              jmp   n274_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n273_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 888], rax
                        .section         .rodata
.Lrkfn365:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn365]
                        lea              rsi, [rsp + 880]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              eax, 104;                            je    n272_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n274_lit_string_α
n273_call_builtin_icon_β:
                                                                              jmp   n272_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:      mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 11
                        mov              rax, qword ptr [rip + .Lx366_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n275_disjunction_α
.Lx366_0:               .quad            .Lx366_0_s
.Lx366_0_s:             .string          "=\"b\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n275_disjunction_α:     mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              dword ptr [rsp + 656], 0;            jmp   n294_lit_string_α
n275_disjunction_as:    mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              jne   .Lx368_0
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax;          jmp   n276_call_builtin_icon_α
.Lx368_0:               cmp              eax, 1;                              jne   .Lx368_1
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 648], rax;          jmp   n276_call_builtin_icon_α
.Lx368_1:                                                                     jmp   n276_call_builtin_icon_α
n275_disjunction_β:     mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 0;                              je    n275_disjunction_af
                                                                              jmp   n275_disjunction_af
n275_disjunction_af:    add              dword ptr [rsp + 656], 1
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 1;                              je    n293_lit_string_α
                                                                              jmp   n277_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n276_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 584], rax
                        .section         .rodata
.Lrkfn370:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn370]
                        lea              rsi, [rsp + 576]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              eax, 104;                            je    n275_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n277_lit_string_α
n276_call_builtin_icon_β:
                                                                              jmp   n275_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:      mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 11
                        mov              rax, qword ptr [rip + .Lx371_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n278_disjunction_α
.Lx371_0:               .quad            .Lx371_0_s
.Lx371_0_s:             .string          "=\"d\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n278_disjunction_α:     mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              dword ptr [rsp + 352], 0;            jmp   n289_lit_string_α
n278_disjunction_as:    mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              jne   .Lx373_0
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax;          jmp   n279_call_builtin_icon_α
.Lx373_0:               cmp              eax, 1;                              jne   .Lx373_1
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 344], rax;          jmp   n279_call_builtin_icon_α
.Lx373_1:                                                                     jmp   n279_call_builtin_icon_α
n278_disjunction_β:     mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 0;                              je    n278_disjunction_af
                                                                              jmp   n278_disjunction_af
n278_disjunction_af:    add              dword ptr [rsp + 352], 1
                        mov              eax, dword ptr [rsp + 352]
                        cmp              eax, 1;                              je    n288_lit_string_α
                                                                              jmp   n280_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n279_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn375:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn375]
                        lea              rsi, [rsp + 272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 104;                            je    n278_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n280_lit_string_α
n279_call_builtin_icon_β:
                                                                              jmp   n278_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:      mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 33
                        mov              rax, qword ptr [rip + .Lx376_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n281_disjunction_α
.Lx376_0:               .quad            .Lx376_0_s
.Lx376_0_s:             .string          "&subject := string(&lcase) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n281_disjunction_α:     mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              dword ptr [rsp + 96], 0;             jmp   n284_lit_charset_α
n281_disjunction_as:    mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              jne   .Lx378_0
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n282_call_builtin_icon_α
.Lx378_0:               cmp              eax, 1;                              jne   .Lx378_1
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 88], rax;           jmp   n282_call_builtin_icon_α
.Lx378_1:                                                                     jmp   n282_call_builtin_icon_α
n281_disjunction_β:     mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              je    n281_disjunction_af
                                                                              jmp   n281_disjunction_af
n281_disjunction_af:    add              dword ptr [rsp + 96], 1
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 1;                              je    n283_lit_string_α
                                                                              jmp   proc_p2_ω
#-----------------------------------------------------------------------------------------------------------------------
n282_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn380:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn380]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    n281_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   proc_p2_γ
n282_call_builtin_icon_β:
                                                                              jmp   n281_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:      mov              qword ptr [rsp + 240], 2             # result
                        mov              dword ptr [rsp + 244], 4
                        mov              rax, qword ptr [rip + .Lx381_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n281_disjunction_as
n283_lit_string_β:                                                            jmp   n281_disjunction_af
.Lx381_0:               .quad            .Lx381_0_s
.Lx381_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_charset_α:     mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], -1
                        mov              rax, qword ptr [rip + .Lx382_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n285_call_builtin_icon_α
n284_lit_charset_β:                                                           jmp   n281_disjunction_af
.Lx382_0:               .quad            .Lx382_0_s
.Lx382_0_s:             .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n285_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn384:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn384]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104;                            je    n281_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n286_keyword_assign_α
n285_call_builtin_icon_β:
                                                                              jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n286_keyword_assign_α:  mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_subject_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n281_disjunction_af
                        mov              qword ptr [rsp + 160], 2
                        mov              qword ptr [rsp + 168], rax
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n287_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n287_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn387:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn387]
                        lea              rsi, [rsp + 128]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 104;                            je    n281_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n281_disjunction_as
n287_call_builtin_icon_β:
                                                                              jmp   n281_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_string_α:      mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 4
                        mov              rax, qword ptr [rip + .Lx388_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n278_disjunction_as
n288_lit_string_β:                                                            jmp   n278_disjunction_af
.Lx388_0:               .quad            .Lx388_0_s
.Lx388_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_string_α:      mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 1
                        mov              rax, qword ptr [rip + .Lx389_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n290_call_α
n289_lit_string_β:                                                            jmp   n278_disjunction_af
.Lx389_0:               .quad            .Lx389_0_s
.Lx389_0_s:             .string          "d"
#-----------------------------------------------------------------------------------------------------------------------
n290_call_α:            mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn136:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn136]
                        lea              rsi, [rsp + 496]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n278_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n291_call_α
n290_call_β:                                                                  jmp   n278_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n291_call_α:            mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 440], rax
                        mov              qword ptr [rsp + 448], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn137:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn137]
                        lea              rsi, [rsp + 432]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n278_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n292_call_builtin_icon_α
n291_call_β:            mov              r14, qword ptr [rsp + 448];          jmp   n278_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n292_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn393:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn393]
                        lea              rsi, [rsp + 384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              eax, 104;                            je    n278_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n278_disjunction_as
n292_call_builtin_icon_β:
                                                                              jmp   n278_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:      mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 4
                        mov              rax, qword ptr [rip + .Lx394_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n275_disjunction_as
n293_lit_string_β:                                                            jmp   n275_disjunction_af
.Lx394_0:               .quad            .Lx394_0_s
.Lx394_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_string_α:      mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 1
                        mov              rax, qword ptr [rip + .Lx395_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n295_call_α
n294_lit_string_β:                                                            jmp   n275_disjunction_af
.Lx395_0:               .quad            .Lx395_0_s
.Lx395_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n295_call_α:            mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn141:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn141]
                        lea              rsi, [rsp + 800]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n275_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n296_call_α
n295_call_β:                                                                  jmp   n275_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n296_call_α:            mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 744], rax
                        mov              qword ptr [rsp + 752], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn142:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn142]
                        lea              rsi, [rsp + 736]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n275_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n297_call_builtin_icon_α
n296_call_β:            mov              r14, qword ptr [rsp + 752];          jmp   n275_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n297_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 696], rax
                        .section         .rodata
.Lrkfn399:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn399]
                        lea              rsi, [rsp + 688]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              eax, 104;                            je    n275_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n275_disjunction_as
n297_call_builtin_icon_β:
                                                                              jmp   n275_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:      mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 4
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n272_disjunction_as
n298_lit_string_β:                                                            jmp   n272_disjunction_af
.Lx400_0:               .quad            .Lx400_0_s
.Lx400_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_string_α:      mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx401_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n300_call_α
n299_lit_string_β:                                                            jmp   n272_disjunction_af
.Lx401_0:               .quad            .Lx401_0_s
.Lx401_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n300_call_α:            mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn146:          .string          "match"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn146]
                        lea              rsi, [rsp + 1104]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n272_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n301_call_α
n300_call_β:                                                                  jmp   n272_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n301_call_α:            mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1048], rax
                        mov              qword ptr [rsp + 1056], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn147:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn147]
                        lea              rsi, [rsp + 1040]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n272_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n302_call_builtin_icon_α
n301_call_β:            mov              r14, qword ptr [rsp + 1056];         jmp   n272_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n302_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lrkfn405:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn405]
                        lea              rsi, [rsp + 992]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              eax, 104;                            je    n272_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n272_disjunction_as
n302_call_builtin_icon_β:
                                                                              jmp   n272_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_string_α:      mov              qword ptr [rsp + 1408], 2            # result
                        mov              dword ptr [rsp + 1412], 4
                        mov              rax, qword ptr [rip + .Lx406_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n269_disjunction_as
n303_lit_string_β:                                                            jmp   n269_disjunction_af
.Lx406_0:               .quad            .Lx406_0_s
.Lx406_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_charset_α:     mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], -1
                        mov              rax, qword ptr [rip + .Lx407_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n305_call_builtin_icon_α
n304_lit_charset_β:                                                           jmp   n269_disjunction_af
.Lx407_0:               .quad            .Lx407_0_s
.Lx407_0_s:             .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n305_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1368], rax
                        .section         .rodata
.Lrkfn409:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn409]
                        lea              rsi, [rsp + 1360]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              eax, 104;                            je    n269_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n306_keyword_assign_α
n305_call_builtin_icon_β:
                                                                              jmp   n269_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n306_keyword_assign_α:  mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_subject_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n269_disjunction_af
                        mov              qword ptr [rsp + 1328], 2
                        mov              qword ptr [rsp + 1336], rax
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n307_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n307_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1304], rax
                        .section         .rodata
.Lrkfn412:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn412]
                        lea              rsi, [rsp + 1296]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              eax, 104;                            je    n269_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n269_disjunction_as
n307_call_builtin_icon_β:
                                                                              jmp   n269_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:      mov              qword ptr [rsp + 1632], 2            # result
                        mov              dword ptr [rsp + 1636], 4
                        mov              rax, qword ptr [rip + .Lx413_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n266_disjunction_as
n308_lit_string_β:                                                            jmp   n266_disjunction_af
.Lx413_0:               .quad            .Lx413_0_s
.Lx413_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n309_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx414_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n266_disjunction_af
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n310_unop_α
n309_keyword_icon_β:                                                          jmp   n266_disjunction_af
.Lx414_0:               .quad            .Lx414_0_s
.Lx414_0_s:             .string          "&ascii"
#-----------------------------------------------------------------------------------------------------------------------
n310_unop_α:            mov              rdi, qword ptr [rsp + 1600]
                        mov              rsi, qword ptr [rsp + 1608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cset_compl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n311_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n311_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1560], rax
                        .section         .rodata
.Lrkfn417:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn417]
                        lea              rsi, [rsp + 1552]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              eax, 104;                            je    n266_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n266_disjunction_as
n311_call_builtin_icon_β:
                                                                              jmp   n266_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_string_α:      mov              qword ptr [rsp + 1856], 2            # result
                        mov              dword ptr [rsp + 1860], 4
                        mov              rax, qword ptr [rip + .Lx418_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n263_disjunction_as
n312_lit_string_β:                                                            jmp   n263_disjunction_af
.Lx418_0:               .quad            .Lx418_0_s
.Lx418_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n313_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx419_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n263_disjunction_af
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx;         jmp   n314_unop_α
n313_keyword_icon_β:                                                          jmp   n263_disjunction_af
.Lx419_0:               .quad            .Lx419_0_s
.Lx419_0_s:             .string          "&cset"
#-----------------------------------------------------------------------------------------------------------------------
n314_unop_α:            mov              rdi, qword ptr [rsp + 1824]
                        mov              rsi, qword ptr [rsp + 1832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cset_compl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx;         jmp   n315_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n315_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1784], rax
                        .section         .rodata
.Lrkfn422:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn422]
                        lea              rsi, [rsp + 1776]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        cmp              eax, 104;                            je    n263_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n263_disjunction_as
n315_call_builtin_icon_β:
                                                                              jmp   n263_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:      mov              qword ptr [rsp + 2080], 2            # result
                        mov              dword ptr [rsp + 2084], 4
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n260_disjunction_as
n316_lit_string_β:                                                            jmp   n260_disjunction_af
.Lx423_0:               .quad            .Lx423_0_s
.Lx423_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_integer_α:     mov              qword ptr [rsp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n318_random_α
n317_lit_integer_β:                                                           jmp   n260_disjunction_af
.Lx424_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n318_random_α:          mov              rdi, qword ptr [rsp + 2048]
                        mov              rsi, qword ptr [rsp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n260_disjunction_af
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx;         jmp   n319_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n319_deref_α:           mov              rdi, qword ptr [rsp + 2032]
                        mov              rsi, qword ptr [rsp + 2040]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n260_disjunction_af
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n320_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n320_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2008], rax
                        .section         .rodata
.Lrkfn428:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn428]
                        lea              rsi, [rsp + 2000]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              eax, 104;                            je    n260_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n260_disjunction_as
n320_call_builtin_icon_β:
                                                                              jmp   n260_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:      mov              qword ptr [rsp + 2304], 2            # result
                        mov              dword ptr [rsp + 2308], 4
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n257_disjunction_as
n321_lit_string_β:                                                            jmp   n257_disjunction_af
.Lx429_0:               .quad            .Lx429_0_s
.Lx429_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_integer_α:     mov              qword ptr [rsp + 2272], 3            # result
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n323_random_α
n322_lit_integer_β:                                                           jmp   n257_disjunction_af
.Lx430_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n323_random_α:          mov              rdi, qword ptr [rsp + 2272]
                        mov              rsi, qword ptr [rsp + 2280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n257_disjunction_af
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n324_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n324_deref_α:           mov              rdi, qword ptr [rsp + 2256]
                        mov              rsi, qword ptr [rsp + 2264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n257_disjunction_af
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n325_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n325_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2232], rax
                        .section         .rodata
.Lrkfn434:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn434]
                        lea              rsi, [rsp + 2224]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              eax, 104;                            je    n257_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n257_disjunction_as
n325_call_builtin_icon_β:
                                                                              jmp   n257_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_string_α:      mov              qword ptr [rsp + 2528], 2            # result
                        mov              dword ptr [rsp + 2532], 4
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n254_disjunction_as
n326_lit_string_β:                                                            jmp   n254_disjunction_af
.Lx435_0:               .quad            .Lx435_0_s
.Lx435_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_integer_α:     mov              qword ptr [rsp + 2496], 3            # result
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n328_random_α
n327_lit_integer_β:                                                           jmp   n254_disjunction_af
.Lx436_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n328_random_α:          mov              rdi, qword ptr [rsp + 2496]
                        mov              rsi, qword ptr [rsp + 2504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_random_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n254_disjunction_af
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx;         jmp   n329_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n329_deref_α:           mov              rdi, qword ptr [rsp + 2480]
                        mov              rsi, qword ptr [rsp + 2488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n254_disjunction_af
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx;         jmp   n330_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n330_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2456], rax
                        .section         .rodata
.Lrkfn440:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn440]
                        lea              rsi, [rsp + 2448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              eax, 104;                            je    n254_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n254_disjunction_as
n330_call_builtin_icon_β:
                                                                              jmp   n254_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_β:
                                                                              jmp   proc_p2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2568]
                        add              rsp, 2592;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_ω:
                        mov              rcx, qword ptr [rsp + 2576]
                        add              rsp, 2592;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_p2_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx441_2]
                        lea              rdx, [rip + .Lx441_3];               jmp   proc_p2_α
.Lx441_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx441_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p3_α
proc_p3_α:
                        sub              rsp, 3280
                        mov              qword ptr [rsp + 3256], rcx
                        mov              qword ptr [rsp + 3264], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_p3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_string_α:      mov              qword ptr [rsp + 2992], 2            # result
                        mov              dword ptr [rsp + 2996], 27
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n443_disjunction_α
.Lx546_0:               .quad            .Lx546_0_s
.Lx546_0_s:             .string          "while write(move(1)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n443_disjunction_α:     mov              qword ptr [rsp + 3008], 0
                        mov              qword ptr [rsp + 3016], 0
                        mov              dword ptr [rsp + 3024], 0;           jmp   n542_lit_integer_α
n443_disjunction_as:    mov              eax, dword ptr [rsp + 3024]
                        cmp              eax, 0;                              jne   .Lx548_0
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 3016], rax;         jmp   n444_call_builtin_icon_α
.Lx548_0:               cmp              eax, 1;                              jne   .Lx548_1
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 3016], rax;         jmp   n444_call_builtin_icon_α
.Lx548_1:                                                                     jmp   n444_call_builtin_icon_α
n443_disjunction_β:     mov              eax, dword ptr [rsp + 3024]
                        cmp              eax, 0;                              je    n545_goto_β
                                                                              jmp   n443_disjunction_af
n443_disjunction_af:    add              dword ptr [rsp + 3024], 1
                        mov              eax, dword ptr [rsp + 3024]
                        cmp              eax, 1;                              je    n541_lit_string_α
                                                                              jmp   n445_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n444_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 2968], rax
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 2952], rax
                        .section         .rodata
.Lrkfn550:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn550]
                        lea              rsi, [rsp + 2944]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx
                        cmp              eax, 104;                            je    n443_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n445_lit_string_α
n444_call_builtin_icon_β:
                                                                              jmp   n443_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n445_lit_string_α:      mov              qword ptr [rsp + 2736], 2            # result
                        mov              dword ptr [rsp + 2740], 33
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n446_disjunction_α
.Lx551_0:               .quad            .Lx551_0_s
.Lx551_0_s:             .string          "&subject := string(&lcase) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n446_disjunction_α:     mov              qword ptr [rsp + 2752], 0
                        mov              qword ptr [rsp + 2760], 0
                        mov              dword ptr [rsp + 2768], 0;           jmp   n536_lit_charset_α
n446_disjunction_as:    mov              eax, dword ptr [rsp + 2768]
                        cmp              eax, 0;                              jne   .Lx553_0
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n447_call_builtin_icon_α
.Lx553_0:               cmp              eax, 1;                              jne   .Lx553_1
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n447_call_builtin_icon_α
.Lx553_1:                                                                     jmp   n447_call_builtin_icon_α
n446_disjunction_β:     mov              eax, dword ptr [rsp + 2768]
                        cmp              eax, 0;                              je    n446_disjunction_af
                                                                              jmp   n446_disjunction_af
n446_disjunction_af:    add              dword ptr [rsp + 2768], 1
                        mov              eax, dword ptr [rsp + 2768]
                        cmp              eax, 1;                              je    n535_lit_string_α
                                                                              jmp   n448_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n447_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2712], rax
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2696], rax
                        .section         .rodata
.Lrkfn555:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn555]
                        lea              rsi, [rsp + 2688]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                        cmp              eax, 104;                            je    n446_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n448_lit_string_α
n447_call_builtin_icon_β:
                                                                              jmp   n446_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n448_lit_string_α:      mov              qword ptr [rsp + 2400], 2            # result
                        mov              dword ptr [rsp + 2404], 32
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n449_disjunction_α
.Lx556_0:               .quad            .Lx556_0_s
.Lx556_0_s:             .string          "every write(tab(1 to 10)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n449_disjunction_α:     mov              qword ptr [rsp + 2416], 0
                        mov              qword ptr [rsp + 2424], 0
                        mov              dword ptr [rsp + 2432], 0;           jmp   n530_lit_integer_α
n449_disjunction_as:    mov              eax, dword ptr [rsp + 2432]
                        cmp              eax, 0;                              jne   .Lx558_0
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n450_call_builtin_icon_α
.Lx558_0:               cmp              eax, 1;                              jne   .Lx558_1
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n450_call_builtin_icon_α
.Lx558_1:                                                                     jmp   n450_call_builtin_icon_α
n449_disjunction_β:     mov              eax, dword ptr [rsp + 2432]
                        cmp              eax, 0;                              je    n449_disjunction_af
                                                                              jmp   n449_disjunction_af
n449_disjunction_af:    add              dword ptr [rsp + 2432], 1
                        mov              eax, dword ptr [rsp + 2432]
                        cmp              eax, 1;                              je    n529_lit_string_α
                                                                              jmp   n451_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n450_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2376], rax
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2360], rax
                        .section         .rodata
.Lrkfn560:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn560]
                        lea              rsi, [rsp + 2352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              eax, 104;                            je    n449_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n451_lit_string_α
n450_call_builtin_icon_β:
                                                                              jmp   n449_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n451_lit_string_α:      mov              qword ptr [rsp + 2160], 2            # result
                        mov              dword ptr [rsp + 2164], 13
                        mov              rax, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n452_disjunction_α
.Lx561_0:               .quad            .Lx561_0_s
.Lx561_0_s:             .string          "pos(0) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n452_disjunction_α:     mov              qword ptr [rsp + 2176], 0
                        mov              qword ptr [rsp + 2184], 0
                        mov              dword ptr [rsp + 2192], 0;           jmp   n525_lit_integer_α
n452_disjunction_as:    mov              eax, dword ptr [rsp + 2192]
                        cmp              eax, 0;                              jne   .Lx563_0
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n453_call_builtin_icon_α
.Lx563_0:               cmp              eax, 1;                              jne   .Lx563_1
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n453_call_builtin_icon_α
.Lx563_1:                                                                     jmp   n453_call_builtin_icon_α
n452_disjunction_β:     mov              eax, dword ptr [rsp + 2192]
                        cmp              eax, 0;                              je    n452_disjunction_af
                                                                              jmp   n452_disjunction_af
n452_disjunction_af:    add              dword ptr [rsp + 2192], 1
                        mov              eax, dword ptr [rsp + 2192]
                        cmp              eax, 1;                              je    n524_lit_string_α
                                                                              jmp   n454_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n453_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2136], rax
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2120], rax
                        .section         .rodata
.Lrkfn565:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn565]
                        lea              rsi, [rsp + 2112]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              eax, 104;                            je    n452_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n454_lit_string_α
n453_call_builtin_icon_β:
                                                                              jmp   n452_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n454_lit_string_α:      mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], 14
                        mov              rax, qword ptr [rip + .Lx566_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n455_disjunction_α
.Lx566_0:               .quad            .Lx566_0_s
.Lx566_0_s:             .string          "pos(15) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n455_disjunction_α:     mov              qword ptr [rsp + 1936], 0
                        mov              qword ptr [rsp + 1944], 0
                        mov              dword ptr [rsp + 1952], 0;           jmp   n521_lit_integer_α
n455_disjunction_as:    mov              eax, dword ptr [rsp + 1952]
                        cmp              eax, 0;                              jne   .Lx568_0
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n456_call_builtin_icon_α
.Lx568_0:               cmp              eax, 1;                              jne   .Lx568_1
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n456_call_builtin_icon_α
.Lx568_1:                                                                     jmp   n456_call_builtin_icon_α
n455_disjunction_β:     mov              eax, dword ptr [rsp + 1952]
                        cmp              eax, 0;                              je    n455_disjunction_af
                                                                              jmp   n455_disjunction_af
n455_disjunction_af:    add              dword ptr [rsp + 1952], 1
                        mov              eax, dword ptr [rsp + 1952]
                        cmp              eax, 1;                              je    n520_lit_string_α
                                                                              jmp   n457_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n456_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1896], rax
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1880], rax
                        .section         .rodata
.Lrkfn570:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn570]
                        lea              rsi, [rsp + 1872]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              eax, 104;                            je    n455_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n457_lit_string_α
n456_call_builtin_icon_β:
                                                                              jmp   n455_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n457_lit_string_α:      mov              qword ptr [rsp + 1664], 2            # result
                        mov              dword ptr [rsp + 1668], 33
                        mov              rax, qword ptr [rip + .Lx571_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n458_disjunction_α
.Lx571_0:               .quad            .Lx571_0_s
.Lx571_0_s:             .string          "&subject := string(&lcase) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n458_disjunction_α:     mov              qword ptr [rsp + 1680], 0
                        mov              qword ptr [rsp + 1688], 0
                        mov              dword ptr [rsp + 1696], 0;           jmp   n516_lit_charset_α
n458_disjunction_as:    mov              eax, dword ptr [rsp + 1696]
                        cmp              eax, 0;                              jne   .Lx573_0
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n459_call_builtin_icon_α
.Lx573_0:               cmp              eax, 1;                              jne   .Lx573_1
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n459_call_builtin_icon_α
.Lx573_1:                                                                     jmp   n459_call_builtin_icon_α
n458_disjunction_β:     mov              eax, dword ptr [rsp + 1696]
                        cmp              eax, 0;                              je    n458_disjunction_af
                                                                              jmp   n458_disjunction_af
n458_disjunction_af:    add              dword ptr [rsp + 1696], 1
                        mov              eax, dword ptr [rsp + 1696]
                        cmp              eax, 1;                              je    n515_lit_string_α
                                                                              jmp   n460_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n459_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1640], rax
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1624], rax
                        .section         .rodata
.Lrkfn575:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn575]
                        lea              rsi, [rsp + 1616]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              eax, 104;                            je    n458_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n460_lit_string_α
n459_call_builtin_icon_β:
                                                                              jmp   n458_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n460_lit_string_α:      mov              qword ptr [rsp + 1424], 2            # result
                        mov              dword ptr [rsp + 1428], 13
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n461_disjunction_α
.Lx576_0:               .quad            .Lx576_0_s
.Lx576_0_s:             .string          "pos(1) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n461_disjunction_α:     mov              qword ptr [rsp + 1440], 0
                        mov              qword ptr [rsp + 1448], 0
                        mov              dword ptr [rsp + 1456], 0;           jmp   n512_lit_integer_α
n461_disjunction_as:    mov              eax, dword ptr [rsp + 1456]
                        cmp              eax, 0;                              jne   .Lx578_0
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n462_call_builtin_icon_α
.Lx578_0:               cmp              eax, 1;                              jne   .Lx578_1
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n462_call_builtin_icon_α
.Lx578_1:                                                                     jmp   n462_call_builtin_icon_α
n461_disjunction_β:     mov              eax, dword ptr [rsp + 1456]
                        cmp              eax, 0;                              je    n461_disjunction_af
                                                                              jmp   n461_disjunction_af
n461_disjunction_af:    add              dword ptr [rsp + 1456], 1
                        mov              eax, dword ptr [rsp + 1456]
                        cmp              eax, 1;                              je    n511_lit_string_α
                                                                              jmp   n463_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n462_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1400], rax
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1384], rax
                        .section         .rodata
.Lrkfn580:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn580]
                        lea              rsi, [rsp + 1376]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              eax, 104;                            je    n461_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n463_lit_string_α
n462_call_builtin_icon_β:
                                                                              jmp   n461_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n463_lit_string_α:      mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 43
                        mov              rax, qword ptr [rip + .Lx581_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n464_disjunction_α
.Lx581_0:               .quad            .Lx581_0_s
.Lx581_0_s:             .string          "every write(\"abcdef\" ? tab(1 to 10)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n464_disjunction_α:     mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              dword ptr [rsp + 1056], 0;           jmp   n502_lit_string_α
n464_disjunction_as:    mov              eax, dword ptr [rsp + 1056]
                        cmp              eax, 0;                              jne   .Lx583_0
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n465_call_builtin_icon_α
.Lx583_0:               cmp              eax, 1;                              jne   .Lx583_1
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n465_call_builtin_icon_α
.Lx583_1:                                                                     jmp   n465_call_builtin_icon_α
n464_disjunction_β:     mov              eax, dword ptr [rsp + 1056]
                        cmp              eax, 0;                              je    n464_disjunction_af
                                                                              jmp   n464_disjunction_af
n464_disjunction_af:    add              dword ptr [rsp + 1056], 1
                        mov              eax, dword ptr [rsp + 1056]
                        cmp              eax, 1;                              je    n501_lit_string_α
                                                                              jmp   n466_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n465_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lrkfn585:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn585]
                        lea              rsi, [rsp + 976]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              eax, 104;                            je    n464_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n466_lit_string_α
n465_call_builtin_icon_β:
                                                                              jmp   n464_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n466_lit_string_α:      mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 53
                        mov              rax, qword ptr [rip + .Lx586_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n467_disjunction_α
.Lx586_0:               .quad            .Lx586_0_s
.Lx586_0_s:             .string          "every write(\"abcde\" ? while move(2) ? move(1)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n467_disjunction_α:     mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              dword ptr [rsp + 640], 0;            jmp   n490_lit_string_α
n467_disjunction_as:    mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              jne   .Lx588_0
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax;          jmp   n468_call_builtin_icon_α
.Lx588_0:               cmp              eax, 1;                              jne   .Lx588_1
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 632], rax;          jmp   n468_call_builtin_icon_α
.Lx588_1:                                                                     jmp   n468_call_builtin_icon_α
n467_disjunction_β:     mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 0;                              je    n467_disjunction_af
                                                                              jmp   n467_disjunction_af
n467_disjunction_af:    add              dword ptr [rsp + 640], 1
                        mov              eax, dword ptr [rsp + 640]
                        cmp              eax, 1;                              je    n489_lit_string_α
                                                                              jmp   n469_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n468_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn590:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn590]
                        lea              rsi, [rsp + 560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 104;                            je    n467_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n469_lit_string_α
n468_call_builtin_icon_β:
                                                                              jmp   n467_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n469_lit_string_α:      mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 20
                        mov              rax, qword ptr [rip + .Lx591_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n470_disjunction_α
.Lx591_0:               .quad            .Lx591_0_s
.Lx591_0_s:             .string          "s := \"abcdef\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n470_disjunction_α:     mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              dword ptr [rsp + 432], 0;            jmp   n485_lit_string_α
n470_disjunction_as:    mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 0;                              jne   .Lx593_0
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax;          jmp   n471_call_builtin_icon_α
.Lx593_0:               cmp              eax, 1;                              jne   .Lx593_1
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 424], rax;          jmp   n471_call_builtin_icon_α
.Lx593_1:                                                                     jmp   n471_call_builtin_icon_α
n470_disjunction_β:     mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 0;                              je    n470_disjunction_af
                                                                              jmp   n470_disjunction_af
n470_disjunction_af:    add              dword ptr [rsp + 432], 1
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 1;                              je    n484_lit_string_α
                                                                              jmp   n472_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n471_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn595:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn595]
                        lea              rsi, [rsp + 352]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              eax, 104;                            je    n470_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n472_lit_string_α
n471_call_builtin_icon_β:
                                                                              jmp   n470_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_string_α:      mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 20
                        mov              rax, qword ptr [rip + .Lx596_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n473_disjunction_α
.Lx596_0:               .quad            .Lx596_0_s
.Lx596_0_s:             .string          "s ?:= move(3) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n473_disjunction_α:     mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              dword ptr [rsp + 96], 0;             jmp   n476_var_α
n473_disjunction_as:    mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              jne   .Lx598_0
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n474_call_builtin_icon_α
.Lx598_0:               cmp              eax, 1;                              jne   .Lx598_1
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 88], rax;           jmp   n474_call_builtin_icon_α
.Lx598_1:                                                                     jmp   n474_call_builtin_icon_α
n473_disjunction_β:     mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              je    n473_disjunction_af
                                                                              jmp   n473_disjunction_af
n473_disjunction_af:    add              dword ptr [rsp + 96], 1
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 1;                              je    n475_lit_string_α
                                                                              jmp   proc_p3_ω
#-----------------------------------------------------------------------------------------------------------------------
n474_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn600:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn600]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    n473_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   proc_p3_γ
n474_call_builtin_icon_β:
                                                                              jmp   n473_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n475_lit_string_α:      mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 4
                        mov              rax, qword ptr [rip + .Lx601_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n473_disjunction_as
n475_lit_string_β:                                                            jmp   n473_disjunction_af
.Lx601_0:               .quad            .Lx601_0_s
.Lx601_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n476_var_α:             mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 312], rax;          jmp   n477_scan_enter_α
n476_var_β:                                                                   jmp   n473_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n477_scan_enter_α:      mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n478_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_integer_α:     mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx606_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n479_scan_move_α
.Lx606_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n479_scan_move_α:       sub              rsp, 16
                        mov              rax, 3
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jge   .Lx608_239
                        add              rsp, 16;                             jmp   n483_scan_α
.Lx608_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx608_240
                        add              rsp, 16;                             jmp   n483_scan_α
.Lx608_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n480_scan_α
n479_scan_move_β:       mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n483_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n480_scan_α:            mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 192]
                        mov              r14, qword ptr [rsp + 200]
                        mov              r15, qword ptr [rsp + 208];          jmp   n481_assign_α
n480_scan_β:                                                                  jmp   n473_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n481_assign_α:          mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n482_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n482_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn613:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn613]
                        lea              rsi, [rsp + 128]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 104;                            je    n473_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n473_disjunction_as
n482_call_builtin_icon_β:
                                                                              jmp   n473_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n483_scan_α:            lea              rdi, [rsp + 192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 192]
                        mov              r14, qword ptr [rsp + 200]
                        mov              r15, qword ptr [rsp + 208];          jmp   n473_disjunction_af
n483_scan_β:                                                                  jmp   n473_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n484_lit_string_α:      mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 4
                        mov              rax, qword ptr [rip + .Lx616_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n470_disjunction_as
n484_lit_string_β:                                                            jmp   n470_disjunction_af
.Lx616_0:               .quad            .Lx616_0_s
.Lx616_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n485_lit_string_α:      mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 6
                        mov              rax, qword ptr [rip + .Lx617_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n486_assign_α
n485_lit_string_β:                                                            jmp   n470_disjunction_af
.Lx617_0:               .quad            .Lx617_0_s
.Lx617_0_s:             .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n486_assign_α:          mov              rax, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n487_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n487_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        .section         .rodata
.Lrkfn620:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn620]
                        lea              rsi, [rsp + 464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 104;                            je    n470_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n470_disjunction_as
n487_call_builtin_icon_β:
                                                                              jmp   n470_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n488_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn622:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn622]
                        lea              rsi, [rsp + 672]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              eax, 104;                            je    n467_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n467_disjunction_as
n488_call_builtin_icon_β:
                                                                              jmp   n467_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n489_lit_string_α:      mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 4
                        mov              rax, qword ptr [rip + .Lx623_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n467_disjunction_as
n489_lit_string_β:                                                            jmp   n467_disjunction_af
.Lx623_0:               .quad            .Lx623_0_s
.Lx623_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_string_α:      mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 5
                        mov              rax, qword ptr [rip + .Lx624_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n491_scan_enter_α
n490_lit_string_β:                                                            jmp   n467_disjunction_af
.Lx624_0:               .quad            .Lx624_0_s
.Lx624_0_s:             .string          "abcde"
#-----------------------------------------------------------------------------------------------------------------------
n491_scan_enter_α:      mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n492_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n492_lit_integer_α:     mov              qword ptr [rsp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Lx627_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n493_scan_move_α
.Lx627_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n493_scan_move_α:       sub              rsp, 16
                        mov              rax, 2
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jge   .Lx629_239
                        add              rsp, 16;                             jmp   n499_scan_α
.Lx629_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx629_240
                        add              rsp, 16;                             jmp   n499_scan_α
.Lx629_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n494_scan_enter_α
n493_scan_move_β:       mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n499_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n494_scan_enter_α:      mov              rdi, qword ptr [rsp + 880]
                        mov              rsi, qword ptr [rsp + 888]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n495_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n495_lit_integer_α:     mov              qword ptr [rsp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Lx632_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n496_scan_move_α
.Lx632_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n496_scan_move_α:       sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jge   .Lx634_239
                        add              rsp, 16;                             jmp   n498_scan_α
.Lx634_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx634_240
                        add              rsp, 16;                             jmp   n498_scan_α
.Lx634_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n497_scan_α
n496_scan_move_β:       mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n498_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n497_scan_α:            mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax
                        lea              rdi, [rsp + 768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 768]
                        mov              r14, qword ptr [rsp + 776]
                        mov              r15, qword ptr [rsp + 784];          jmp   n492_lit_integer_α
n497_scan_β:                                                                  jmp   n499_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n498_scan_α:            lea              rdi, [rsp + 768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 768]
                        mov              r14, qword ptr [rsp + 776]
                        mov              r15, qword ptr [rsp + 784];          jmp   n499_scan_α
n498_scan_β:                                                                  jmp   n499_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n499_scan_α:            lea              rdi, [rsp + 704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 704]
                        mov              r14, qword ptr [rsp + 712]
                        mov              r15, qword ptr [rsp + 720];          jmp   n467_disjunction_af
n499_scan_β:                                                                  jmp   n467_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n500_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn642:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn642]
                        lea              rsi, [rsp + 1088]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              eax, 104;                            je    n464_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n464_disjunction_as
n500_call_builtin_icon_β:
                                                                              jmp   n464_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n501_lit_string_α:      mov              qword ptr [rsp + 1344], 2            # result
                        mov              dword ptr [rsp + 1348], 4
                        mov              rax, qword ptr [rip + .Lx643_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n464_disjunction_as
n501_lit_string_β:                                                            jmp   n464_disjunction_af
.Lx643_0:               .quad            .Lx643_0_s
.Lx643_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n502_lit_string_α:      mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 6
                        mov              rax, qword ptr [rip + .Lx644_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n503_scan_enter_α
n502_lit_string_β:                                                            jmp   n464_disjunction_af
.Lx644_0:               .quad            .Lx644_0_s
.Lx644_0_s:             .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n503_scan_enter_α:      mov              rdi, qword ptr [rsp + 1328]
                        mov              rsi, qword ptr [rsp + 1336]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n504_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n504_lit_integer_α:     mov              qword ptr [rsp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Lx647_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n505_lit_integer_α
.Lx647_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n505_lit_integer_α:     mov              qword ptr [rsp + 1312], 3            # result
                        mov              rax, qword ptr [rip + .Lx648_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n506_to_α
.Lx648_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n506_to_α:              mov              rdi, qword ptr [rsp + 1296]
                        mov              rsi, qword ptr [rsp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1296], 3
                        mov              qword ptr [rsp + 1304], rax
                        mov              rdi, qword ptr [rsp + 1312]
                        mov              rsi, qword ptr [rsp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1312], 3
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1280], rax
.Lx650_0:               mov              rax, qword ptr [rsp + 1280]
                        mov              rcx, qword ptr [rsp + 1320]
                        cmp              rax, rcx;                            jg    n510_scan_α
                        mov              qword ptr [rsp + 1264], 3
                        mov              qword ptr [rsp + 1272], rax;         jmp   n507_scan_tab_α
n506_to_β:              inc              qword ptr [rsp + 1280];              jmp   .Lx650_0
#-----------------------------------------------------------------------------------------------------------------------
n507_scan_tab_α:        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 1272]
                        cmp              rax, 1;                              jge   .Lx652_0
                        add              rax, r15
                        add              rax, 1
.Lx652_0:               cmp              rax, 1;                              jge   .Lx652_239
                        add              rsp, 16;                             jmp   n506_to_β
.Lx652_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx652_240
                        add              rsp, 16;                             jmp   n506_to_β
.Lx652_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n508_scan_α
n507_scan_tab_β:        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n506_to_β
#-----------------------------------------------------------------------------------------------------------------------
n508_scan_α:            mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1208], rax
                        lea              rdi, [rsp + 1168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 1168]
                        mov              r14, qword ptr [rsp + 1176]
                        mov              r15, qword ptr [rsp + 1184];         jmp   n509_call_builtin_icon_α
n508_scan_β:                                                                  jmp   n464_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n509_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1128], rax
                        .section         .rodata
.Lrkfn656:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn656]
                        lea              rsi, [rsp + 1120]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              eax, 104;                            je    n464_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n464_disjunction_as
n509_call_builtin_icon_β:
                                                                              jmp   n464_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n510_scan_α:            lea              rdi, [rsp + 1168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 1168]
                        mov              r14, qword ptr [rsp + 1176]
                        mov              r15, qword ptr [rsp + 1184];         jmp   n464_disjunction_af
n510_scan_β:                                                                  jmp   n464_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n511_lit_string_α:      mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 4
                        mov              rax, qword ptr [rip + .Lx659_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n461_disjunction_as
n511_lit_string_β:                                                            jmp   n461_disjunction_af
.Lx659_0:               .quad            .Lx659_0_s
.Lx659_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n512_lit_integer_α:     mov              qword ptr [rsp + 1568], 3            # result
                        mov              rax, qword ptr [rip + .Lx660_0]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n513_call_α
n512_lit_integer_β:                                                           jmp   n461_disjunction_af
.Lx660_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n513_call_α:            mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1544], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn248:          .string          "pos"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn248]
                        lea              rsi, [rsp + 1536]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n461_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n514_call_builtin_icon_α
n513_call_β:                                                                  jmp   n461_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n514_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1496], rax
                        .section         .rodata
.Lrkfn663:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn663]
                        lea              rsi, [rsp + 1488]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              eax, 104;                            je    n461_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n461_disjunction_as
n514_call_builtin_icon_β:
                                                                              jmp   n461_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n515_lit_string_α:      mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], 4
                        mov              rax, qword ptr [rip + .Lx664_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n458_disjunction_as
n515_lit_string_β:                                                            jmp   n458_disjunction_af
.Lx664_0:               .quad            .Lx664_0_s
.Lx664_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n516_lit_charset_α:     mov              qword ptr [rsp + 1824], 2            # result
                        mov              dword ptr [rsp + 1828], -1
                        mov              rax, qword ptr [rip + .Lx665_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n517_call_builtin_icon_α
n516_lit_charset_β:                                                           jmp   n458_disjunction_af
.Lx665_0:               .quad            .Lx665_0_s
.Lx665_0_s:             .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n517_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1800], rax
                        .section         .rodata
.Lrkfn667:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn667]
                        lea              rsi, [rsp + 1792]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                        cmp              eax, 104;                            je    n458_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n518_keyword_assign_α
n517_call_builtin_icon_β:
                                                                              jmp   n458_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n518_keyword_assign_α:  mov              rdi, qword ptr [rsp + 1776]
                        mov              rsi, qword ptr [rsp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_subject_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n458_disjunction_af
                        mov              qword ptr [rsp + 1760], 2
                        mov              qword ptr [rsp + 1768], rax
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n519_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n519_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1736], rax
                        .section         .rodata
.Lrkfn670:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn670]
                        lea              rsi, [rsp + 1728]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              eax, 104;                            je    n458_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n458_disjunction_as
n519_call_builtin_icon_β:
                                                                              jmp   n458_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n520_lit_string_α:      mov              qword ptr [rsp + 2080], 2            # result
                        mov              dword ptr [rsp + 2084], 4
                        mov              rax, qword ptr [rip + .Lx671_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n455_disjunction_as
n520_lit_string_β:                                                            jmp   n455_disjunction_af
.Lx671_0:               .quad            .Lx671_0_s
.Lx671_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n521_lit_integer_α:     mov              qword ptr [rsp + 2064], 3            # result
                        mov              rax, qword ptr [rip + .Lx672_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n522_call_α
n521_lit_integer_β:                                                           jmp   n455_disjunction_af
.Lx672_0:               .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n522_call_α:            mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2040], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn257:          .string          "pos"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn257]
                        lea              rsi, [rsp + 2032]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n455_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n523_call_builtin_icon_α
n522_call_β:                                                                  jmp   n455_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n523_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1992], rax
                        .section         .rodata
.Lrkfn675:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn675]
                        lea              rsi, [rsp + 1984]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              eax, 104;                            je    n455_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n455_disjunction_as
n523_call_builtin_icon_β:
                                                                              jmp   n455_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n524_lit_string_α:      mov              qword ptr [rsp + 2320], 2            # result
                        mov              dword ptr [rsp + 2324], 4
                        mov              rax, qword ptr [rip + .Lx676_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n452_disjunction_as
n524_lit_string_β:                                                            jmp   n452_disjunction_af
.Lx676_0:               .quad            .Lx676_0_s
.Lx676_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n525_lit_integer_α:     mov              qword ptr [rsp + 2304], 3            # result
                        mov              rax, qword ptr [rip + .Lx677_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n526_call_α
n525_lit_integer_β:                                                           jmp   n452_disjunction_af
.Lx677_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n526_call_α:            mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2280], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn261:          .string          "pos"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn261]
                        lea              rsi, [rsp + 2272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n452_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n527_call_builtin_icon_α
n526_call_β:                                                                  jmp   n452_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n527_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2232], rax
                        .section         .rodata
.Lrkfn680:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn680]
                        lea              rsi, [rsp + 2224]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              eax, 104;                            je    n452_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n452_disjunction_as
n527_call_builtin_icon_β:
                                                                              jmp   n452_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n528_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn682:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn682]
                        lea              rsi, [rsp + 2464]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx
                        cmp              eax, 104;                            je    n449_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n449_disjunction_as
n528_call_builtin_icon_β:
                                                                              jmp   n449_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n529_lit_string_α:      mov              qword ptr [rsp + 2656], 2            # result
                        mov              dword ptr [rsp + 2660], 4
                        mov              rax, qword ptr [rip + .Lx683_0]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n449_disjunction_as
n529_lit_string_β:                                                            jmp   n449_disjunction_af
.Lx683_0:               .quad            .Lx683_0_s
.Lx683_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n530_lit_integer_α:     mov              qword ptr [rsp + 2624], 3            # result
                        mov              rax, qword ptr [rip + .Lx684_0]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n531_lit_integer_α
n530_lit_integer_β:                                                           jmp   n449_disjunction_af
.Lx684_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n531_lit_integer_α:     mov              qword ptr [rsp + 2640], 3            # result
                        mov              rax, qword ptr [rip + .Lx685_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n532_to_α
.Lx685_0:               .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n532_to_α:              mov              rdi, qword ptr [rsp + 2624]
                        mov              rsi, qword ptr [rsp + 2632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2624], 3
                        mov              qword ptr [rsp + 2632], rax
                        mov              rdi, qword ptr [rsp + 2640]
                        mov              rsi, qword ptr [rsp + 2648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2640], 3
                        mov              qword ptr [rsp + 2648], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2608], rax
.Lx687_0:               mov              rax, qword ptr [rsp + 2608]
                        mov              rcx, qword ptr [rsp + 2648]
                        cmp              rax, rcx;                            jg    n449_disjunction_af
                        mov              qword ptr [rsp + 2592], 3
                        mov              qword ptr [rsp + 2600], rax;         jmp   n533_call_α
n532_to_β:              inc              qword ptr [rsp + 2608];              jmp   .Lx687_0
#-----------------------------------------------------------------------------------------------------------------------
n533_call_α:            mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2552], rax
                        mov              qword ptr [rsp + 2560], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn268:          .string          "tab"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn268]
                        lea              rsi, [rsp + 2544]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n532_to_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n534_call_builtin_icon_α
n533_call_β:            mov              r14, qword ptr [rsp + 2560];         jmp   n532_to_β
#-----------------------------------------------------------------------------------------------------------------------
n534_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2504], rax
                        .section         .rodata
.Lrkfn690:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn690]
                        lea              rsi, [rsp + 2496]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        cmp              eax, 104;                            je    n532_to_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n532_to_β
n534_call_builtin_icon_β:
                                                                              jmp   n532_to_β
#-----------------------------------------------------------------------------------------------------------------------
n535_lit_string_α:      mov              qword ptr [rsp + 2912], 2            # result
                        mov              dword ptr [rsp + 2916], 4
                        mov              rax, qword ptr [rip + .Lx691_0]
                        mov              qword ptr [rsp + 2920], rax;         jmp   n446_disjunction_as
n535_lit_string_β:                                                            jmp   n446_disjunction_af
.Lx691_0:               .quad            .Lx691_0_s
.Lx691_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n536_lit_charset_α:     mov              qword ptr [rsp + 2896], 2            # result
                        mov              dword ptr [rsp + 2900], -1
                        mov              rax, qword ptr [rip + .Lx692_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n537_call_builtin_icon_α
n536_lit_charset_β:                                                           jmp   n446_disjunction_af
.Lx692_0:               .quad            .Lx692_0_s
.Lx692_0_s:             .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n537_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2872], rax
                        .section         .rodata
.Lrkfn694:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn694]
                        lea              rsi, [rsp + 2864]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2848], rax
                        mov              qword ptr [rsp + 2856], rdx
                        cmp              eax, 104;                            je    n446_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n538_keyword_assign_α
n537_call_builtin_icon_β:
                                                                              jmp   n446_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n538_keyword_assign_α:  mov              rdi, qword ptr [rsp + 2848]
                        mov              rsi, qword ptr [rsp + 2856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_subject_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n446_disjunction_af
                        mov              qword ptr [rsp + 2832], 2
                        mov              qword ptr [rsp + 2840], rax
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n539_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n539_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2832]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2840]
                        mov              qword ptr [rsp + 2808], rax
                        .section         .rodata
.Lrkfn697:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn697]
                        lea              rsi, [rsp + 2800]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              eax, 104;                            je    n446_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n446_disjunction_as
n539_call_builtin_icon_β:
                                                                              jmp   n446_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n540_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn699:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn699]
                        lea              rsi, [rsp + 3056]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx
                        cmp              eax, 104;                            je    n542_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n443_disjunction_as
n540_call_builtin_icon_β:
                                                                              jmp   n542_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n541_lit_string_α:      mov              qword ptr [rsp + 3200], 2            # result
                        mov              dword ptr [rsp + 3204], 4
                        mov              rax, qword ptr [rip + .Lx700_0]
                        mov              qword ptr [rsp + 3208], rax;         jmp   n443_disjunction_as
n541_lit_string_β:                                                            jmp   n443_disjunction_af
.Lx700_0:               .quad            .Lx700_0_s
.Lx700_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n542_lit_integer_α:     mov              qword ptr [rsp + 3184], 3            # result
                        mov              rax, qword ptr [rip + .Lx701_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n543_call_α
n542_lit_integer_β:                                                           jmp   n443_disjunction_af
.Lx701_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n543_call_α:            mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3144], rax
                        mov              qword ptr [rsp + 3152], r14
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lbynamefn278:          .string          "move"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn278]
                        lea              rsi, [rsp + 3136]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104;                            je    n443_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n544_call_builtin_icon_α
n543_call_β:            mov              r14, qword ptr [rsp + 3152];         jmp   n443_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n544_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 3120]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3096], rax
                        .section         .rodata
.Lrkfn704:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn704]
                        lea              rsi, [rsp + 3088]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx
                        cmp              eax, 104;                            je    n443_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n542_lit_integer_α
n544_call_builtin_icon_β:
                                                                              jmp   n443_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n545_goto_α:                                                                  jmp   n542_lit_integer_α
n545_goto_β:                                                                  jmp   n542_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_β:
                                                                              jmp   proc_p3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 3256]
                        add              rsp, 3280;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_ω:
                        mov              rcx, qword ptr [rsp + 3264]
                        add              rsp, 3280;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_p3_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx706_2]
                        lea              rdx, [rip + .Lx706_3];               jmp   proc_p3_α
.Lx706_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx706_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_p4_α
proc_p4_α:
                        sub              rsp, 2304
                        mov              qword ptr [rsp + 2280], rcx
                        mov              qword ptr [rsp + 2288], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_p4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n707_lit_string_α:      mov              qword ptr [rsp + 2096], 2            # result
                        mov              dword ptr [rsp + 2100], 20
                        mov              rax, qword ptr [rip + .Lx782_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n708_disjunction_α
.Lx782_0:               .quad            .Lx782_0_s
.Lx782_0_s:             .string          "s := \"abcdef\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n708_disjunction_α:     mov              qword ptr [rsp + 2112], 0
                        mov              qword ptr [rsp + 2120], 0
                        mov              dword ptr [rsp + 2128], 0;           jmp   n776_lit_string_α
n708_disjunction_as:    mov              eax, dword ptr [rsp + 2128]
                        cmp              eax, 0;                              jne   .Lx784_0
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n709_call_builtin_icon_α
.Lx784_0:               cmp              eax, 1;                              jne   .Lx784_1
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n709_call_builtin_icon_α
.Lx784_1:                                                                     jmp   n709_call_builtin_icon_α
n708_disjunction_β:     mov              eax, dword ptr [rsp + 2128]
                        cmp              eax, 0;                              je    n708_disjunction_af
                                                                              jmp   n708_disjunction_af
n708_disjunction_af:    add              dword ptr [rsp + 2128], 1
                        mov              eax, dword ptr [rsp + 2128]
                        cmp              eax, 1;                              je    n775_lit_string_α
                                                                              jmp   n710_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n709_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2072], rax
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2056], rax
                        .section         .rodata
.Lrkfn786:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn786]
                        lea              rsi, [rsp + 2048]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        cmp              eax, 104;                            je    n708_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n710_lit_string_α
n709_call_builtin_icon_β:
                                                                              jmp   n708_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n710_lit_string_α:      mov              qword ptr [rsp + 1728], 2            # result
                        mov              dword ptr [rsp + 1732], 38
                        mov              rax, qword ptr [rip + .Lx787_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n711_disjunction_α
.Lx787_0:               .quad            .Lx787_0_s
.Lx787_0_s:             .string          "every write(s ?:= upto(&lcase)) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n711_disjunction_α:     mov              qword ptr [rsp + 1744], 0
                        mov              qword ptr [rsp + 1752], 0
                        mov              dword ptr [rsp + 1760], 0;           jmp   n768_var_α
n711_disjunction_as:    mov              eax, dword ptr [rsp + 1760]
                        cmp              eax, 0;                              jne   .Lx789_0
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n712_call_builtin_icon_α
.Lx789_0:               cmp              eax, 1;                              jne   .Lx789_1
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n712_call_builtin_icon_α
.Lx789_1:                                                                     jmp   n712_call_builtin_icon_α
n711_disjunction_β:     mov              eax, dword ptr [rsp + 1760]
                        cmp              eax, 0;                              je    n711_disjunction_af
                                                                              jmp   n711_disjunction_af
n711_disjunction_af:    add              dword ptr [rsp + 1760], 1
                        mov              eax, dword ptr [rsp + 1760]
                        cmp              eax, 1;                              je    n767_lit_string_α
                                                                              jmp   n713_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n712_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1704], rax
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1688], rax
                        .section         .rodata
.Lrkfn791:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn791]
                        lea              rsi, [rsp + 1680]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              eax, 104;                            je    n711_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n713_lit_string_α
n712_call_builtin_icon_β:
                                                                              jmp   n711_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n713_lit_string_α:      mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 49
                        mov              rax, qword ptr [rip + .Lx792_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n714_disjunction_α
.Lx792_0:               .quad            .Lx792_0_s
.Lx792_0_s:             .string          "s := \"this is the time to work it all out\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n714_disjunction_α:     mov              qword ptr [rsp + 1536], 0
                        mov              qword ptr [rsp + 1544], 0
                        mov              dword ptr [rsp + 1552], 0;           jmp   n763_lit_string_α
n714_disjunction_as:    mov              eax, dword ptr [rsp + 1552]
                        cmp              eax, 0;                              jne   .Lx794_0
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n715_call_builtin_icon_α
.Lx794_0:               cmp              eax, 1;                              jne   .Lx794_1
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n715_call_builtin_icon_α
.Lx794_1:                                                                     jmp   n715_call_builtin_icon_α
n714_disjunction_β:     mov              eax, dword ptr [rsp + 1552]
                        cmp              eax, 0;                              je    n714_disjunction_af
                                                                              jmp   n714_disjunction_af
n714_disjunction_af:    add              dword ptr [rsp + 1552], 1
                        mov              eax, dword ptr [rsp + 1552]
                        cmp              eax, 1;                              je    n762_lit_string_α
                                                                              jmp   n716_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n715_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1496], rax
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1480], rax
                        .section         .rodata
.Lrkfn796:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn796]
                        lea              rsi, [rsp + 1472]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              eax, 104;                            je    n714_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n716_lit_string_α
n715_call_builtin_icon_β:
                                                                              jmp   n714_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n716_lit_string_α:      mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 38
                        mov              rax, qword ptr [rip + .Lx797_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n717_disjunction_α
.Lx797_0:               .quad            .Lx797_0_s
.Lx797_0_s:             .string          "every write(s ? tab(find(\" \"))) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n717_disjunction_α:     mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              dword ptr [rsp + 1168], 0;           jmp   n755_var_α
n717_disjunction_as:    mov              eax, dword ptr [rsp + 1168]
                        cmp              eax, 0;                              jne   .Lx799_0
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n718_call_builtin_icon_α
.Lx799_0:               cmp              eax, 1;                              jne   .Lx799_1
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n718_call_builtin_icon_α
.Lx799_1:                                                                     jmp   n718_call_builtin_icon_α
n717_disjunction_β:     mov              eax, dword ptr [rsp + 1168]
                        cmp              eax, 0;                              je    n717_disjunction_af
                                                                              jmp   n717_disjunction_af
n717_disjunction_af:    add              dword ptr [rsp + 1168], 1
                        mov              eax, dword ptr [rsp + 1168]
                        cmp              eax, 1;                              je    n754_lit_string_α
                                                                              jmp   n719_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n718_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1096], rax
                        .section         .rodata
.Lrkfn801:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn801]
                        lea              rsi, [rsp + 1088]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              eax, 104;                            je    n717_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n719_lit_string_α
n718_call_builtin_icon_β:
                                                                              jmp   n717_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n719_lit_string_α:      mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 20
                        mov              rax, qword ptr [rip + .Lx802_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n720_disjunction_α
.Lx802_0:               .quad            .Lx802_0_s
.Lx802_0_s:             .string          "s := \"xxxxxx\" ----> "
#-----------------------------------------------------------------------------------------------------------------------
n720_disjunction_α:     mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              dword ptr [rsp + 960], 0;            jmp   n750_lit_string_α
n720_disjunction_as:    mov              eax, dword ptr [rsp + 960]
                        cmp              eax, 0;                              jne   .Lx804_0
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax;          jmp   n721_call_builtin_icon_α
.Lx804_0:               cmp              eax, 1;                              jne   .Lx804_1
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 952], rax;          jmp   n721_call_builtin_icon_α
.Lx804_1:                                                                     jmp   n721_call_builtin_icon_α
n720_disjunction_β:     mov              eax, dword ptr [rsp + 960]
                        cmp              eax, 0;                              je    n720_disjunction_af
                                                                              jmp   n720_disjunction_af
n720_disjunction_af:    add              dword ptr [rsp + 960], 1
                        mov              eax, dword ptr [rsp + 960]
                        cmp              eax, 1;                              je    n749_lit_string_α
                                                                              jmp   n722_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n721_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 888], rax
                        .section         .rodata
.Lrkfn806:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn806]
                        lea              rsi, [rsp + 880]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              eax, 104;                            je    n720_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n722_lit_string_α
n721_call_builtin_icon_β:
                                                                              jmp   n720_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n722_lit_string_α:      mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 36
                        mov              rax, qword ptr [rip + .Lx807_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n723_disjunction_α
.Lx807_0:               .quad            .Lx807_0_s
.Lx807_0_s:             .string          "every s ? write(=(\"a\" | \"x\")) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n723_disjunction_α:     mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              dword ptr [rsp + 528], 0;            jmp   n740_var_α
n723_disjunction_as:    mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 0;                              jne   .Lx809_0
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax;          jmp   n724_call_builtin_icon_α
.Lx809_0:               cmp              eax, 1;                              jne   .Lx809_1
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 520], rax;          jmp   n724_call_builtin_icon_α
.Lx809_1:                                                                     jmp   n724_call_builtin_icon_α
n723_disjunction_β:     mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 0;                              je    n723_disjunction_af
                                                                              jmp   n723_disjunction_af
n723_disjunction_af:    add              dword ptr [rsp + 528], 1
                        mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 1;                              je    n739_lit_string_α
                                                                              jmp   n725_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n724_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn811:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn811]
                        lea              rsi, [rsp + 448]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              eax, 104;                            je    n723_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n725_lit_string_α
n724_call_builtin_icon_β:
                                                                              jmp   n723_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n725_lit_string_α:      mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 52
                        mov              rax, qword ptr [rip + .Lx812_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n726_disjunction_α
.Lx812_0:               .quad            .Lx812_0_s
.Lx812_0_s:             .string          "\"abcdef\" ? (tab(0) & (while write(move(-1)))) ----> "
#-----------------------------------------------------------------------------------------------------------------------
n726_disjunction_α:     mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              dword ptr [rsp + 96], 0;             jmp   n730_lit_string_α
n726_disjunction_as:    mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              jne   .Lx814_0
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 88], rax;           jmp   n727_call_builtin_icon_α
.Lx814_0:               cmp              eax, 1;                              jne   .Lx814_1
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 88], rax;           jmp   n727_call_builtin_icon_α
.Lx814_1:                                                                     jmp   n727_call_builtin_icon_α
n726_disjunction_β:     mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 0;                              je    n726_disjunction_af
                                                                              jmp   n726_disjunction_af
n726_disjunction_af:    add              dword ptr [rsp + 96], 1
                        mov              eax, dword ptr [rsp + 96]
                        cmp              eax, 1;                              je    n729_lit_string_α
                                                                              jmp   proc_p4_ω
#-----------------------------------------------------------------------------------------------------------------------
n727_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn816:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn816]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    n726_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   proc_p4_γ
n727_call_builtin_icon_β:
                                                                              jmp   n726_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n728_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 136], rax
                        .section         .rodata
.Lrkfn818:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn818]
                        lea              rsi, [rsp + 128]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              eax, 104;                            je    n726_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n726_disjunction_as
n728_call_builtin_icon_β:
                                                                              jmp   n726_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n729_lit_string_α:      mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 4
                        mov              rax, qword ptr [rip + .Lx819_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n726_disjunction_as
n729_lit_string_β:                                                            jmp   n726_disjunction_af
.Lx819_0:               .quad            .Lx819_0_s
.Lx819_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n730_lit_string_α:      mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 6
                        mov              rax, qword ptr [rip + .Lx820_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n731_scan_enter_α
n730_lit_string_β:                                                            jmp   n726_disjunction_af
.Lx820_0:               .quad            .Lx820_0_s
.Lx820_0_s:             .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n731_scan_enter_α:      mov              rdi, qword ptr [rsp + 400]
                        mov              rsi, qword ptr [rsp + 408]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n732_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n732_lit_integer_α:     mov              qword ptr [rsp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Lx823_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n733_scan_tab_α
.Lx823_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n733_scan_tab_α:        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx825_0
                        add              rax, r15
                        add              rax, 1
.Lx825_0:               cmp              rax, 1;                              jge   .Lx825_239
                        add              rsp, 16;                             jmp   n737_scan_α
.Lx825_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx825_240
                        add              rsp, 16;                             jmp   n737_scan_α
.Lx825_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n734_lit_integer_α
n733_scan_tab_β:        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n737_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n734_lit_integer_α:     mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Lx826_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n735_scan_move_α
.Lx826_0:               .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n735_scan_move_α:       sub              rsp, 16
                        mov              rax, -1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jge   .Lx828_239
                        add              rsp, 16;                             jmp   n733_scan_tab_β
.Lx828_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx828_240
                        add              rsp, 16;                             jmp   n733_scan_tab_β
.Lx828_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n736_call_builtin_icon_α
n735_scan_move_β:       mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n733_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n736_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn830:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn830]
                        lea              rsi, [rsp + 272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 104;                            je    n733_scan_tab_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n734_lit_integer_α
n736_call_builtin_icon_β:
                                                                              jmp   n733_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n737_scan_α:            lea              rdi, [rsp + 176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 176]
                        mov              r14, qword ptr [rsp + 184]
                        mov              r15, qword ptr [rsp + 192];          jmp   n726_disjunction_af
n737_scan_β:                                                                  jmp   n726_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n738_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn834:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn834]
                        lea              rsi, [rsp + 560]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 104;                            je    n723_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n723_disjunction_as
n738_call_builtin_icon_β:
                                                                              jmp   n723_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n739_lit_string_α:      mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 4
                        mov              rax, qword ptr [rip + .Lx835_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n723_disjunction_as
n739_lit_string_β:                                                            jmp   n723_disjunction_af
.Lx835_0:               .quad            .Lx835_0_s
.Lx835_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n740_var_α:             mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 840], rax;          jmp   n741_scan_enter_α
n740_var_β:                                                                   jmp   n723_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n741_scan_enter_α:      mov              rdi, qword ptr [rsp + 832]
                        mov              rsi, qword ptr [rsp + 840]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n742_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n742_disjunction_α:     mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              dword ptr [rsp + 784], 0;            jmp   n748_lit_string_α
n742_disjunction_as:    mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 0;                              jne   .Lx841_0
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax;          jmp   n743_scan_match_α
.Lx841_0:               cmp              eax, 1;                              jne   .Lx841_1
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 776], rax;          jmp   n743_scan_match_α
.Lx841_1:                                                                     jmp   n743_scan_match_α
n742_disjunction_β:     mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 0;                              je    n742_disjunction_af
                                                                              jmp   n742_disjunction_af
n742_disjunction_af:    add              dword ptr [rsp + 784], 1
                        mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 1;                              je    n747_lit_string_α
                                                                              jmp   n779_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n743_scan_match_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_needle@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, rdx;                            jge   .Lx843_239
                        add              rsp, 16;                             jmp   n742_disjunction_β
.Lx843_239:             mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, qword ptr [rsp + 8]
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             eax, eax;                            je    .Lx843_240
                        add              rsp, 16;                             jmp   n742_disjunction_β
.Lx843_240:             mov              qword ptr [rsp + 736], 3
                        mov              rax, r14
                        mov              rcx, qword ptr [rsp + 8]
                        add              rax, rcx
                        add              rax, 1
                        mov              qword ptr [rsp + 744], rax;          jmp   n744_scan_tab_α
#-----------------------------------------------------------------------------------------------------------------------
n744_scan_tab_α:        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 744]
                        cmp              rax, 1;                              jge   .Lx845_0
                        add              rax, r15
                        add              rax, 1
.Lx845_0:               cmp              rax, 1;                              jge   .Lx845_239
                        add              rsp, 16;                             jmp   n742_disjunction_β
.Lx845_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx845_240
                        add              rsp, 16;                             jmp   n742_disjunction_β
.Lx845_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n745_call_builtin_icon_α
n744_scan_tab_β:        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n742_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n745_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn847:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn847]
                        lea              rsi, [rsp + 672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              eax, 104;                            je    n742_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n746_scan_α
n745_call_builtin_icon_β:
                                                                              jmp   n742_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n746_scan_α:            mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 592]
                        mov              r14, qword ptr [rsp + 600]
                        mov              r15, qword ptr [rsp + 608];          jmp   n723_disjunction_as
n746_scan_β:                                                                  jmp   n723_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n747_lit_string_α:      mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 1
                        mov              rax, qword ptr [rip + .Lx850_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n742_disjunction_as
n747_lit_string_β:                                                            jmp   n742_disjunction_af
.Lx850_0:               .quad            .Lx850_0_s
.Lx850_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n748_lit_string_α:      mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 1
                        mov              rax, qword ptr [rip + .Lx851_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n742_disjunction_as
n748_lit_string_β:                                                            jmp   n742_disjunction_af
.Lx851_0:               .quad            .Lx851_0_s
.Lx851_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n749_lit_string_α:      mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], 4
                        mov              rax, qword ptr [rip + .Lx852_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n720_disjunction_as
n749_lit_string_β:                                                            jmp   n720_disjunction_af
.Lx852_0:               .quad            .Lx852_0_s
.Lx852_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n750_lit_string_α:      mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 6
                        mov              rax, qword ptr [rip + .Lx853_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n751_assign_α
n750_lit_string_β:                                                            jmp   n720_disjunction_af
.Lx853_0:               .quad            .Lx853_0_s
.Lx853_0_s:             .string          "xxxxxx"
#-----------------------------------------------------------------------------------------------------------------------
n751_assign_α:          mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n752_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n752_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lrkfn856:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn856]
                        lea              rsi, [rsp + 992]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              eax, 104;                            je    n720_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n720_disjunction_as
n752_call_builtin_icon_β:
                                                                              jmp   n720_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n753_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn858:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn858]
                        lea              rsi, [rsp + 1200]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              eax, 104;                            je    n717_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n717_disjunction_as
n753_call_builtin_icon_β:
                                                                              jmp   n717_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n754_lit_string_α:      mov              qword ptr [rsp + 1440], 2            # result
                        mov              dword ptr [rsp + 1444], 4
                        mov              rax, qword ptr [rip + .Lx859_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n717_disjunction_as
n754_lit_string_β:                                                            jmp   n717_disjunction_af
.Lx859_0:               .quad            .Lx859_0_s
.Lx859_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n755_var_α:             mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n756_scan_enter_α
n755_var_β:                                                                   jmp   n717_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n756_scan_enter_α:      mov              rdi, qword ptr [rsp + 1424]
                        mov              rsi, qword ptr [rsp + 1432]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n757_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n757_lit_string_α:      mov              qword ptr [rsp + 1408], 2            # result
                        mov              dword ptr [rsp + 1412], 1
                        mov              rax, qword ptr [rip + .Lx864_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n758_scan_find_α
.Lx864_0:               .quad            .Lx864_0_s
.Lx864_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n758_scan_find_α:       mov              qword ptr [rsp + 1392], r14
.Lx866_0:               mov              rax, qword ptr [rsp + 1392]
                        mov              rcx, r15
                        sub              rcx, 1
                        cmp              rax, rcx;                            jg    n780_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        cmp              rsi, 32;                             jne   .Lx866_1
                        mov              qword ptr [rsp + 1376], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 1384], rax;         jmp   n759_scan_tab_α
.Lx866_1:               inc              qword ptr [rsp + 1392];              jmp   .Lx866_0
n758_scan_find_β:       inc              qword ptr [rsp + 1392];              jmp   .Lx866_0
#-----------------------------------------------------------------------------------------------------------------------
n759_scan_tab_α:        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 1384]
                        cmp              rax, 1;                              jge   .Lx868_0
                        add              rax, r15
                        add              rax, 1
.Lx868_0:               cmp              rax, 1;                              jge   .Lx868_239
                        add              rsp, 16;                             jmp   n758_scan_find_β
.Lx868_239:             mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lx868_240
                        add              rsp, 16;                             jmp   n758_scan_find_β
.Lx868_240:             mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_substr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        pop              r10
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n760_scan_α
n759_scan_tab_β:        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16;                             jmp   n758_scan_find_β
#-----------------------------------------------------------------------------------------------------------------------
n760_scan_α:            mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1320], rax
                        lea              rdi, [rsp + 1280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 1280]
                        mov              r14, qword ptr [rsp + 1288]
                        mov              r15, qword ptr [rsp + 1296];         jmp   n761_call_builtin_icon_α
n760_scan_β:                                                                  jmp   n717_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n761_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1240], rax
                        .section         .rodata
.Lrkfn872:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn872]
                        lea              rsi, [rsp + 1232]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              eax, 104;                            je    n717_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n717_disjunction_as
n761_call_builtin_icon_β:
                                                                              jmp   n717_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n762_lit_string_α:      mov              qword ptr [rsp + 1648], 2            # result
                        mov              dword ptr [rsp + 1652], 4
                        mov              rax, qword ptr [rip + .Lx873_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n714_disjunction_as
n762_lit_string_β:                                                            jmp   n714_disjunction_af
.Lx873_0:               .quad            .Lx873_0_s
.Lx873_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n763_lit_string_α:      mov              qword ptr [rsp + 1632], 2            # result
                        mov              dword ptr [rsp + 1636], 35
                        mov              rax, qword ptr [rip + .Lx874_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n764_assign_α
n763_lit_string_β:                                                            jmp   n714_disjunction_af
.Lx874_0:               .quad            .Lx874_0_s
.Lx874_0_s:             .string          "this is the time to work it all out"
#-----------------------------------------------------------------------------------------------------------------------
n764_assign_α:          mov              rax, qword ptr [rsp + 1632]
                        mov              rdx, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx;         jmp   n765_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n765_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1592], rax
                        .section         .rodata
.Lrkfn877:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn877]
                        lea              rsi, [rsp + 1584]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              eax, 104;                            je    n714_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n714_disjunction_as
n765_call_builtin_icon_β:
                                                                              jmp   n714_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n766_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn879:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn879]
                        lea              rsi, [rsp + 1792]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                        cmp              eax, 104;                            je    n711_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n711_disjunction_as
n766_call_builtin_icon_β:
                                                                              jmp   n711_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n767_lit_string_α:      mov              qword ptr [rsp + 2016], 2            # result
                        mov              dword ptr [rsp + 2020], 4
                        mov              rax, qword ptr [rip + .Lx880_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n711_disjunction_as
n767_lit_string_β:                                                            jmp   n711_disjunction_af
.Lx880_0:               .quad            .Lx880_0_s
.Lx880_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n768_var_α:             mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2008], rax;         jmp   n769_scan_enter_α
n768_var_β:                                                                   jmp   n711_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n769_scan_enter_α:      mov              rdi, qword ptr [rsp + 2000]
                        mov              rsi, qword ptr [rsp + 2008]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n770_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n770_lit_charset_α:     mov              qword ptr [rsp + 1984], 2            # result
                        mov              dword ptr [rsp + 1988], -1
                        mov              rax, qword ptr [rip + .Lx885_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n771_scan_upto_α
.Lx885_0:               .quad            .Lx885_0_s
.Lx885_0_s:             .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n771_scan_upto_α:       mov              qword ptr [rsp + 1968], r14
.Lx887_0:               mov              rax, qword ptr [rsp + 1968]
                        cmp              rax, r15;                            jge   n781_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx887_2]
                        push             rax
                        push             r10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             strchr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r10
                        test             rax, rax
                        pop              rax;                                 je    .Lx887_1
                        mov              qword ptr [rsp + 1952], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 1960], rax;         jmp   n772_scan_α
.Lx887_1:               inc              qword ptr [rsp + 1968];              jmp   .Lx887_0
n771_scan_upto_β:       inc              qword ptr [rsp + 1968];              jmp   .Lx887_0
.Lx887_2:               .quad            .Lx887_2_s
.Lx887_2_s:             .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n772_scan_α:            mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1928], rax
                        lea              rdi, [rsp + 1888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 1888]
                        mov              r14, qword ptr [rsp + 1896]
                        mov              r15, qword ptr [rsp + 1904];         jmp   n773_assign_α
n772_scan_β:            mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_reenter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax;                            jmp   n771_scan_upto_β
                                                                              jmp   n711_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n773_assign_α:          mov              rax, qword ptr [rsp + 1920]
                        mov              rdx, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n774_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n774_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1832], rax
                        .section         .rodata
.Lrkfn892:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn892]
                        lea              rsi, [rsp + 1824]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              eax, 104;                            je    n772_scan_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n772_scan_β
n774_call_builtin_icon_β:
                                                                              jmp   n772_scan_β
#-----------------------------------------------------------------------------------------------------------------------
n775_lit_string_α:      mov              qword ptr [rsp + 2224], 2            # result
                        mov              dword ptr [rsp + 2228], 4
                        mov              rax, qword ptr [rip + .Lx893_0]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n708_disjunction_as
n775_lit_string_β:                                                            jmp   n708_disjunction_af
.Lx893_0:               .quad            .Lx893_0_s
.Lx893_0_s:             .string          "none"
#-----------------------------------------------------------------------------------------------------------------------
n776_lit_string_α:      mov              qword ptr [rsp + 2208], 2            # result
                        mov              dword ptr [rsp + 2212], 6
                        mov              rax, qword ptr [rip + .Lx894_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n777_assign_α
n776_lit_string_β:                                                            jmp   n708_disjunction_af
.Lx894_0:               .quad            .Lx894_0_s
.Lx894_0_s:             .string          "abcdef"
#-----------------------------------------------------------------------------------------------------------------------
n777_assign_α:          mov              rax, qword ptr [rsp + 2208]
                        mov              rdx, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx;         jmp   n778_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n778_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2168], rax
                        .section         .rodata
.Lrkfn897:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn897]
                        lea              rsi, [rsp + 2160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx
                        cmp              eax, 104;                            je    n708_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n708_disjunction_as
n778_call_builtin_icon_β:
                                                                              jmp   n708_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n779_scan_α:            lea              rdi, [rsp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 592]
                        mov              r14, qword ptr [rsp + 600]
                        mov              r15, qword ptr [rsp + 608];          jmp   n723_disjunction_af
n779_scan_β:                                                                  jmp   n723_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n780_scan_α:            lea              rdi, [rsp + 1280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 1280]
                        mov              r14, qword ptr [rsp + 1288]
                        mov              r15, qword ptr [rsp + 1296];         jmp   n717_disjunction_af
n780_scan_β:                                                                  jmp   n717_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n781_scan_α:            lea              rdi, [rsp + 1888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 1888]
                        mov              r14, qword ptr [rsp + 1896]
                        mov              r15, qword ptr [rsp + 1904];         jmp   n711_disjunction_af
n781_scan_β:                                                                  jmp   n711_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_p4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_p4_β:
                                                                              jmp   proc_p4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_p4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2280]
                        add              rsp, 2304;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_p4_ω:
                        mov              rcx, qword ptr [rsp + 2288]
                        add              rsp, 2304;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_p4_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx904_2]
                        lea              rdx, [rip + .Lx904_3];               jmp   proc_p4_α
.Lx904_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx904_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "array(a,b,c,d,e,f,g)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "p1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_p1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2960
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_p1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "p2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_p2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2544
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_p2_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "p3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_p3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 3232
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_p3_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "p4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_p4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_p4_dcα]
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 176
                        mov              qword ptr [rsp + 152], rcx
                        mov              qword ptr [rsp + 160], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n905_call_proc_staged_α:
                        sub              rsp, 16
                        call             proc_p1_dcα;                         jmp   .Lx910_2
.Lx910_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx910_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx910_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx910_240
                        add              rsp, 16;                             jmp   n906_call_proc_staged_α
.Lx910_240:                                                                   jmp   n906_call_proc_staged_α
n905_call_proc_staged_β:
                                                                              jmp   n906_call_proc_staged_α
.Lx910_0:               .quad            .Lx910_0_s
.Lx910_0_s:             .string          "p1"
#-----------------------------------------------------------------------------------------------------------------------
n906_call_proc_staged_α:
                        sub              rsp, 16
                        call             proc_p2_dcα;                         jmp   .Lx912_2
.Lx912_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx912_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx912_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx912_240
                        add              rsp, 16;                             jmp   n907_call_proc_staged_α
.Lx912_240:                                                                   jmp   n907_call_proc_staged_α
n906_call_proc_staged_β:
                                                                              jmp   n907_call_proc_staged_α
.Lx912_0:               .quad            .Lx912_0_s
.Lx912_0_s:             .string          "p2"
#-----------------------------------------------------------------------------------------------------------------------
n907_call_proc_staged_α:
                        sub              rsp, 16
                        call             proc_p3_dcα;                         jmp   .Lx914_2
.Lx914_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx914_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx914_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx914_240
                        add              rsp, 16;                             jmp   n908_call_proc_staged_α
.Lx914_240:                                                                   jmp   n908_call_proc_staged_α
n907_call_proc_staged_β:
                                                                              jmp   n908_call_proc_staged_α
.Lx914_0:               .quad            .Lx914_0_s
.Lx914_0_s:             .string          "p3"
#-----------------------------------------------------------------------------------------------------------------------
n908_call_proc_staged_α:
                        sub              rsp, 16
                        call             proc_p4_dcα;                         jmp   .Lx916_2
.Lx916_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult wn=0
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx916_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx916_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            jne   .Lx916_240
                        add              rsp, 16
                        add              rsp, 48;                             jmp   main_ω
.Lx916_240:             add              rsp, 64;                             jmp   main_γ
n908_call_proc_staged_β:
                                                                              jmp   main_ω
.Lx916_0:               .quad            .Lx916_0_s
.Lx916_0_s:             .string          "p4"
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
                        .section         .note.GNU-stack,"",@progbits
