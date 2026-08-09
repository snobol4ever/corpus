                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
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
                        sub              rsp, 2352
                        mov              qword ptr [rsp + 2328], rcx
                        mov              qword ptr [rsp + 2336], rdx
                        mov              qword ptr [rsp + 2344], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 2320
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00001_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n1_call_builtin_icon_α
.Lx00001_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2216], rax
                        .section         .rodata
.Lrkfn119:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]                         # fn
                        lea              rsi, [rbp + 2208]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 104
                                                                                        je    n3_var_ref_α
                                                                                        jmp   n2_assign_α
n1_call_builtin_icon_β:
                                                                                        jmp   n3_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                                                                                        jmp   n3_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 2128], 2                      # result
                        mov              dword ptr [rbp + 2132], 5
                        mov              rax, qword ptr [rip + .Lx00002_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n5_subscript_α
.Lx00002_0:
                        .quad            .Lx00002_0_s
.Lx00002_0_s:
                        .string          "alpha"
#-----------------------------------------------------------------------------------------------------------------------
n5_subscript_α:
                        mov              rdi, qword ptr [rbp + 2112]                    # base
                        mov              rsi, qword ptr [rbp + 2120]                    # base
                        mov              rdx, qword ptr [rbp + 2128]                    # idx
                        mov              rcx, qword ptr [rbp + 2136]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n8_var_ref_α
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 2176], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00003_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n7_assign_var_α
.Lx00003_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2144]                    # var
                        mov              rsi, qword ptr [rbp + 2152]                    # var
                        mov              rdx, qword ptr [rbp + 2176]                    # val
                        mov              rcx, qword ptr [rbp + 2184]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n8_var_ref_α
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n8_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 2048], 2                      # result
                        mov              dword ptr [rbp + 2052], 4
                        mov              rax, qword ptr [rip + .Lx00004_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n10_subscript_α
.Lx00004_0:
                        .quad            .Lx00004_0_s
.Lx00004_0_s:
                        .string          "beta"
#-----------------------------------------------------------------------------------------------------------------------
n10_subscript_α:
                        mov              rdi, qword ptr [rbp + 2032]                    # base
                        mov              rsi, qword ptr [rbp + 2040]                    # base
                        mov              rdx, qword ptr [rbp + 2048]                    # idx
                        mov              rcx, qword ptr [rbp + 2056]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n13_var_ref_α
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00005_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n12_assign_var_α
.Lx00005_0:
                        .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2064]                    # var
                        mov              rsi, qword ptr [rbp + 2072]                    # var
                        mov              rdx, qword ptr [rbp + 2096]                    # val
                        mov              rcx, qword ptr [rbp + 2104]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n13_var_ref_α
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                                                                                        jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                                                                                        jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 1968], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00006_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n15_subscript_α
.Lx00006_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n15_subscript_α:
                        mov              rdi, qword ptr [rbp + 1952]                    # base
                        mov              rsi, qword ptr [rbp + 1960]                    # base
                        mov              rdx, qword ptr [rbp + 1968]                    # idx
                        mov              rcx, qword ptr [rbp + 1976]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n18_var_ref_α
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 2016], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00007_0]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n17_assign_var_α
.Lx00007_0:
                        .quad            77
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1984]                    # var
                        mov              rsi, qword ptr [rbp + 1992]                    # var
                        mov              rdx, qword ptr [rbp + 2016]                    # val
                        mov              rcx, qword ptr [rbp + 2024]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n18_var_ref_α
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n18_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n19_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 1888], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00008_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n20_subscript_α
.Lx00008_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n20_subscript_α:
                        mov              rdi, qword ptr [rbp + 1872]                    # base
                        mov              rsi, qword ptr [rbp + 1880]                    # base
                        mov              rdx, qword ptr [rbp + 1888]                    # idx
                        mov              rcx, qword ptr [rbp + 1896]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n23_var_ref_α
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n21_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        mov              qword ptr [rbp + 1936], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00009_0]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n22_assign_var_α
.Lx00009_0:
                        .quad            33
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1904]                    # var
                        mov              rsi, qword ptr [rbp + 1912]                    # var
                        mov              rdx, qword ptr [rbp + 1936]                    # val
                        mov              rcx, qword ptr [rbp + 1944]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n23_var_ref_α
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n23_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n24_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rbp + 1808], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00010_0]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n25_subscript_α
.Lx00010_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n25_subscript_α:
                        mov              rdi, qword ptr [rbp + 1792]                    # base
                        mov              rsi, qword ptr [rbp + 1800]                    # base
                        mov              rdx, qword ptr [rbp + 1808]                    # idx
                        mov              rcx, qword ptr [rbp + 1816]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n28_var_ref_α
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n26_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        mov              qword ptr [rbp + 1856], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00011_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n27_assign_var_α
.Lx00011_0:
                        .quad            99
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1824]                    # var
                        mov              rsi, qword ptr [rbp + 1832]                    # var
                        mov              rdx, qword ptr [rbp + 1856]                    # val
                        mov              rcx, qword ptr [rbp + 1864]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n28_var_ref_α
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n28_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 1728], 2                      # result
                        mov              dword ptr [rbp + 1732], 5
                        mov              rax, qword ptr [rip + .Lx00012_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n30_subscript_α
.Lx00012_0:
                        .quad            .Lx00012_0_s
.Lx00012_0_s:
                        .string          "alpha"
#-----------------------------------------------------------------------------------------------------------------------
n30_subscript_α:
                        mov              rdi, qword ptr [rbp + 1712]                    # base
                        mov              rsi, qword ptr [rbp + 1720]                    # base
                        mov              rdx, qword ptr [rbp + 1728]                    # idx
                        mov              rcx, qword ptr [rbp + 1736]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n33_var_ref_α
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n31_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00013_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n32_assign_var_α
.Lx00013_0:
                        .quad            111
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1744]                    # var
                        mov              rsi, qword ptr [rbp + 1752]                    # var
                        mov              rdx, qword ptr [rbp + 1776]                    # val
                        mov              rcx, qword ptr [rbp + 1784]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n33_var_ref_α
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n34_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 1184], 2                      # result
                        mov              dword ptr [rbp + 1188], 5
                        mov              rax, qword ptr [rip + .Lx00014_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n35_subscript_α
.Lx00014_0:
                        .quad            .Lx00014_0_s
.Lx00014_0_s:
                        .string          "alpha"
#-----------------------------------------------------------------------------------------------------------------------
n35_subscript_α:
                        mov              rdi, qword ptr [rbp + 1168]                    # base
                        mov              rsi, qword ptr [rbp + 1176]                    # base
                        mov              rdx, qword ptr [rbp + 1184]                    # idx
                        mov              rcx, qword ptr [rbp + 1192]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n36_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n36_deref_α:
                        mov              rdi, qword ptr [rbp + 1200]                    # d
                        mov              rsi, qword ptr [rbp + 1208]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n37_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 1232], 2                      # result
                        mov              dword ptr [rbp + 1236], 1
                        mov              rax, qword ptr [rip + .Lx00015_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n38_var_ref_α
.Lx00015_0:
                        .quad            .Lx00015_0_s
.Lx00015_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n39_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 1264], 2                      # result
                        mov              dword ptr [rbp + 1268], 4
                        mov              rax, qword ptr [rip + .Lx00016_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n40_subscript_α
.Lx00016_0:
                        .quad            .Lx00016_0_s
.Lx00016_0_s:
                        .string          "beta"
#-----------------------------------------------------------------------------------------------------------------------
n40_subscript_α:
                        mov              rdi, qword ptr [rbp + 1248]                    # base
                        mov              rsi, qword ptr [rbp + 1256]                    # base
                        mov              rdx, qword ptr [rbp + 1264]                    # idx
                        mov              rcx, qword ptr [rbp + 1272]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n41_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_deref_α:
                        mov              rdi, qword ptr [rbp + 1280]                    # d
                        mov              rsi, qword ptr [rbp + 1288]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n42_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 1312], 2                      # result
                        mov              dword ptr [rbp + 1316], 1
                        mov              rax, qword ptr [rip + .Lx00017_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n43_var_ref_α
.Lx00017_0:
                        .quad            .Lx00017_0_s
.Lx00017_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n44_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:
                        mov              qword ptr [rbp + 1344], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00018_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n45_subscript_α
.Lx00018_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n45_subscript_α:
                        mov              rdi, qword ptr [rbp + 1328]                    # base
                        mov              rsi, qword ptr [rbp + 1336]                    # base
                        mov              rdx, qword ptr [rbp + 1344]                    # idx
                        mov              rcx, qword ptr [rbp + 1352]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n46_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n46_deref_α:
                        mov              rdi, qword ptr [rbp + 1360]                    # d
                        mov              rsi, qword ptr [rbp + 1368]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n47_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 1392], 2                      # result
                        mov              dword ptr [rbp + 1396], 1
                        mov              rax, qword ptr [rip + .Lx00019_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n48_var_ref_α
.Lx00019_0:
                        .quad            .Lx00019_0_s
.Lx00019_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n49_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        mov              qword ptr [rbp + 1424], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00020_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n50_subscript_α
.Lx00020_0:
                        .quad            18446744073709551613
#-----------------------------------------------------------------------------------------------------------------------
n50_subscript_α:
                        mov              rdi, qword ptr [rbp + 1408]                    # base
                        mov              rsi, qword ptr [rbp + 1416]                    # base
                        mov              rdx, qword ptr [rbp + 1424]                    # idx
                        mov              rcx, qword ptr [rbp + 1432]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n51_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n51_deref_α:
                        mov              rdi, qword ptr [rbp + 1440]                    # d
                        mov              rsi, qword ptr [rbp + 1448]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n52_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 1472], 2                      # result
                        mov              dword ptr [rbp + 1476], 1
                        mov              rax, qword ptr [rip + .Lx00021_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n53_var_ref_α
.Lx00021_0:
                        .quad            .Lx00021_0_s
.Lx00021_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n54_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:
                        mov              qword ptr [rbp + 1504], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00022_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n55_subscript_α
.Lx00022_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n55_subscript_α:
                        mov              rdi, qword ptr [rbp + 1488]                    # base
                        mov              rsi, qword ptr [rbp + 1496]                    # base
                        mov              rdx, qword ptr [rbp + 1504]                    # idx
                        mov              rcx, qword ptr [rbp + 1512]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n56_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_deref_α:
                        mov              rdi, qword ptr [rbp + 1520]                    # d
                        mov              rsi, qword ptr [rbp + 1528]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 1552], 2                      # result
                        mov              dword ptr [rbp + 1556], 1
                        mov              rax, qword ptr [rip + .Lx00023_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n58_var_ref_α
.Lx00023_0:
                        .quad            .Lx00023_0_s
.Lx00023_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n59_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 1584], 2                      # result
                        mov              dword ptr [rbp + 1588], 7
                        mov              rax, qword ptr [rip + .Lx00024_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n60_subscript_α
.Lx00024_0:
                        .quad            .Lx00024_0_s
.Lx00024_0_s:
                        .string          "missing"
#-----------------------------------------------------------------------------------------------------------------------
n60_subscript_α:
                        mov              rdi, qword ptr [rbp + 1568]                    # base
                        mov              rsi, qword ptr [rbp + 1576]                    # base
                        mov              rdx, qword ptr [rbp + 1584]                    # idx
                        mov              rcx, qword ptr [rbp + 1592]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n61_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n61_deref_α:
                        mov              rdi, qword ptr [rbp + 1600]                    # d
                        mov              rsi, qword ptr [rbp + 1608]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n62_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 1632], 2                      # result
                        mov              dword ptr [rbp + 1636], 1
                        mov              rax, qword ptr [rip + .Lx00025_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n63_var_ref_α
.Lx00025_0:
                        .quad            .Lx00025_0_s
.Lx00025_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n64_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:
                        mov              qword ptr [rbp + 1664], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00026_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n65_subscript_α
.Lx00026_0:
                        .quad            12345
#-----------------------------------------------------------------------------------------------------------------------
n65_subscript_α:
                        mov              rdi, qword ptr [rbp + 1648]                    # base
                        mov              rsi, qword ptr [rbp + 1656]                    # base
                        mov              rdx, qword ptr [rbp + 1664]                    # idx
                        mov              rcx, qword ptr [rbp + 1672]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n66_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n66_deref_α:
                        mov              rdi, qword ptr [rbp + 1680]                    # d
                        mov              rsi, qword ptr [rbp + 1688]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n67_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 952], rax
                        .section         .rodata
.Lrkfn199:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]                         # fn
                        lea              rsi, [rbp + 944]                               # args
                        mov              edx, 13                                        # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 104
                                                                                        je    n68_lit_integer_α
                                                                                        jmp   n68_lit_integer_α
n67_call_builtin_icon_β:
                                                                                        jmp   n68_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:
                        mov              qword ptr [rbp + 912], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00027_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n69_assign_α
.Lx00027_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n70_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:
                        mov              qword ptr [rbp + 704], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00028_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n71_lit_integer_α
.Lx00028_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:
                        mov              qword ptr [rbp + 720], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00029_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n72_to_α
.Lx00029_0:
                        .quad            5000
#-----------------------------------------------------------------------------------------------------------------------
n72_to_α:
                        mov              rdi, qword ptr [rbp + 704]                     # v
                        mov              rsi, qword ptr [rbp + 712]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 704], 3
                        mov              qword ptr [rbp + 712], rax
                        mov              rdi, qword ptr [rbp + 720]                     # v
                        mov              rsi, qword ptr [rbp + 728]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 720], 3
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 688], rax
.Lx00030_0:
                        mov              rax, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 728]
                        cmp              rax, rcx
                                                                                        jg    n82_lit_integer_α
                        mov              qword ptr [rbp + 672], 3
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n73_assign_α
n72_to_β:
                        inc              qword ptr [rbp + 688]
                                                                                        jmp   .Lx00030_0
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n74_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n74_bound_α:
                        mov              qword ptr [rbp + 736], rsp
                                                                                        jmp   n75_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n76_var_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n77_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lrkfn214:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn214]                         # fn
                        lea              rsi, [rbp + 816]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 104
                                                                                        je    n81_unmark_α
                                                                                        jmp   n78_subscript_α
n77_call_builtin_icon_β:
                                                                                        jmp   n81_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n78_subscript_α:
                        mov              rdi, qword ptr [rbp + 784]                     # base
                        mov              rsi, qword ptr [rbp + 792]                     # base
                        mov              rdx, qword ptr [rbp + 800]                     # idx
                        mov              rcx, qword ptr [rbp + 808]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n81_unmark_α
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n79_var_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n80_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_var_α:
                        mov              rdi, qword ptr [rbp + 864]                     # var
                        mov              rsi, qword ptr [rbp + 872]                     # var
                        mov              rdx, qword ptr [rbp + 896]                     # val
                        mov              rcx, qword ptr [rbp + 904]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n81_unmark_α
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n81_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n81_unmark_α:
                        mov              rsp, qword ptr [rbp + 736]
                                                                                        jmp   n72_to_β
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00031_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n83_lit_integer_α
.Lx00031_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:
                        mov              qword ptr [rbp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00032_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n84_to_α
.Lx00032_0:
                        .quad            5000
#-----------------------------------------------------------------------------------------------------------------------
n84_to_α:
                        mov              rdi, qword ptr [rbp + 416]                     # v
                        mov              rsi, qword ptr [rbp + 424]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 416], 3
                        mov              qword ptr [rbp + 424], rax
                        mov              rdi, qword ptr [rbp + 432]                     # v
                        mov              rsi, qword ptr [rbp + 440]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 432], 3
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 400], rax
.Lx00033_0:
                        mov              rax, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 440]
                        cmp              rax, rcx
                                                                                        jg    n98_var_α
                        mov              qword ptr [rbp + 384], 3
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n85_assign_α
n84_to_β:
                        inc              qword ptr [rbp + 400]
                                                                                        jmp   .Lx00033_0
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n86_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n86_bound_α:
                        mov              qword ptr [rbp + 448], rsp
                                                                                        jmp   n87_var_α
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n88_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n89_var_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n90_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn235:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn235]                         # fn
                        lea              rsi, [rbp + 592]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    n97_unmark_α
                                                                                        jmp   n91_subscript_α
n90_call_builtin_icon_β:
                                                                                        jmp   n97_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n91_subscript_α:
                        mov              rdi, qword ptr [rbp + 560]                     # base
                        mov              rsi, qword ptr [rbp + 568]                     # base
                        mov              rdx, qword ptr [rbp + 576]                     # idx
                        mov              rcx, qword ptr [rbp + 584]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n97_unmark_α
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n92_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n92_deref_α:
                        mov              rdi, qword ptr [rbp + 640]                     # d
                        mov              rsi, qword ptr [rbp + 648]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n97_unmark_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n93_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n93_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 5
                                                                                        je    .Lx00034_1
                        cmp              eax, 3
                                                                                        jne   .Lx00034_0
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 3
                                                                                        jne   .Lx00034_0
.Lx00034_1:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n94_coerce_numeric_α
.Lx00034_0:
                        lea              rdi, [rbp + 2256]                              # self
                        lea              rsi, [rbp + 656]                               # other
                        lea              rdx, [rbp + 528]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n94_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n94_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 5
                                                                                        je    .Lx00035_1
                        cmp              eax, 3
                                                                                        jne   .Lx00035_0
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 3
                                                                                        jne   .Lx00035_0
.Lx00035_1:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n95_binop_α
.Lx00035_0:
                        lea              rdi, [rbp + 656]                               # self
                        lea              rsi, [rbp + 2256]                              # other
                        lea              rdx, [rbp + 512]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n95_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n95_binop_α:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 3
                                                                                        jne   .Lx00036_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 3
                                                                                        jne   .Lx00036_0
                        mov              rax, qword ptr [rbp + 536]
                        mov              rcx, qword ptr [rbp + 520]
                        add              rax, rcx
                        mov              qword ptr [rbp + 496], 3
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n96_assign_α
.Lx00036_0:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n97_unmark_α
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n96_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n97_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n97_unmark_α:
                        mov              rsp, qword ptr [rbp + 448]
                                                                                        jmp   n84_to_β
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n99_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn249:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn249]                         # fn
                        lea              rsi, [rbp + 336]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n00037_lit_integer_α
                                                                                        jmp   n00037_lit_integer_α
n99_call_builtin_icon_β:
                                                                                        jmp   n00037_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00037_lit_integer_α:
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00038_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00039_lit_integer_α
.Lx00038_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00039_lit_integer_α:
                        mov              qword ptr [rbp + 128], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00040_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00041_to_α
.Lx00040_0:
                        .quad            5000
#-----------------------------------------------------------------------------------------------------------------------
n00041_to_α:
                        mov              rdi, qword ptr [rbp + 112]                     # v
                        mov              rsi, qword ptr [rbp + 120]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax
                        mov              rdi, qword ptr [rbp + 128]                     # v
                        mov              rsi, qword ptr [rbp + 136]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 96], rax
.Lx00042_0:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 136]
                        cmp              rax, rcx
                                                                                        jg    n00043_var_α
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00044_assign_α
n00041_to_β:
                        inc              qword ptr [rbp + 96]
                                                                                        jmp   .Lx00042_0
#-----------------------------------------------------------------------------------------------------------------------
n00044_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n00045_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00045_bound_α:
                        mov              qword ptr [rbp + 144], rsp
                                                                                        jmp   n00046_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00046_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00047_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00047_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00048_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00048_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00049_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00049_subscript_α:
                        mov              rdi, qword ptr [rbp + 256]                     # base
                        mov              rsi, qword ptr [rbp + 264]                     # base
                        mov              rdx, qword ptr [rbp + 272]                     # idx
                        mov              rcx, qword ptr [rbp + 280]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00050_unmark_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00051_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00051_deref_α:
                        mov              rdi, qword ptr [rbp + 288]                     # d
                        mov              rsi, qword ptr [rbp + 296]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00050_unmark_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n00052_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00052_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 5
                                                                                        je    .Lx00053_1
                        cmp              eax, 3
                                                                                        jne   .Lx00053_0
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 3
                                                                                        jne   .Lx00053_0
.Lx00053_1:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n00054_coerce_numeric_α
.Lx00053_0:
                        lea              rdi, [rbp + 2256]                              # self
                        lea              rsi, [rbp + 304]                               # other
                        lea              rdx, [rbp + 224]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00054_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00054_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 5
                                                                                        je    .Lx00055_1
                        cmp              eax, 3
                                                                                        jne   .Lx00055_0
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 3
                                                                                        jne   .Lx00055_0
.Lx00055_1:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00056_binop_α
.Lx00055_0:
                        lea              rdi, [rbp + 304]                               # self
                        lea              rsi, [rbp + 2256]                              # other
                        lea              rdx, [rbp + 208]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00056_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00056_binop_α:
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 3
                                                                                        jne   .Lx00057_0
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 3
                                                                                        jne   .Lx00057_0
                        mov              rax, qword ptr [rbp + 232]
                        mov              rcx, qword ptr [rbp + 216]
                        add              rax, rcx
                        mov              qword ptr [rbp + 192], 3
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00058_assign_α
.Lx00057_0:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00050_unmark_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00058_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00058_assign_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n00050_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00050_unmark_α:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n00041_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00043_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00059_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00059_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn276:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]                         # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n00059_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 2352]
                        mov              rcx, qword ptr [rbp + 2328]
                        mov              rbp, qword ptr [rbp + 2344]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        lea              rsp, [rbp + 2352]
                        mov              rcx, qword ptr [rbp + 2336]
                        mov              rbp, qword ptr [rbp + 2344]
                                                                                        jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
