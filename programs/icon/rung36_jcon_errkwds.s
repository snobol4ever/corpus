                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 2432
                        mov              qword ptr [rsp + 2408], rcx
                        mov              qword ptr [rsp + 2416], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_keyword_icon_α:      mov              rdi, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n2_disjunction_α
                        mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx;         jmp   n1_call_builtin_icon_α
n0_keyword_icon_β:                                                            jmp   n2_disjunction_α
.Lx70_0:                .quad            .Lx70_0_s
.Lx70_0_s:              .string          "&error"
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α: mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2328], rax
                        .section         .rodata
.Lrkfn72:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]
                        lea              rsi, [rsp + 2320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        cmp              eax, 104;                            je    n2_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n2_disjunction_α
n1_call_builtin_icon_β:                                                       jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:       mov              qword ptr [rsp + 2224], 0
                        mov              qword ptr [rsp + 2232], 0
                        mov              dword ptr [rsp + 2240], 0;           jmp   n69_keyword_icon_α
n2_disjunction_as:      mov              eax, dword ptr [rsp + 2240]
                        cmp              eax, 0;                              jne   .Lx74_0
                        mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n3_call_builtin_icon_α
.Lx74_0:                cmp              eax, 1;                              jne   .Lx74_1
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n3_call_builtin_icon_α
.Lx74_1:                                                                      jmp   n3_call_builtin_icon_α
n2_disjunction_β:       mov              eax, dword ptr [rsp + 2240]
                        cmp              eax, 0;                              je    n2_disjunction_af
                                                                              jmp   n2_disjunction_af
n2_disjunction_af:      add              dword ptr [rsp + 2240], 1
                        mov              eax, dword ptr [rsp + 2240]
                        cmp              eax, 1;                              je    n68_lit_string_α
                                                                              jmp   n4_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_icon_α: mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2200], rax
                        .section         .rodata
.Lrkfn76:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn76]
                        lea              rsi, [rsp + 2192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx
                        cmp              eax, 104;                            je    n2_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_disjunction_α
n3_call_builtin_icon_β:                                                       jmp   n2_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n4_disjunction_α:       mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2104], 0
                        mov              dword ptr [rsp + 2112], 0;           jmp   n67_keyword_icon_α
n4_disjunction_as:      mov              eax, dword ptr [rsp + 2112]
                        cmp              eax, 0;                              jne   .Lx78_0
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n5_call_builtin_icon_α
.Lx78_0:                cmp              eax, 1;                              jne   .Lx78_1
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n5_call_builtin_icon_α
.Lx78_1:                                                                      jmp   n5_call_builtin_icon_α
n4_disjunction_β:       mov              eax, dword ptr [rsp + 2112]
                        cmp              eax, 0;                              je    n4_disjunction_af
                                                                              jmp   n4_disjunction_af
n4_disjunction_af:      add              dword ptr [rsp + 2112], 1
                        mov              eax, dword ptr [rsp + 2112]
                        cmp              eax, 1;                              je    n66_lit_string_α
                                                                              jmp   n6_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2072], rax
                        .section         .rodata
.Lrkfn80:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn80]
                        lea              rsi, [rsp + 2064]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              eax, 104;                            je    n4_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n6_disjunction_α
n5_call_builtin_icon_β:                                                       jmp   n4_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n6_disjunction_α:       mov              qword ptr [rsp + 1920], 0
                        mov              qword ptr [rsp + 1928], 0
                        mov              dword ptr [rsp + 1936], 0;           jmp   n64_keyword_icon_α
n6_disjunction_as:      mov              eax, dword ptr [rsp + 1936]
                        cmp              eax, 0;                              jne   .Lx82_0
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n7_call_builtin_icon_α
.Lx82_0:                cmp              eax, 1;                              jne   .Lx82_1
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n7_call_builtin_icon_α
.Lx82_1:                                                                      jmp   n7_call_builtin_icon_α
n6_disjunction_β:       mov              eax, dword ptr [rsp + 1936]
                        cmp              eax, 0;                              je    n6_disjunction_af
                                                                              jmp   n6_disjunction_af
n6_disjunction_af:      add              dword ptr [rsp + 1936], 1
                        mov              eax, dword ptr [rsp + 1936]
                        cmp              eax, 1;                              je    n63_lit_string_α
                                                                              jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α: mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1896], rax
                        .section         .rodata
.Lrkfn84:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn84]
                        lea              rsi, [rsp + 1888]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              eax, 104;                            je    n6_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_lit_integer_α
n7_call_builtin_icon_β:                                                       jmp   n6_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       mov              qword ptr [rsp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n9_keyword_assign_α
.Lx85_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_keyword_assign_α:    mov              rdi, qword ptr [rsp + 1856]
                        mov              rsi, qword ptr [rsp + 1864]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_error_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n10_keyword_icon_α
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n10_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n10_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n12_disjunction_α
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx;         jmp   n11_call_builtin_icon_α
n10_keyword_icon_β:                                                           jmp   n12_disjunction_α
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          "&error"
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1784], rax
                        .section         .rodata
.Lrkfn89:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn89]
                        lea              rsi, [rsp + 1776]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        cmp              eax, 104;                            je    n12_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_disjunction_α
n11_call_builtin_icon_β:
                                                                              jmp   n12_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n12_disjunction_α:      mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1624], 0
                        mov              dword ptr [rsp + 1632], 0;           jmp   n61_keyword_icon_α
n12_disjunction_as:     mov              eax, dword ptr [rsp + 1632]
                        cmp              eax, 0;                              jne   .Lx91_0
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n13_call_builtin_icon_α
.Lx91_0:                cmp              eax, 1;                              jne   .Lx91_1
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n13_call_builtin_icon_α
.Lx91_1:                                                                      jmp   n13_call_builtin_icon_α
n12_disjunction_β:      mov              eax, dword ptr [rsp + 1632]
                        cmp              eax, 0;                              je    n62_call_value_β
                                                                              jmp   n12_disjunction_af
n12_disjunction_af:     add              dword ptr [rsp + 1632], 1
                        mov              eax, dword ptr [rsp + 1632]
                        cmp              eax, 1;                              je    n60_lit_string_α
                                                                              jmp   n14_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1592], rax
                        .section         .rodata
.Lrkfn93:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn93]
                        lea              rsi, [rsp + 1584]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              eax, 104;                            je    n12_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_keyword_icon_α
n13_call_builtin_icon_β:
                                                                              jmp   n12_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n14_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n16_disjunction_α
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n15_call_builtin_icon_α
n14_keyword_icon_β:                                                           jmp   n16_disjunction_α
.Lx94_0:                .quad            .Lx94_0_s
.Lx94_0_s:              .string          "&error"
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1512], rax
                        .section         .rodata
.Lrkfn96:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn96]
                        lea              rsi, [rsp + 1504]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        cmp              eax, 104;                            je    n16_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_disjunction_α
n15_call_builtin_icon_β:
                                                                              jmp   n16_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n16_disjunction_α:      mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1416], 0
                        mov              dword ptr [rsp + 1424], 0;           jmp   n59_keyword_icon_α
n16_disjunction_as:     mov              eax, dword ptr [rsp + 1424]
                        cmp              eax, 0;                              jne   .Lx98_0
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n17_call_builtin_icon_α
.Lx98_0:                cmp              eax, 1;                              jne   .Lx98_1
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n17_call_builtin_icon_α
.Lx98_1:                                                                      jmp   n17_call_builtin_icon_α
n16_disjunction_β:      mov              eax, dword ptr [rsp + 1424]
                        cmp              eax, 0;                              je    n16_disjunction_af
                                                                              jmp   n16_disjunction_af
n16_disjunction_af:     add              dword ptr [rsp + 1424], 1
                        mov              eax, dword ptr [rsp + 1424]
                        cmp              eax, 1;                              je    n58_lit_string_α
                                                                              jmp   n18_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1384], rax
                        .section         .rodata
.Lrkfn100:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn100]
                        lea              rsi, [rsp + 1376]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx
                        cmp              eax, 104;                            je    n16_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n18_disjunction_α
n17_call_builtin_icon_β:
                                                                              jmp   n16_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n18_disjunction_α:      mov              qword ptr [rsp + 1280], 0
                        mov              qword ptr [rsp + 1288], 0
                        mov              dword ptr [rsp + 1296], 0;           jmp   n57_keyword_icon_α
n18_disjunction_as:     mov              eax, dword ptr [rsp + 1296]
                        cmp              eax, 0;                              jne   .Lx102_0
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n19_call_builtin_icon_α
.Lx102_0:               cmp              eax, 1;                              jne   .Lx102_1
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n19_call_builtin_icon_α
.Lx102_1:                                                                     jmp   n19_call_builtin_icon_α
n18_disjunction_β:      mov              eax, dword ptr [rsp + 1296]
                        cmp              eax, 0;                              je    n18_disjunction_af
                                                                              jmp   n18_disjunction_af
n18_disjunction_af:     add              dword ptr [rsp + 1296], 1
                        mov              eax, dword ptr [rsp + 1296]
                        cmp              eax, 1;                              je    n56_lit_string_α
                                                                              jmp   n20_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1256], rax
                        .section         .rodata
.Lrkfn104:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn104]
                        lea              rsi, [rsp + 1248]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              eax, 104;                            je    n18_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n20_disjunction_α
n19_call_builtin_icon_β:
                                                                              jmp   n18_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n20_disjunction_α:      mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              dword ptr [rsp + 1120], 0;           jmp   n54_keyword_icon_α
n20_disjunction_as:     mov              eax, dword ptr [rsp + 1120]
                        cmp              eax, 0;                              jne   .Lx106_0
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n21_call_builtin_icon_α
.Lx106_0:               cmp              eax, 1;                              jne   .Lx106_1
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n21_call_builtin_icon_α
.Lx106_1:                                                                     jmp   n21_call_builtin_icon_α
n20_disjunction_β:      mov              eax, dword ptr [rsp + 1120]
                        cmp              eax, 0;                              je    n20_disjunction_af
                                                                              jmp   n20_disjunction_af
n20_disjunction_af:     add              dword ptr [rsp + 1120], 1
                        mov              eax, dword ptr [rsp + 1120]
                        cmp              eax, 1;                              je    n53_lit_string_α
                                                                              jmp   n22_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn108:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn108]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              eax, 104;                            je    n20_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_keyword_icon_α
n21_call_builtin_icon_β:
                                                                              jmp   n20_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n22_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n24_disjunction_α
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n23_call_builtin_icon_α
n22_keyword_icon_β:                                                           jmp   n24_disjunction_α
.Lx109_0:               .quad            .Lx109_0_s
.Lx109_0_s:             .string          "&error"
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        .section         .rodata
.Lrkfn111:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn111]
                        lea              rsi, [rsp + 992]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              eax, 104;                            je    n24_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n24_disjunction_α
n23_call_builtin_icon_β:
                                                                              jmp   n24_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n24_disjunction_α:      mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              dword ptr [rsp + 912], 0;            jmp   n52_keyword_icon_α
n24_disjunction_as:     mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 0;                              jne   .Lx113_0
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 904], rax;          jmp   n25_call_builtin_icon_α
.Lx113_0:               cmp              eax, 1;                              jne   .Lx113_1
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 904], rax;          jmp   n25_call_builtin_icon_α
.Lx113_1:                                                                     jmp   n25_call_builtin_icon_α
n24_disjunction_β:      mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 0;                              je    n24_disjunction_af
                                                                              jmp   n24_disjunction_af
n24_disjunction_af:     add              dword ptr [rsp + 912], 1
                        mov              eax, dword ptr [rsp + 912]
                        cmp              eax, 1;                              je    n51_lit_string_α
                                                                              jmp   n26_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax
                        .section         .rodata
.Lrkfn115:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn115]
                        lea              rsi, [rsp + 864]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              eax, 104;                            je    n24_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n26_disjunction_α
n25_call_builtin_icon_β:
                                                                              jmp   n24_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n26_disjunction_α:      mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              dword ptr [rsp + 784], 0;            jmp   n50_keyword_icon_α
n26_disjunction_as:     mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 0;                              jne   .Lx117_0
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax;          jmp   n27_call_builtin_icon_α
.Lx117_0:               cmp              eax, 1;                              jne   .Lx117_1
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 776], rax;          jmp   n27_call_builtin_icon_α
.Lx117_1:                                                                     jmp   n27_call_builtin_icon_α
n26_disjunction_β:      mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 0;                              je    n26_disjunction_af
                                                                              jmp   n26_disjunction_af
n26_disjunction_af:     add              dword ptr [rsp + 784], 1
                        mov              eax, dword ptr [rsp + 784]
                        cmp              eax, 1;                              je    n49_lit_string_α
                                                                              jmp   n28_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        .section         .rodata
.Lrkfn119:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rsp + 736]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              eax, 104;                            je    n26_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_disjunction_α
n27_call_builtin_icon_β:
                                                                              jmp   n26_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n28_disjunction_α:      mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              dword ptr [rsp + 608], 0;            jmp   n47_keyword_icon_α
n28_disjunction_as:     mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              jne   .Lx121_0
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax;          jmp   n29_call_builtin_icon_α
.Lx121_0:               cmp              eax, 1;                              jne   .Lx121_1
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 600], rax;          jmp   n29_call_builtin_icon_α
.Lx121_1:                                                                     jmp   n29_call_builtin_icon_α
n28_disjunction_β:      mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 0;                              je    n28_disjunction_af
                                                                              jmp   n28_disjunction_af
n28_disjunction_af:     add              dword ptr [rsp + 608], 1
                        mov              eax, dword ptr [rsp + 608]
                        cmp              eax, 1;                              je    n46_lit_string_α
                                                                              jmp   n30_call_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn123:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn123]
                        lea              rsi, [rsp + 560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              eax, 104;                            je    n28_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n30_call_α
n29_call_builtin_icon_β:
                                                                              jmp   n28_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n30_call_α:             .section         .rodata
.Lbynamefn31:           .string          "errorclear"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn31]
                        lea              rsi, [rsp + 528]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 104;                            je    n31_keyword_icon_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_keyword_icon_α
n30_call_β:                                                                   jmp   n31_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n31_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n33_disjunction_α
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n32_call_builtin_icon_α
n31_keyword_icon_β:                                                           jmp   n33_disjunction_α
.Lx125_0:               .quad            .Lx125_0_s
.Lx125_0_s:             .string          "&error"
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn127:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              eax, 104;                            je    n33_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n33_disjunction_α
n32_call_builtin_icon_β:
                                                                              jmp   n33_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n33_disjunction_α:      mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              dword ptr [rsp + 368], 0;            jmp   n45_keyword_icon_α
n33_disjunction_as:     mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 0;                              jne   .Lx129_0
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax;          jmp   n34_call_builtin_icon_α
.Lx129_0:               cmp              eax, 1;                              jne   .Lx129_1
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 360], rax;          jmp   n34_call_builtin_icon_α
.Lx129_1:                                                                     jmp   n34_call_builtin_icon_α
n33_disjunction_β:      mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 0;                              je    n33_disjunction_af
                                                                              jmp   n33_disjunction_af
n33_disjunction_af:     add              dword ptr [rsp + 368], 1
                        mov              eax, dword ptr [rsp + 368]
                        cmp              eax, 1;                              je    n44_lit_string_α
                                                                              jmp   n35_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn131:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn131]
                        lea              rsi, [rsp + 320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 104;                            je    n33_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n35_disjunction_α
n34_call_builtin_icon_β:
                                                                              jmp   n33_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n35_disjunction_α:      mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              dword ptr [rsp + 240], 0;            jmp   n43_keyword_icon_α
n35_disjunction_as:     mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 0;                              jne   .Lx133_0
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax;          jmp   n36_call_builtin_icon_α
.Lx133_0:               cmp              eax, 1;                              jne   .Lx133_1
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 232], rax;          jmp   n36_call_builtin_icon_α
.Lx133_1:                                                                     jmp   n36_call_builtin_icon_α
n35_disjunction_β:      mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 0;                              je    n35_disjunction_af
                                                                              jmp   n35_disjunction_af
n35_disjunction_af:     add              dword ptr [rsp + 240], 1
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 1;                              je    n42_lit_string_α
                                                                              jmp   n37_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn135:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104;                            je    n35_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n37_disjunction_α
n36_call_builtin_icon_β:
                                                                              jmp   n35_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n37_disjunction_α:      mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              dword ptr [rsp + 64], 0;             jmp   n40_keyword_icon_α
n37_disjunction_as:     mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 0;                              jne   .Lx137_0
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax;           jmp   n38_call_builtin_icon_α
.Lx137_0:               cmp              eax, 1;                              jne   .Lx137_1
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 56], rax;           jmp   n38_call_builtin_icon_α
.Lx137_1:                                                                     jmp   n38_call_builtin_icon_α
n37_disjunction_β:      mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 0;                              je    n37_disjunction_af
                                                                              jmp   n37_disjunction_af
n37_disjunction_af:     add              dword ptr [rsp + 64], 1
                        mov              eax, dword ptr [rsp + 64]
                        cmp              eax, 1;                              je    n39_lit_string_α
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn139:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn139]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    n37_disjunction_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n38_call_builtin_icon_β:
                                                                              jmp   n37_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 4
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n37_disjunction_as
n39_lit_string_β:                                                             jmp   n37_disjunction_af
.Lx140_0:               .quad            .Lx140_0_s
.Lx140_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n40_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n37_disjunction_af
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n41_call_builtin_icon_α
n40_keyword_icon_β:                                                           jmp   n37_disjunction_af
.Lx141_0:               .quad            .Lx141_0_s
.Lx141_0_s:             .string          "&errorvalue"
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 104], rax
                        .section         .rodata
.Lrkfn143:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn143]
                        lea              rsi, [rsp + 96]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 104;                            je    n37_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n37_disjunction_as
n41_call_builtin_icon_β:
                                                                              jmp   n37_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 4
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n35_disjunction_as
n42_lit_string_β:                                                             jmp   n35_disjunction_af
.Lx144_0:               .quad            .Lx144_0_s
.Lx144_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n43_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n35_disjunction_af
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n35_disjunction_as
n43_keyword_icon_β:                                                           jmp   n35_disjunction_af
.Lx145_0:               .quad            .Lx145_0_s
.Lx145_0_s:             .string          "&errortext"
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 4
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n33_disjunction_as
n44_lit_string_β:                                                             jmp   n33_disjunction_af
.Lx146_0:               .quad            .Lx146_0_s
.Lx146_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n45_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n33_disjunction_af
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n33_disjunction_as
n45_keyword_icon_β:                                                           jmp   n33_disjunction_af
.Lx147_0:               .quad            .Lx147_0_s
.Lx147_0_s:             .string          "&errornumber"
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 4
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n28_disjunction_as
n46_lit_string_β:                                                             jmp   n28_disjunction_af
.Lx148_0:               .quad            .Lx148_0_s
.Lx148_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n47_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n28_disjunction_af
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n48_call_builtin_icon_α
n47_keyword_icon_β:                                                           jmp   n28_disjunction_af
.Lx149_0:               .quad            .Lx149_0_s
.Lx149_0_s:             .string          "&errorvalue"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn151:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rsp + 640]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              eax, 104;                            je    n28_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_disjunction_as
n48_call_builtin_icon_β:
                                                                              jmp   n28_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 4
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n26_disjunction_as
n49_lit_string_β:                                                             jmp   n26_disjunction_af
.Lx152_0:               .quad            .Lx152_0_s
.Lx152_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n50_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n26_disjunction_af
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n26_disjunction_as
n50_keyword_icon_β:                                                           jmp   n26_disjunction_af
.Lx153_0:               .quad            .Lx153_0_s
.Lx153_0_s:             .string          "&errortext"
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 4
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n24_disjunction_as
n51_lit_string_β:                                                             jmp   n24_disjunction_af
.Lx154_0:               .quad            .Lx154_0_s
.Lx154_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n52_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n24_disjunction_af
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n24_disjunction_as
n52_keyword_icon_β:                                                           jmp   n24_disjunction_af
.Lx155_0:               .quad            .Lx155_0_s
.Lx155_0_s:             .string          "&errornumber"
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       mov              qword ptr [rsp + 1216], 2            # result
                        mov              dword ptr [rsp + 1220], 4
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n20_disjunction_as
n53_lit_string_β:                                                             jmp   n20_disjunction_af
.Lx156_0:               .quad            .Lx156_0_s
.Lx156_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n54_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n20_disjunction_af
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n55_call_builtin_icon_α
n54_keyword_icon_β:                                                           jmp   n20_disjunction_af
.Lx157_0:               .quad            .Lx157_0_s
.Lx157_0_s:             .string          "&errorvalue"
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1160], rax
                        .section         .rodata
.Lrkfn159:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]
                        lea              rsi, [rsp + 1152]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              eax, 104;                            je    n20_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n20_disjunction_as
n55_call_builtin_icon_β:
                                                                              jmp   n20_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:       mov              qword ptr [rsp + 1344], 2            # result
                        mov              dword ptr [rsp + 1348], 4
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n18_disjunction_as
n56_lit_string_β:                                                             jmp   n18_disjunction_af
.Lx160_0:               .quad            .Lx160_0_s
.Lx160_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n57_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n18_disjunction_af
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n18_disjunction_as
n57_keyword_icon_β:                                                           jmp   n18_disjunction_af
.Lx161_0:               .quad            .Lx161_0_s
.Lx161_0_s:             .string          "&errortext"
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:       mov              qword ptr [rsp + 1472], 2            # result
                        mov              dword ptr [rsp + 1476], 4
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n16_disjunction_as
n58_lit_string_β:                                                             jmp   n16_disjunction_af
.Lx162_0:               .quad            .Lx162_0_s
.Lx162_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n59_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n16_disjunction_af
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n16_disjunction_as
n59_keyword_icon_β:                                                           jmp   n16_disjunction_af
.Lx163_0:               .quad            .Lx163_0_s
.Lx163_0_s:             .string          "&errornumber"
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 4
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n12_disjunction_as
n60_lit_string_β:                                                             jmp   n12_disjunction_af
.Lx164_0:               .quad            .Lx164_0_s
.Lx164_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n61_keyword_icon_α:     mov              qword ptr [rsp + 1648], 0
                        mov              qword ptr [rsp + 1656], 0;           jmp   n62_call_value_α
n61_keyword_icon_β:                                                           jmp   n12_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n62_call_value_α:       mov              qword ptr [rsp + 1696], 0
                        mov              rdi, qword ptr [rsp + 1648]
                        mov              rsi, qword ptr [rsp + 1656]
                        lea              rdx, [rsp + 1696]
                        mov              ecx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_value_spine_prep@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx167_7
                        lea              rcx, [rip + .Lx167_4]
                        push             rcx
                        lea              rcx, [rip + .Lx167_3]
                        push             rcx;                                 jmp   rax
.Lx167_3:               mov              qword ptr [rsp + 1704], rsp
                        mov              rax, qword ptr [rsp + 1696]
                        test             rax, rax;                            jne   .Lx167_5
                        mov              qword ptr [rsp + 1696], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx167_2
.Lx167_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx167_2
.Lx167_4:               mov              qword ptr [rsp + 1704], rsp
                        mov              rax, qword ptr [rsp + 1696]
                        test             rax, rax;                            jne   .Lx167_6
                        mov              qword ptr [rsp + 1696], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx167_2
.Lx167_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx167_2
.Lx167_7:               mov              rdi, qword ptr [rsp + 1648]
                        mov              rsi, qword ptr [rsp + 1656]
                        lea              rdx, [rsp + 1696]
                        mov              ecx, 0
                        lea              r8, [rsp + 1696]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_value_gen_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx167_2:               mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              eax, 104;                            je    n12_disjunction_af
                                                                              jmp   n12_disjunction_as
n62_call_value_β:       mov              rax, qword ptr [rsp + 1696]
                        cmp              rax, 1;                              jne   .Lx167_8
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rsp + 1704];         jmp   qword ptr [rsp]
.Lx167_8:               lea              rdi, [rsp + 1696]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_value_resume_h@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n12_disjunction_af
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx;         jmp   n12_disjunction_as
                                                                              jmp   n12_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       mov              qword ptr [rsp + 2032], 2            # result
                        mov              dword ptr [rsp + 2036], 4
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 2040], rax;         jmp   n6_disjunction_as
n63_lit_string_β:                                                             jmp   n6_disjunction_af
.Lx168_0:               .quad            .Lx168_0_s
.Lx168_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n64_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n6_disjunction_af
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx;         jmp   n65_call_builtin_icon_α
n64_keyword_icon_β:                                                           jmp   n6_disjunction_af
.Lx169_0:               .quad            .Lx169_0_s
.Lx169_0_s:             .string          "&errorvalue"
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 1976], rax
                        .section         .rodata
.Lrkfn171:              .string          "image"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]
                        lea              rsi, [rsp + 1968]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              eax, 104;                            je    n6_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n6_disjunction_as
n65_call_builtin_icon_β:
                                                                              jmp   n6_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              qword ptr [rsp + 2160], 2            # result
                        mov              dword ptr [rsp + 2164], 4
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rsp + 2168], rax;         jmp   n4_disjunction_as
n66_lit_string_β:                                                             jmp   n4_disjunction_af
.Lx172_0:               .quad            .Lx172_0_s
.Lx172_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n67_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n4_disjunction_af
                        mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx;         jmp   n4_disjunction_as
n67_keyword_icon_β:                                                           jmp   n4_disjunction_af
.Lx173_0:               .quad            .Lx173_0_s
.Lx173_0_s:             .string          "&errortext"
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       mov              qword ptr [rsp + 2288], 2            # result
                        mov              dword ptr [rsp + 2292], 4
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n2_disjunction_as
n68_lit_string_β:                                                             jmp   n2_disjunction_af
.Lx174_0:               .quad            .Lx174_0_s
.Lx174_0_s:             .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n69_keyword_icon_α:     mov              rdi, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n2_disjunction_af
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n2_disjunction_as
n69_keyword_icon_β:                                                           jmp   n2_disjunction_af
.Lx175_0:               .quad            .Lx175_0_s
.Lx175_0_s:             .string          "&errornumber"
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
