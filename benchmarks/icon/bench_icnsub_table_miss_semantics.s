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
                        sub              rsp, 2400
                        mov              qword ptr [rsp + 2376], rcx
                        mov              qword ptr [rsp + 2384], rdx
                        mov              rdi, rsp
                        add              rdi, 2256
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              qword ptr [rsp + 2240], 3            # result
                        mov              rax, qword ptr [rip + .Lx00001_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n1_call_builtin_icon_α
.Lx00001_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α: mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2208], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2216], rax
                        .section         .rodata
.Lrkfn119:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rsp + 2208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx
                        cmp              eax, 104;                            je    n3_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n2_assign_α
n1_call_builtin_icon_β:                                                       jmp   n3_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              rax, qword ptr [rsp + 2192]
                        mov              rdx, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n3_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 5
                        mov              rax, qword ptr [rip + .Lx00002_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n5_subscript_α
.Lx00002_0:               .quad            .Lx00002_0_s
.Lx00002_0_s:             .string          "alpha"
#-----------------------------------------------------------------------------------------------------------------------
n5_subscript_α:         mov              rdi, qword ptr [rsp + 2112]
                        mov              rsi, qword ptr [rsp + 2120]
                        mov              rdx, qword ptr [rsp + 2128]
                        mov              rcx, qword ptr [rsp + 2136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n8_var_ref_α
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              qword ptr [rsp + 2176], 3            # result
                        mov              rax, qword ptr [rip + .Lx00003_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n7_assign_var_α
.Lx00003_0:               .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_var_α:        mov              rdi, qword ptr [rsp + 2144]
                        mov              rsi, qword ptr [rsp + 2152]
                        mov              rdx, qword ptr [rsp + 2176]
                        mov              rcx, qword ptr [rsp + 2184]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n8_var_ref_α
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n8_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx;         jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              qword ptr [rsp + 2048], 2            # result
                        mov              dword ptr [rsp + 2052], 4
                        mov              rax, qword ptr [rip + .Lx00004_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n10_subscript_α
.Lx00004_0:               .quad            .Lx00004_0_s
.Lx00004_0_s:             .string          "beta"
#-----------------------------------------------------------------------------------------------------------------------
n10_subscript_α:        mov              rdi, qword ptr [rsp + 2032]
                        mov              rsi, qword ptr [rsp + 2040]
                        mov              rdx, qword ptr [rsp + 2048]
                        mov              rcx, qword ptr [rsp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n13_var_ref_α
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              qword ptr [rsp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Lx00005_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n12_assign_var_α
.Lx00005_0:               .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_var_α:       mov              rdi, qword ptr [rsp + 2064]
                        mov              rsi, qword ptr [rsp + 2072]
                        mov              rdx, qword ptr [rsp + 2096]
                        mov              rcx, qword ptr [rsp + 2104]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n13_var_ref_α
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx;         jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Lx00006_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n15_subscript_α
.Lx00006_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n15_subscript_α:        mov              rdi, qword ptr [rsp + 1952]
                        mov              rsi, qword ptr [rsp + 1960]
                        mov              rdx, qword ptr [rsp + 1968]
                        mov              rcx, qword ptr [rsp + 1976]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n18_var_ref_α
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              qword ptr [rsp + 2016], 3            # result
                        mov              rax, qword ptr [rip + .Lx00007_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n17_assign_var_α
.Lx00007_0:               .quad            77
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_var_α:       mov              rdi, qword ptr [rsp + 1984]
                        mov              rsi, qword ptr [rsp + 1992]
                        mov              rdx, qword ptr [rsp + 2016]
                        mov              rcx, qword ptr [rsp + 2024]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n18_var_ref_α
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx;         jmp   n18_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx;         jmp   n19_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              qword ptr [rsp + 1888], 3            # result
                        mov              rax, qword ptr [rip + .Lx00008_0]
                        mov              qword ptr [rsp + 1896], rax;         jmp   n20_subscript_α
.Lx00008_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n20_subscript_α:        mov              rdi, qword ptr [rsp + 1872]
                        mov              rsi, qword ptr [rsp + 1880]
                        mov              rdx, qword ptr [rsp + 1888]
                        mov              rcx, qword ptr [rsp + 1896]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n23_var_ref_α
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx;         jmp   n21_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      mov              qword ptr [rsp + 1936], 3            # result
                        mov              rax, qword ptr [rip + .Lx00009_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n22_assign_var_α
.Lx00009_0:               .quad            33
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_var_α:       mov              rdi, qword ptr [rsp + 1904]
                        mov              rsi, qword ptr [rsp + 1912]
                        mov              rdx, qword ptr [rsp + 1936]
                        mov              rcx, qword ptr [rsp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n23_var_ref_α
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n23_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n24_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              qword ptr [rsp + 1808], 3            # result
                        mov              rax, qword ptr [rip + .Lx00010_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n25_subscript_α
.Lx00010_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n25_subscript_α:        mov              rdi, qword ptr [rsp + 1792]
                        mov              rsi, qword ptr [rsp + 1800]
                        mov              rdx, qword ptr [rsp + 1808]
                        mov              rcx, qword ptr [rsp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n28_var_ref_α
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx;         jmp   n26_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              qword ptr [rsp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Lx00011_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n27_assign_var_α
.Lx00011_0:               .quad            99
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_var_α:       mov              rdi, qword ptr [rsp + 1824]
                        mov              rsi, qword ptr [rsp + 1832]
                        mov              rdx, qword ptr [rsp + 1856]
                        mov              rcx, qword ptr [rsp + 1864]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n28_var_ref_α
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n28_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx;         jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              qword ptr [rsp + 1728], 2            # result
                        mov              dword ptr [rsp + 1732], 5
                        mov              rax, qword ptr [rip + .Lx00012_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n30_subscript_α
.Lx00012_0:               .quad            .Lx00012_0_s
.Lx00012_0_s:             .string          "alpha"
#-----------------------------------------------------------------------------------------------------------------------
n30_subscript_α:        mov              rdi, qword ptr [rsp + 1712]
                        mov              rsi, qword ptr [rsp + 1720]
                        mov              rdx, qword ptr [rsp + 1728]
                        mov              rcx, qword ptr [rsp + 1736]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n33_var_ref_α
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n31_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      mov              qword ptr [rsp + 1776], 3            # result
                        mov              rax, qword ptr [rip + .Lx00013_0]
                        mov              qword ptr [rsp + 1784], rax;         jmp   n32_assign_var_α
.Lx00013_0:               .quad            111
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_var_α:       mov              rdi, qword ptr [rsp + 1744]
                        mov              rsi, qword ptr [rsp + 1752]
                        mov              rdx, qword ptr [rsp + 1776]
                        mov              rcx, qword ptr [rsp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n33_var_ref_α
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n34_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], 5
                        mov              rax, qword ptr [rip + .Lx00014_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n35_subscript_α
.Lx00014_0:               .quad            .Lx00014_0_s
.Lx00014_0_s:             .string          "alpha"
#-----------------------------------------------------------------------------------------------------------------------
n35_subscript_α:        mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              rdx, qword ptr [rsp + 1184]
                        mov              rcx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n36_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n36_deref_α:            mov              rdi, qword ptr [rsp + 1200]
                        mov              rsi, qword ptr [rsp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 1
                        mov              rax, qword ptr [rip + .Lx00015_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n38_var_ref_α
.Lx00015_0:               .quad            .Lx00015_0_s
.Lx00015_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n39_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 4
                        mov              rax, qword ptr [rip + .Lx00016_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n40_subscript_α
.Lx00016_0:               .quad            .Lx00016_0_s
.Lx00016_0_s:             .string          "beta"
#-----------------------------------------------------------------------------------------------------------------------
n40_subscript_α:        mov              rdi, qword ptr [rsp + 1248]
                        mov              rsi, qword ptr [rsp + 1256]
                        mov              rdx, qword ptr [rsp + 1264]
                        mov              rcx, qword ptr [rsp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n41_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_deref_α:            mov              rdi, qword ptr [rsp + 1280]
                        mov              rsi, qword ptr [rsp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 1
                        mov              rax, qword ptr [rip + .Lx00017_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n43_var_ref_α
.Lx00017_0:               .quad            .Lx00017_0_s
.Lx00017_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n44_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      mov              qword ptr [rsp + 1344], 3            # result
                        mov              rax, qword ptr [rip + .Lx00018_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n45_subscript_α
.Lx00018_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n45_subscript_α:        mov              rdi, qword ptr [rsp + 1328]
                        mov              rsi, qword ptr [rsp + 1336]
                        mov              rdx, qword ptr [rsp + 1344]
                        mov              rcx, qword ptr [rsp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n46_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n46_deref_α:            mov              rdi, qword ptr [rsp + 1360]
                        mov              rsi, qword ptr [rsp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx;         jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 1
                        mov              rax, qword ptr [rip + .Lx00019_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n48_var_ref_α
.Lx00019_0:               .quad            .Lx00019_0_s
.Lx00019_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n49_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      mov              qword ptr [rsp + 1424], 3            # result
                        mov              rax, qword ptr [rip + .Lx00020_0]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n50_subscript_α
.Lx00020_0:               .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n50_subscript_α:        mov              rdi, qword ptr [rsp + 1408]
                        mov              rsi, qword ptr [rsp + 1416]
                        mov              rdx, qword ptr [rsp + 1424]
                        mov              rcx, qword ptr [rsp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n51_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n51_deref_α:            mov              rdi, qword ptr [rsp + 1440]
                        mov              rsi, qword ptr [rsp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       mov              qword ptr [rsp + 1472], 2            # result
                        mov              dword ptr [rsp + 1476], 1
                        mov              rax, qword ptr [rip + .Lx00021_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n53_var_ref_α
.Lx00021_0:               .quad            .Lx00021_0_s
.Lx00021_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n54_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      mov              qword ptr [rsp + 1504], 3            # result
                        mov              rax, qword ptr [rip + .Lx00022_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n55_subscript_α
.Lx00022_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n55_subscript_α:        mov              rdi, qword ptr [rsp + 1488]
                        mov              rsi, qword ptr [rsp + 1496]
                        mov              rdx, qword ptr [rsp + 1504]
                        mov              rcx, qword ptr [rsp + 1512]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n56_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_deref_α:            mov              rdi, qword ptr [rsp + 1520]
                        mov              rsi, qword ptr [rsp + 1528]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 1
                        mov              rax, qword ptr [rip + .Lx00023_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n58_var_ref_α
.Lx00023_0:               .quad            .Lx00023_0_s
.Lx00023_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx;         jmp   n59_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              qword ptr [rsp + 1584], 2            # result
                        mov              dword ptr [rsp + 1588], 7
                        mov              rax, qword ptr [rip + .Lx00024_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n60_subscript_α
.Lx00024_0:               .quad            .Lx00024_0_s
.Lx00024_0_s:             .string          "missing"
#-----------------------------------------------------------------------------------------------------------------------
n60_subscript_α:        mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              rdx, qword ptr [rsp + 1584]
                        mov              rcx, qword ptr [rsp + 1592]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n61_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n61_deref_α:            mov              rdi, qword ptr [rsp + 1600]
                        mov              rsi, qword ptr [rsp + 1608]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx;         jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              qword ptr [rsp + 1632], 2            # result
                        mov              dword ptr [rsp + 1636], 1
                        mov              rax, qword ptr [rip + .Lx00025_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n63_var_ref_α
.Lx00025_0:               .quad            .Lx00025_0_s
.Lx00025_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx;         jmp   n64_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      mov              qword ptr [rsp + 1664], 3            # result
                        mov              rax, qword ptr [rip + .Lx00026_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n65_subscript_α
.Lx00026_0:               .quad            12345
#-----------------------------------------------------------------------------------------------------------------------
n65_subscript_α:        mov              rdi, qword ptr [rsp + 1648]
                        mov              rsi, qword ptr [rsp + 1656]
                        mov              rdx, qword ptr [rsp + 1664]
                        mov              rcx, qword ptr [rsp + 1672]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx;         jmp   n66_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n66_deref_α:            mov              rdi, qword ptr [rsp + 1680]
                        mov              rsi, qword ptr [rsp + 1688]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx;         jmp   n67_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 952], rax
                        .section         .rodata
.Lrkfn199:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]
                        lea              rsi, [rsp + 944]
                        mov              edx, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              eax, 104;                            je    n68_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n68_lit_integer_α
n67_call_builtin_icon_β:
                                                                              jmp   n68_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:      mov              qword ptr [rsp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Lx00027_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n69_assign_α
.Lx00027_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:           mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n70_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      mov              qword ptr [rsp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Lx00028_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n71_lit_integer_α
.Lx00028_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:      mov              qword ptr [rsp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Lx00029_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n72_to_α
.Lx00029_0:               .quad            5000
#-----------------------------------------------------------------------------------------------------------------------
n72_to_α:               mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 704], 3
                        mov              qword ptr [rsp + 712], rax
                        mov              rdi, qword ptr [rsp + 720]
                        mov              rsi, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 720], 3
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 688], rax
.Lx00030_0:               mov              rax, qword ptr [rsp + 688]
                        mov              rcx, qword ptr [rsp + 728]
                        cmp              rax, rcx;                            jg    n82_lit_integer_α
                        mov              qword ptr [rsp + 672], 3
                        mov              qword ptr [rsp + 680], rax;          jmp   n73_assign_α
n72_to_β:               inc              qword ptr [rsp + 688];               jmp   .Lx00030_0
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:           mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n74_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n74_bound_α:            mov              qword ptr [rsp + 736], rsp;          jmp   n75_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n76_var_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 856], rax;          jmp   n77_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn214:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn214]
                        lea              rsi, [rsp + 816]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              eax, 104;                            je    n81_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n78_subscript_α
n77_call_builtin_icon_β:
                                                                              jmp   n81_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n78_subscript_α:        mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdx, qword ptr [rsp + 800]
                        mov              rcx, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n81_unmark_α
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 904], rax;          jmp   n80_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_var_α:       mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              rdx, qword ptr [rsp + 896]
                        mov              rcx, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n81_unmark_α
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n81_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n81_unmark_α:           mov              rsp, qword ptr [rsp + 736];          jmp   n72_to_β
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx00031_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n83_lit_integer_α
.Lx00031_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lx00032_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n84_to_α
.Lx00032_0:               .quad            5000
#-----------------------------------------------------------------------------------------------------------------------
n84_to_α:               mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 416], 3
                        mov              qword ptr [rsp + 424], rax
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 432], 3
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 400], rax
.Lx00033_0:               mov              rax, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 440]
                        cmp              rax, rcx;                            jg    n98_var_α
                        mov              qword ptr [rsp + 384], 3
                        mov              qword ptr [rsp + 392], rax;          jmp   n85_assign_α
n84_to_β:               inc              qword ptr [rsp + 400];               jmp   .Lx00033_0
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:           mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n86_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n86_bound_α:            mov              qword ptr [rsp + 448], rsp;          jmp   n87_var_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:              mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 552], rax;          jmp   n88_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n89_var_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 632], rax;          jmp   n90_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn235:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn235]
                        lea              rsi, [rsp + 592]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              eax, 104;                            je    n97_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n91_subscript_α
n90_call_builtin_icon_β:
                                                                              jmp   n97_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n91_subscript_α:        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n97_unmark_α
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n92_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n92_deref_α:            mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n97_unmark_α
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n93_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n93_coerce_numeric_α:   mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 5;                              je    .Lx00034_1
                        cmp              eax, 3;                              jne   .Lx00034_0
                        mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 3;                              jne   .Lx00034_0
.Lx00034_1:               mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 536], rax;          jmp   n94_coerce_numeric_α
.Lx00034_0:               lea              rdi, [rsp + 2256]
                        lea              rsi, [rsp + 656]
                        lea              rdx, [rsp + 528]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n94_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n94_coerce_numeric_α:   mov              eax, dword ptr [rsp + 656]
                        cmp              eax, 5;                              je    .Lx00035_1
                        cmp              eax, 3;                              jne   .Lx00035_0
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 3;                              jne   .Lx00035_0
.Lx00035_1:               mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 520], rax;          jmp   n95_binop_α
.Lx00035_0:               lea              rdi, [rsp + 656]
                        lea              rsi, [rsp + 2256]
                        lea              rdx, [rsp + 512]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n95_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n95_binop_α:            mov              eax, dword ptr [rsp + 528]
                        mov              ecx, dword ptr [rsp + 512]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00036_2
                        mov              rax, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 520]
                        add              rax, rdx
                        mov              qword ptr [rsp + 496], 3
                        mov              qword ptr [rsp + 504], rax;          jmp   .Lx00036_7
.Lx00036_2:               and              edx, 1;                              jz    .Lx00036_0
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdi, qword ptr [rsp + 520]
                        cmp              eax, 5;                              je    .Lx00036_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00036_4
.Lx00036_3:               movq             xmm0, rsi
.Lx00036_4:               cmp              ecx, 5;                              je    .Lx00036_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00036_6
.Lx00036_5:               movq             xmm1, rdi
.Lx00036_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 496], 5
                        mov              qword ptr [rsp + 504], rax
.Lx00036_7:                                                                     jmp   n96_assign_α
.Lx00036_0:               mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n97_unmark_α
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n96_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_α:           mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n97_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n97_unmark_α:           mov              rsp, qword ptr [rsp + 448];          jmp   n84_to_β
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:              mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 376], rax;          jmp   n99_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn249:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn249]
                        lea              rsi, [rsp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              eax, 104;                            je    n00037_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00037_lit_integer_α
n99_call_builtin_icon_β:
                                                                              jmp   n00037_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00037_lit_integer_α:     mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx00038_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00039_lit_integer_α
.Lx00038_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00039_lit_integer_α:     mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx00040_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00041_to_α
.Lx00040_0:               .quad            5000
#-----------------------------------------------------------------------------------------------------------------------
n00041_to_α:              mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax
                        mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 128], 3
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 96], rax
.Lx00042_0:               mov              rax, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 136]
                        cmp              rax, rcx;                            jg    n00043_var_α
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax;           jmp   n00044_assign_α
n00041_to_β:              inc              qword ptr [rsp + 96];                jmp   .Lx00042_0
#-----------------------------------------------------------------------------------------------------------------------
n00044_assign_α:          mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n00045_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00045_bound_α:           mov              qword ptr [rsp + 144], rsp;          jmp   n00046_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00046_var_α:             mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00047_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00047_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00048_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00048_var_α:             mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00049_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00049_subscript_α:       mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00050_unmark_α
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n00051_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00051_deref_α:           mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              eax, 104;                            je    n00050_unmark_α
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n00052_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00052_coerce_numeric_α:  mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 5;                              je    .Lx00053_1
                        cmp              eax, 3;                              jne   .Lx00053_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 3;                              jne   .Lx00053_0
.Lx00053_1:               mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00054_coerce_numeric_α
.Lx00053_0:               lea              rdi, [rsp + 2256]
                        lea              rsi, [rsp + 304]
                        lea              rdx, [rsp + 224]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00054_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00054_coerce_numeric_α:  mov              eax, dword ptr [rsp + 304]
                        cmp              eax, 5;                              je    .Lx00055_1
                        cmp              eax, 3;                              jne   .Lx00055_0
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 3;                              jne   .Lx00055_0
.Lx00055_1:               mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00056_binop_α
.Lx00055_0:               lea              rdi, [rsp + 304]
                        lea              rsi, [rsp + 2256]
                        lea              rdx, [rsp + 208]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00056_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00056_binop_α:           mov              eax, dword ptr [rsp + 224]
                        mov              ecx, dword ptr [rsp + 208]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00057_2
                        mov              rax, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 216]
                        add              rax, rdx
                        mov              qword ptr [rsp + 192], 3
                        mov              qword ptr [rsp + 200], rax;          jmp   .Lx00057_7
.Lx00057_2:               and              edx, 1;                              jz    .Lx00057_0
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdi, qword ptr [rsp + 216]
                        cmp              eax, 5;                              je    .Lx00057_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00057_4
.Lx00057_3:               movq             xmm0, rsi
.Lx00057_4:               cmp              ecx, 5;                              je    .Lx00057_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00057_6
.Lx00057_5:               movq             xmm1, rdi
.Lx00057_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 192], 5
                        mov              qword ptr [rsp + 200], rax
.Lx00057_7:                                                                     jmp   n00058_assign_α
.Lx00057_0:               mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n00050_unmark_α
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n00058_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00058_assign_α:          mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n00050_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00050_unmark_α:          mov              rsp, qword ptr [rsp + 144];          jmp   n00041_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00043_var_α:             mov              rax, qword ptr [rsp + 2256]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00059_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00059_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn276:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_γ
n00059_call_builtin_icon_β:
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
                        .section         .note.GNU-stack,"",@progbits
