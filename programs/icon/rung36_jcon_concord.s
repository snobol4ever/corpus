                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
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
                        sub              rsp, 2584
                        mov              rdi, rsp
                        mov              ecx, 2584
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 2576], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_charset_α:
                        mov              qword ptr [rbp + 2352], 1
                        mov              dword ptr [rbp + 2356], -1
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 2360], rax
                                                                                        jmp   n1_lit_charset_α
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_charset_α:
                        mov              qword ptr [rbp + 2368], 1
                        mov              dword ptr [rbp + 2372], -1
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n2_binop_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n2_binop_α:
                        mov              rdi, qword ptr [rbp + 2352]
                        mov              rsi, qword ptr [rbp + 2360]
                        mov              rdx, qword ptr [rbp + 2368]
                        mov              rcx, qword ptr [rbp + 2376]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    n4_lit_string_α
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n3_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_charset_α:
                        mov              qword ptr [rbp + 2384], 1
                        mov              dword ptr [rbp + 2388], -1
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n5_binop_α
.Lx127_0:
                        .quad            .Lx127_0_s
.Lx127_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 2304], 1
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n6_call_builtin_icon_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n5_binop_α:
                        mov              rdi, qword ptr [rbp + 2336]
                        mov              rsi, qword ptr [rbp + 2344]
                        mov              rdx, qword ptr [rbp + 2384]
                        mov              rcx, qword ptr [rbp + 2392]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    n4_lit_string_α
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                                                                                        jmp   n7_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2280], rax
                        .section         .rodata
.Lrkfn131:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn131]
                        lea              rsi, [rbp + 2272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 99
                                                                                        je    n9_lit_integer_α
                                                                                        jmp   n8_assign_α
n6_call_builtin_icon_β:
                                                                                        jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              rdx, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 6
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n10_assign_α
.Lx134_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n11_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              rdx, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn138:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn138]
                        lea              rsi, [rbp + 912]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n14_call_builtin_icon_α
                                                                                        jmp   n13_assign_α
n12_call_builtin_icon_β:
                                                                                        jmp   n14_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n15_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn141:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rbp + 880]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n16_var_α
                                                                                        jmp   n16_var_α
n14_call_builtin_icon_β:
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n17_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n19_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:
                        mov              qword ptr [rbp + 2208], 6
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n21_op75_α
.Lx146_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n22_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lrkfn150:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn150]
                        lea              rsi, [rbp + 816]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n20_lit_integer_α
                                                                                        jmp   n24_assign_α
n19_call_builtin_icon_β:
                                                                                        jmp   n20_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n25_assign_α
.Lx151_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n21_op75_α:
                        mov              eax, dword ptr [rbp + 2560]
                        cmp              eax, 7
                                                                                        je    .Lx153_1
                        cmp              eax, 6
                                                                                        jne   .Lx153_0
                        mov              eax, dword ptr [rbp + 2208]
                        cmp              eax, 6
                                                                                        jne   .Lx153_0
.Lx153_1:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n26_binop_α
.Lx153_0:
                        lea              rdi, [rbp + 2560]
                        lea              rsi, [rbp + 2208]
                        lea              rdx, [rbp + 2176]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n26_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 2112], 6
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n27_call_builtin_icon_α
.Lx154_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 1944], rax
                                                                                        jmp   n28_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n20_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_binop_α:
                        mov              eax, dword ptr [rbp + 2176]
                        cmp              eax, 6
                                                                                        jne   .Lx159_0
                        mov              rax, qword ptr [rbp + 2184]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 2160], 6
                        mov              qword ptr [rbp + 2168], rax
                                                                                        jmp   n31_assign_α
.Lx159_0:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2208]
                        mov              rcx, qword ptr [rbp + 2216]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n18_var_α
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n31_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2072], rax
                        .section         .rodata
.Lrkfn161:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn161]
                        lea              rsi, [rbp + 2048]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    n23_var_α
                                                                                        jmp   n32_lit_string_α
n27_call_builtin_icon_β:
                                                                                        jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax
                        .section         .rodata
.Lrkfn163:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn163]
                        lea              rsi, [rbp + 1904]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n29_lit_integer_α
                                                                                        jmp   n33_assign_α
n28_call_builtin_icon_β:
                                                                                        jmp   n29_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        mov              qword ptr [rbp + 1872], 6
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n34_assign_α
.Lx164_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n35_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              rdx, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n18_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n36_var_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              rdx, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n29_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n38_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n39_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        mov              qword ptr [rbp + 96], 6
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n41_op75_α
.Lx177_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2008], rax
                        .section         .rodata
.Lrkfn179:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn179]
                        lea              rsi, [rbp + 1968]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n23_var_α
                                                                                        jmp   n23_var_α
n39_call_builtin_icon_β:
                                                                                        jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_op75_α:
                        mov              eax, dword ptr [rbp + 2432]
                        cmp              eax, 7
                                                                                        je    .Lx183_1
                        cmp              eax, 6
                                                                                        jne   .Lx183_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 6
                                                                                        jne   .Lx183_0
.Lx183_1:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n43_binop_α
.Lx183_0:
                        lea              rdi, [rbp + 2432]
                        lea              rsi, [rbp + 96]
                        lea              rdx, [rbp + 64]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n43_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n44_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n43_binop_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 6
                                                                                        jne   .Lx186_0
                        mov              rax, qword ptr [rbp + 72]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 48], 6
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n45_assign_α
.Lx186_0:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    main_ω
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n45_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 984], rax
                        mov              qword ptr [rbp + 992], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx187_60:
                        .section         .rodata
.Lbynamegenfn45:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn45]
                        lea              rsi, [rbp + 944]
                        mov              edx, 3
                        lea              rcx, [rbp + 992]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n12_call_builtin_icon_α
                                                                                        jmp   n46_assign_α
n44_call_builtin_gen_β:
                                                                                        jmp   .Lx187_60
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n47_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n46_assign_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n48_var_α
#-----------------------------------------------------------------------------------------------------------------------
n47_subscript_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    main_ω
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n49_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n52_subscript_α
.Lx193_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n52_subscript_α:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    main_ω
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n56_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n57_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n58_var_α
#-----------------------------------------------------------------------------------------------------------------------
n55_disjunction_α:
                        mov              qword ptr [rbp + 1584], 0
                        mov              qword ptr [rbp + 1592], 0
                        mov              dword ptr [rbp + 1600], 0
                                                                                        jmp   n60_var_α
n55_disjunction_as:
                        mov              eax, dword ptr [rbp + 1600]
                        cmp              eax, 0
                                                                                        jne   .Lx204_0
                                                                                        jmp   n59_var_α
.Lx204_0:
                                                                                        jmp   n59_var_α
n55_disjunction_β:
                        mov              eax, dword ptr [rbp + 1600]
                                                                                        jmp   n59_var_α
n55_disjunction_af:
                        add              dword ptr [rbp + 1600], 1
                        mov              eax, dword ptr [rbp + 1600]
                                                                                        jmp   n59_var_α
#-----------------------------------------------------------------------------------------------------------------------
n56_deref_α:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    main_ω
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n61_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n57_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn58:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn58]
                        lea              rsi, [rbp + 1760]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n51_var_α
                                                                                        jmp   n62_assign_α
n57_call_builtin_icon_β:
                                                                                        jmp   n51_var_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n63_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n64_var_α
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n66_unop_α
n60_var_β:
                                                                                        jmp   n55_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n67_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n51_var_α
#-----------------------------------------------------------------------------------------------------------------------
n63_subscript_α:
                        mov              rdi, qword ptr [rbp + 1696]
                        mov              rsi, qword ptr [rbp + 1704]
                        mov              rdx, qword ptr [rbp + 1712]
                        mov              rcx, qword ptr [rbp + 1720]
                        mov              r8, qword ptr [rbp + 1728]
                        mov              r9, qword ptr [rbp + 1736]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n55_disjunction_α
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n68_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n69_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n65_disjunction_α:
                        mov              qword ptr [rbp + 1072], 0
                        mov              qword ptr [rbp + 1080], 0
                        mov              dword ptr [rbp + 1088], 0
                                                                                        jmp   n71_var_ref_α
n65_disjunction_as:
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 0
                                                                                        jne   .Lx219_0
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n70_conjunction_α
.Lx219_0:
                        cmp              eax, 1
                                                                                        jne   .Lx219_1
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n70_conjunction_α
.Lx219_1:
                                                                                        jmp   n70_conjunction_α
n65_disjunction_β:
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 0
                                                                                        je    n37_var_α
                                                                                        jmp   n37_var_α
n65_disjunction_af:
                        add              dword ptr [rbp + 1088], 1
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 1
                                                                                        je    n72_var_ref_α
                                                                                        jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n66_unop_α:
                        mov              rdi, qword ptr [rbp + 2400]
                        mov              rsi, qword ptr [rbp + 2408]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                                                                                        jmp   n75_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx221_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n76_assign_α
.Lx221_0:
                        .quad            .Lx221_0_s
.Lx221_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                                                                                        jmp   n55_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n69_unop_α:
                        mov              rdi, qword ptr [rbp + 2400]
                        mov              rsi, qword ptr [rbp + 2408]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n77_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n70_conjunction_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n37_var_α
n70_conjunction_β:
                                                                                        jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n78_var_α
n71_var_ref_β:
                                                                                        jmp   n65_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n79_var_α
n72_var_ref_β:
                                                                                        jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1168]
                        mov              rcx, qword ptr [rbp + 1176]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n37_var_α
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n65_disjunction_as
n73_assign_var_β:
                                                                                        jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n74_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1416], rax
                        .section         .rodata
.Lrkfn231:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn231]
                        lea              rsi, [rbp + 1392]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n37_var_α
                                                                                        jmp   n65_disjunction_as
n74_call_builtin_icon_β:
                                                                                        jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:
                        mov              qword ptr [rbp + 1664], 6
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n80_binop_test_α
.Lx232_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n81_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n77_binop_test_α:
                        mov              eax, dword ptr [rbp + 2448]
                        cmp              eax, 100
                                                                                        je    .Lx234_0
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 100
                                                                                        je    .Lx234_0
                        mov              eax, dword ptr [rbp + 2448]
                        cmp              eax, 6
                                                                                        jne   .Lx234_2
                        mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 6
                                                                                        jne   .Lx234_2
.Lx234_1:
                        mov              rax, qword ptr [rbp + 2456]
                        mov              rcx, qword ptr [rbp + 1560]
                        cmp              rax, rcx
                                                                                        jge   n65_disjunction_α
                        mov              rcx, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rcx
                        mov              rcx, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rcx
                                                                                        jmp   n82_assign_α
.Lx234_0:
                        mov              rdi, qword ptr [rbp + 2448]
                        mov              rsi, qword ptr [rbp + 2456]
                        mov              rdx, qword ptr [rbp + 1552]
                        mov              rcx, qword ptr [rbp + 1560]
                        mov              r8d, 5
                        lea              r9, [rbp + 1520]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx234_1
                        cmp              eax, 1
                                                                                        je    n65_disjunction_α
                                                                                        jmp   n82_assign_α
.Lx234_2:
                        mov              rdi, qword ptr [rbp + 2448]
                        mov              rsi, qword ptr [rbp + 2456]
                        mov              rdx, qword ptr [rbp + 1552]
                        mov              rcx, qword ptr [rbp + 1560]
                        mov              r8d, 5
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n65_disjunction_α
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n82_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n83_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n84_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n80_binop_test_α:
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 100
                                                                                        je    .Lx239_0
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 100
                                                                                        je    .Lx239_0
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 6
                                                                                        jne   .Lx239_2
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 6
                                                                                        jne   .Lx239_2
.Lx239_1:
                        mov              rax, qword ptr [rbp + 1640]
                        mov              rcx, qword ptr [rbp + 1672]
                        cmp              rax, rcx
                                                                                        jge   n55_disjunction_af
                        mov              rcx, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rcx
                        mov              rcx, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rcx
                                                                                        jmp   n37_var_α
.Lx239_0:
                        mov              rdi, qword ptr [rbp + 1632]
                        mov              rsi, qword ptr [rbp + 1640]
                        mov              rdx, qword ptr [rbp + 1664]
                        mov              rcx, qword ptr [rbp + 1672]
                        mov              r8d, 5
                        lea              r9, [rbp + 1616]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx239_1
                        cmp              eax, 1
                                                                                        je    n55_disjunction_af
                                                                                        jmp   n37_var_α
.Lx239_2:
                        mov              rdi, qword ptr [rbp + 1632]
                        mov              rsi, qword ptr [rbp + 1640]
                        mov              rdx, qword ptr [rbp + 1664]
                        mov              rcx, qword ptr [rbp + 1672]
                        mov              r8d, 5
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n55_disjunction_af
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2416]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n85_var_α
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              rdx, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n65_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n83_subscript_α:
                        mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n65_disjunction_af
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n86_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n84_subscript_α:
                        mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        mov              rdx, qword ptr [rbp + 1456]
                        mov              rcx, qword ptr [rbp + 1464]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n37_var_α
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n87_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n88_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n86_deref_α:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n65_disjunction_af
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n90_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n87_deref_α:
                        mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n37_var_α
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n91_var_α
#-----------------------------------------------------------------------------------------------------------------------
n88_subscript_α:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n89_var_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n92_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n93_var_α
#-----------------------------------------------------------------------------------------------------------------------
n90_unop_α:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n95_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n74_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:
                        mov              qword ptr [rbp + 720], 6
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n96_subscript_α
.Lx255_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n97_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n98_var_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:
                        mov              qword ptr [rbp + 1360], 6
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n99_binop_test_α
.Lx260_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n96_subscript_α:
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n89_var_α
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n100_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn263:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn263]
                        lea              rsi, [rbp + 560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n94_var_α
                                                                                        jmp   n101_lit_string_α
n97_call_builtin_icon_β:
                                                                                        jmp   n94_var_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n102_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n99_binop_test_α:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 100
                                                                                        je    .Lx266_0
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 100
                                                                                        je    .Lx266_0
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 6
                                                                                        jne   .Lx266_2
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 6
                                                                                        jne   .Lx266_2
.Lx266_1:
                        mov              rax, qword ptr [rbp + 1288]
                        mov              rcx, qword ptr [rbp + 1368]
                        cmp              rax, rcx
                                                                                        jne   n65_disjunction_af
                        mov              rcx, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1264], rcx
                        mov              rcx, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1272], rcx
                                                                                        jmp   n103_var_ref_α
.Lx266_0:
                        mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              rdx, qword ptr [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1368]
                        mov              r8d, 9
                        lea              r9, [rbp + 1264]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx266_1
                        cmp              eax, 1
                                                                                        je    n65_disjunction_af
                                                                                        jmp   n103_var_ref_α
.Lx266_2:
                        mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              rdx, qword ptr [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1368]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n65_disjunction_af
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n103_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n100_deref_α:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n89_var_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n104_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n105_binop_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n106_op75_α
.Lx269_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n103_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2496]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n107_var_α
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn273:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn273]
                        lea              rsi, [rbp + 640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n89_var_α
                                                                                        jmp   n108_assign_α
n104_call_builtin_icon_β:
                                                                                        jmp   n89_var_α
#-----------------------------------------------------------------------------------------------------------------------
n105_binop_α:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n109_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n106_op75_α:
                        mov              eax, dword ptr [rbp + 2448]
                        cmp              eax, 7
                                                                                        je    .Lx276_1
                        cmp              eax, 6
                                                                                        jne   .Lx276_0
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 6
                                                                                        jne   .Lx276_0
.Lx276_1:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n110_binop_α
.Lx276_0:
                        lea              rdi, [rbp + 2448]
                        lea              rsi, [rbp + 400]
                        lea              rdx, [rbp + 368]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n110_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n111_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n89_var_α
#-----------------------------------------------------------------------------------------------------------------------
n109_binop_α:
                        mov              rdi, qword ptr [rbp + 2464]
                        mov              rsi, qword ptr [rbp + 2472]
                        mov              rdx, qword ptr [rbp + 528]
                        mov              rcx, qword ptr [rbp + 536]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n112_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n110_binop_α:
                        mov              eax, dword ptr [rbp + 368]
                        cmp              eax, 6
                                                                                        jne   .Lx281_0
                        mov              rax, qword ptr [rbp + 376]
                        mov              rcx, 2
                        add              rax, rcx
                        mov              qword ptr [rbp + 352], 6
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n113_call_builtin_icon_α
.Lx281_0:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n30_var_ref_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n113_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n111_subscript_α:
                        mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        mov              rdx, qword ptr [rbp + 1120]
                        mov              rcx, qword ptr [rbp + 1128]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n37_var_α
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n114_var_α
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n89_var_α
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn285:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn285]
                        lea              rsi, [rbp + 288]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n30_var_ref_α
                                                                                        jmp   n115_lit_string_α
n113_call_builtin_icon_β:
                                                                                        jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n114_var_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n116_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n117_var_α
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n116_make_list_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 1
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n118_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n119_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        .section         .rodata
.Lrkfn294:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn294]
                        lea              rsi, [rbp + 1184]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n37_var_α
                                                                                        jmp   n73_assign_var_α
n118_call_builtin_icon_β:
                                                                                        jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n120_lit_integer_α
.Lx295_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n121_subscript_α
.Lx296_0:
                        .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n121_subscript_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        mov              r8, qword ptr [rbp + 480]
                        mov              r9, qword ptr [rbp + 488]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n30_var_ref_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n122_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn299:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn299]
                        lea              rsi, [rbp + 208]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n30_var_ref_α
                                                                                        jmp   n123_conjunction_α
n122_call_builtin_icon_β:
                                                                                        jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n123_conjunction_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n30_var_ref_α
n123_conjunction_β:
                                                                                        jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 2576]
                        add              rsp, 2584
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 2576]
                        add              rsp, 2584
                        ret
                        .section         .note.GNU-stack,"",@progbits
