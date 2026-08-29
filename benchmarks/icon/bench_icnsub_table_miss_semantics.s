                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 2592
                        mov              rdi, rsp
                        add              rdi, 2448
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        .type            n0_lit_integer_bx, @function
n0_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rsp + 2432], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_117_0]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n1_call_icon_α
.Lmain_α_117_0:         .quad            0
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_call_icon_bx, @function
n1_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_call_icon_α:         mov              r11, 2
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2408], rax
                        .section         .rodata
.Lrkfn119:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rsp + 2400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              al, 104;                             je    n3_var_ref_α
                                                                              jmp   n2_assign_α
n1_call_icon_β:         mov              r11, 2;                              jmp   n3_var_ref_α
                        .size            n1_call_icon_bx, .-n1_call_icon_bx
                        .type            n2_assign_bx, @function
n2_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rsp + 2384]
                        mov              rdx, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx;         jmp   n3_var_ref_α
                        .size            n2_assign_bx, .-n2_assign_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2480]
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx;         jmp   n4_lit_string_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_lit_string_bx, @function
n4_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rsp + 2304], 2            # result
                        mov              dword ptr [rsp + 2308], 5
                        mov              rax, qword ptr [rip + .Lmain_α_123_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n5_subscript_α
.Lmain_α_123_0:         .quad            .Lmain_α_123_0_s
.Lmain_α_123_0_s:       .string          "alpha"
                        .size            n4_lit_string_bx, .-n4_lit_string_bx
                        .type            n5_subscript_bx, @function
n5_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_subscript_α:         mov              r11, 6
                        mov              rdi, qword ptr [rsp + 2288]
                        mov              rsi, qword ptr [rsp + 2296]
                        mov              rdx, qword ptr [rsp + 2304]
                        mov              rcx, qword ptr [rsp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n8_var_ref_α
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n6_lit_integer_α
                        .size            n5_subscript_bx, .-n5_subscript_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rsp + 2368], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_125_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n7_assign_var_α
.Lmain_α_125_0:         .quad            11
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_assign_var_bx, @function
n7_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_var_α:        mov              r11, 8
                        mov              rdi, qword ptr [rsp + 2336]
                        mov              rsi, qword ptr [rsp + 2344]
                        mov              rdx, qword ptr [rsp + 2368]
                        mov              rcx, qword ptr [rsp + 2376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n8_var_ref_α
                        mov              qword ptr [rsp + 2352], rax
                        mov              qword ptr [rsp + 2360], rdx;         jmp   n8_var_ref_α
                        .size            n7_assign_var_bx, .-n7_assign_var_bx
                        .type            n8_var_ref_bx, @function
n8_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2480]
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx;         jmp   n9_lit_string_α
                        .size            n8_var_ref_bx, .-n8_var_ref_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rsp + 2208], 2            # result
                        mov              dword ptr [rsp + 2212], 4
                        mov              rax, qword ptr [rip + .Lmain_α_129_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n10_subscript_α
.Lmain_α_129_0:         .quad            .Lmain_α_129_0_s
.Lmain_α_129_0_s:       .string          "beta"
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_subscript_bx, @function
n10_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_subscript_α:        mov              r11, 11
                        mov              rdi, qword ptr [rsp + 2192]
                        mov              rsi, qword ptr [rsp + 2200]
                        mov              rdx, qword ptr [rsp + 2208]
                        mov              rcx, qword ptr [rsp + 2216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n13_var_ref_α
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx;         jmp   n11_lit_integer_α
                        .size            n10_subscript_bx, .-n10_subscript_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rsp + 2272], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_131_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n12_assign_var_α
.Lmain_α_131_0:         .quad            22
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_assign_var_bx, @function
n12_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_var_α:       mov              r11, 13
                        mov              rdi, qword ptr [rsp + 2240]
                        mov              rsi, qword ptr [rsp + 2248]
                        mov              rdx, qword ptr [rsp + 2272]
                        mov              rcx, qword ptr [rsp + 2280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n13_var_ref_α
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx;         jmp   n13_var_ref_α
                        .size            n12_assign_var_bx, .-n12_assign_var_bx
                        .type            n13_var_ref_bx, @function
n13_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2480]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n14_lit_integer_α
                        .size            n13_var_ref_bx, .-n13_var_ref_bx
                        .type            n14_lit_integer_bx, @function
n14_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      mov              r11, 15
                        mov              qword ptr [rsp + 2128], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_135_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n15_subscript_α
.Lmain_α_135_0:         .quad            7
                        .size            n14_lit_integer_bx, .-n14_lit_integer_bx
                        .type            n15_subscript_bx, @function
n15_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_subscript_α:        mov              r11, 16
                        mov              rdi, qword ptr [rsp + 2112]
                        mov              rsi, qword ptr [rsp + 2120]
                        mov              rdx, qword ptr [rsp + 2128]
                        mov              rcx, qword ptr [rsp + 2136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n18_var_ref_α
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n16_lit_integer_α
                        .size            n15_subscript_bx, .-n15_subscript_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              r11, 17
                        mov              qword ptr [rsp + 2176], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_137_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n17_assign_var_α
.Lmain_α_137_0:         .quad            77
                        .size            n16_lit_integer_bx, .-n16_lit_integer_bx
                        .type            n17_assign_var_bx, @function
n17_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_var_α:       mov              r11, 18
                        mov              rdi, qword ptr [rsp + 2144]
                        mov              rsi, qword ptr [rsp + 2152]
                        mov              rdx, qword ptr [rsp + 2176]
                        mov              rcx, qword ptr [rsp + 2184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n18_var_ref_α
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n18_var_ref_α
                        .size            n17_assign_var_bx, .-n17_assign_var_bx
                        .type            n18_var_ref_bx, @function
n18_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2480]
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx;         jmp   n19_lit_integer_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_lit_integer_bx, @function
n19_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              r11, 20
                        mov              qword ptr [rsp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_141_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n20_subscript_α
.Lmain_α_141_0:         .quad            18446744073709551613
                        .size            n19_lit_integer_bx, .-n19_lit_integer_bx
                        .type            n20_subscript_bx, @function
n20_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_subscript_α:        mov              r11, 21
                        mov              rdi, qword ptr [rsp + 2032]
                        mov              rsi, qword ptr [rsp + 2040]
                        mov              rdx, qword ptr [rsp + 2048]
                        mov              rcx, qword ptr [rsp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n23_var_ref_α
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n21_lit_integer_α
                        .size            n20_subscript_bx, .-n20_subscript_bx
                        .type            n21_lit_integer_bx, @function
n21_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      mov              r11, 22
                        mov              qword ptr [rsp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_143_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n22_assign_var_α
.Lmain_α_143_0:         .quad            33
                        .size            n21_lit_integer_bx, .-n21_lit_integer_bx
                        .type            n22_assign_var_bx, @function
n22_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_var_α:       mov              r11, 23
                        mov              rdi, qword ptr [rsp + 2064]
                        mov              rsi, qword ptr [rsp + 2072]
                        mov              rdx, qword ptr [rsp + 2096]
                        mov              rcx, qword ptr [rsp + 2104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n23_var_ref_α
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx;         jmp   n23_var_ref_α
                        .size            n22_assign_var_bx, .-n22_assign_var_bx
                        .type            n23_var_ref_bx, @function
n23_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2480]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n24_lit_integer_α
                        .size            n23_var_ref_bx, .-n23_var_ref_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              r11, 25
                        mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_147_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n25_subscript_α
.Lmain_α_147_0:         .quad            0
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_subscript_bx, @function
n25_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_subscript_α:        mov              r11, 26
                        mov              rdi, qword ptr [rsp + 1952]
                        mov              rsi, qword ptr [rsp + 1960]
                        mov              rdx, qword ptr [rsp + 1968]
                        mov              rcx, qword ptr [rsp + 1976]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n28_var_ref_α
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx;         jmp   n26_lit_integer_α
                        .size            n25_subscript_bx, .-n25_subscript_bx
                        .type            n26_lit_integer_bx, @function
n26_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              r11, 27
                        mov              qword ptr [rsp + 2016], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_149_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n27_assign_var_α
.Lmain_α_149_0:         .quad            99
                        .size            n26_lit_integer_bx, .-n26_lit_integer_bx
                        .type            n27_assign_var_bx, @function
n27_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_var_α:       mov              r11, 28
                        mov              rdi, qword ptr [rsp + 1984]
                        mov              rsi, qword ptr [rsp + 1992]
                        mov              rdx, qword ptr [rsp + 2016]
                        mov              rcx, qword ptr [rsp + 2024]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n28_var_ref_α
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx;         jmp   n28_var_ref_α
                        .size            n27_assign_var_bx, .-n27_assign_var_bx
                        .type            n28_var_ref_bx, @function
n28_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2480]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n29_lit_string_α
                        .size            n28_var_ref_bx, .-n28_var_ref_bx
                        .type            n29_lit_string_bx, @function
n29_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              r11, 30
                        mov              qword ptr [rsp + 1872], 2            # result
                        mov              dword ptr [rsp + 1876], 5
                        mov              rax, qword ptr [rip + .Lmain_α_153_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n30_subscript_α
.Lmain_α_153_0:         .quad            .Lmain_α_153_0_s
.Lmain_α_153_0_s:       .string          "alpha"
                        .size            n29_lit_string_bx, .-n29_lit_string_bx
                        .type            n30_subscript_bx, @function
n30_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_subscript_α:        mov              r11, 31
                        mov              rdi, qword ptr [rsp + 1856]
                        mov              rsi, qword ptr [rsp + 1864]
                        mov              rdx, qword ptr [rsp + 1872]
                        mov              rcx, qword ptr [rsp + 1880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n33_var_ref_α
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx;         jmp   n31_lit_integer_α
                        .size            n30_subscript_bx, .-n30_subscript_bx
                        .type            n31_lit_integer_bx, @function
n31_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      mov              r11, 32
                        mov              qword ptr [rsp + 1936], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_155_0]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n32_assign_var_α
.Lmain_α_155_0:         .quad            111
                        .size            n31_lit_integer_bx, .-n31_lit_integer_bx
                        .type            n32_assign_var_bx, @function
n32_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_var_α:       mov              r11, 33
                        mov              rdi, qword ptr [rsp + 1904]
                        mov              rsi, qword ptr [rsp + 1912]
                        mov              rdx, qword ptr [rsp + 1936]
                        mov              rcx, qword ptr [rsp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n33_var_ref_α
                        mov              qword ptr [rsp + 1920], rax
                        mov              qword ptr [rsp + 1928], rdx;         jmp   n33_var_ref_α
                        .size            n32_assign_var_bx, .-n32_assign_var_bx
                        .type            n33_var_ref_bx, @function
n33_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2480]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n34_lit_string_α
                        .size            n33_var_ref_bx, .-n33_var_ref_bx
                        .type            n34_lit_string_bx, @function
n34_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], 5
                        mov              rax, qword ptr [rip + .Lmain_α_159_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n35_subscript_α
.Lmain_α_159_0:         .quad            .Lmain_α_159_0_s
.Lmain_α_159_0_s:       .string          "alpha"
                        .size            n34_lit_string_bx, .-n34_lit_string_bx
                        .type            n35_subscript_bx, @function
n35_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_subscript_α:        mov              r11, 36
                        mov              rdi, qword ptr [rsp + 1168]
                        mov              rsi, qword ptr [rsp + 1176]
                        mov              rdx, qword ptr [rsp + 1184]
                        mov              rcx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n36_deref_α
                        .size            n35_subscript_bx, .-n35_subscript_bx
                        .type            n36_deref_bx, @function
n36_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_deref_α:            mov              r11, 37
                        mov              rdi, qword ptr [rsp + 1216]
                        mov              rsi, qword ptr [rsp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n37_lit_string_α
                        .size            n36_deref_bx, .-n36_deref_bx
                        .type            n37_lit_string_bx, @function
n37_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 1
                        mov              rax, qword ptr [rip + .Lmain_α_162_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n38_var_ref_α
.Lmain_α_162_0:         .quad            .Lmain_α_162_0_s
.Lmain_α_162_0_s:       .string          " "
                        .size            n37_lit_string_bx, .-n37_lit_string_bx
                        .type            n38_var_ref_bx, @function
n38_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2480]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n39_lit_string_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_lit_string_bx, @function
n39_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rsp + 1296], 2            # result
                        mov              dword ptr [rsp + 1300], 4
                        mov              rax, qword ptr [rip + .Lmain_α_165_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n40_subscript_α
.Lmain_α_165_0:         .quad            .Lmain_α_165_0_s
.Lmain_α_165_0_s:       .string          "beta"
                        .size            n39_lit_string_bx, .-n39_lit_string_bx
                        .type            n40_subscript_bx, @function
n40_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_subscript_α:        mov              r11, 41
                        mov              rdi, qword ptr [rsp + 1280]
                        mov              rsi, qword ptr [rsp + 1288]
                        mov              rdx, qword ptr [rsp + 1296]
                        mov              rcx, qword ptr [rsp + 1304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n41_deref_α
                        .size            n40_subscript_bx, .-n40_subscript_bx
                        .type            n41_deref_bx, @function
n41_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_deref_α:            mov              r11, 42
                        mov              rdi, qword ptr [rsp + 1328]
                        mov              rsi, qword ptr [rsp + 1336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n42_lit_string_α
                        .size            n41_deref_bx, .-n41_deref_bx
                        .type            n42_lit_string_bx, @function
n42_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              r11, 43
                        mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 1
                        mov              rax, qword ptr [rip + .Lmain_α_168_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n43_var_ref_α
.Lmain_α_168_0:         .quad            .Lmain_α_168_0_s
.Lmain_α_168_0_s:       .string          " "
                        .size            n42_lit_string_bx, .-n42_lit_string_bx
                        .type            n43_var_ref_bx, @function
n43_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2480]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n44_lit_integer_α
                        .size            n43_var_ref_bx, .-n43_var_ref_bx
                        .type            n44_lit_integer_bx, @function
n44_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      mov              r11, 45
                        mov              qword ptr [rsp + 1408], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_171_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n45_subscript_α
.Lmain_α_171_0:         .quad            7
                        .size            n44_lit_integer_bx, .-n44_lit_integer_bx
                        .type            n45_subscript_bx, @function
n45_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_subscript_α:        mov              r11, 46
                        mov              rdi, qword ptr [rsp + 1392]
                        mov              rsi, qword ptr [rsp + 1400]
                        mov              rdx, qword ptr [rsp + 1408]
                        mov              rcx, qword ptr [rsp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n46_deref_α
                        .size            n45_subscript_bx, .-n45_subscript_bx
                        .type            n46_deref_bx, @function
n46_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_deref_α:            mov              r11, 47
                        mov              rdi, qword ptr [rsp + 1424]
                        mov              rsi, qword ptr [rsp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n47_lit_string_α
                        .size            n46_deref_bx, .-n46_deref_bx
                        .type            n47_lit_string_bx, @function
n47_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       mov              r11, 48
                        mov              qword ptr [rsp + 1456], 2            # result
                        mov              dword ptr [rsp + 1460], 1
                        mov              rax, qword ptr [rip + .Lmain_α_174_0]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n48_var_ref_α
.Lmain_α_174_0:         .quad            .Lmain_α_174_0_s
.Lmain_α_174_0_s:       .string          " "
                        .size            n47_lit_string_bx, .-n47_lit_string_bx
                        .type            n48_var_ref_bx, @function
n48_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2480]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n49_lit_integer_α
                        .size            n48_var_ref_bx, .-n48_var_ref_bx
                        .type            n49_lit_integer_bx, @function
n49_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      mov              r11, 50
                        mov              qword ptr [rsp + 1504], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_177_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n50_subscript_α
.Lmain_α_177_0:         .quad            18446744073709551613
                        .size            n49_lit_integer_bx, .-n49_lit_integer_bx
                        .type            n50_subscript_bx, @function
n50_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_subscript_α:        mov              r11, 51
                        mov              rdi, qword ptr [rsp + 1488]
                        mov              rsi, qword ptr [rsp + 1496]
                        mov              rdx, qword ptr [rsp + 1504]
                        mov              rcx, qword ptr [rsp + 1512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n51_deref_α
                        .size            n50_subscript_bx, .-n50_subscript_bx
                        .type            n51_deref_bx, @function
n51_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_deref_α:            mov              r11, 52
                        mov              rdi, qword ptr [rsp + 1520]
                        mov              rsi, qword ptr [rsp + 1528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n52_lit_string_α
                        .size            n51_deref_bx, .-n51_deref_bx
                        .type            n52_lit_string_bx, @function
n52_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       mov              r11, 53
                        mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 1
                        mov              rax, qword ptr [rip + .Lmain_α_180_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n53_var_ref_α
.Lmain_α_180_0:         .quad            .Lmain_α_180_0_s
.Lmain_α_180_0_s:       .string          " "
                        .size            n52_lit_string_bx, .-n52_lit_string_bx
                        .type            n53_var_ref_bx, @function
n53_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2480]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n54_lit_integer_α
                        .size            n53_var_ref_bx, .-n53_var_ref_bx
                        .type            n54_lit_integer_bx, @function
n54_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      mov              r11, 55
                        mov              qword ptr [rsp + 1600], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_183_0]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n55_subscript_α
.Lmain_α_183_0:         .quad            0
                        .size            n54_lit_integer_bx, .-n54_lit_integer_bx
                        .type            n55_subscript_bx, @function
n55_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_subscript_α:        mov              r11, 56
                        mov              rdi, qword ptr [rsp + 1584]
                        mov              rsi, qword ptr [rsp + 1592]
                        mov              rdx, qword ptr [rsp + 1600]
                        mov              rcx, qword ptr [rsp + 1608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx;         jmp   n56_deref_α
                        .size            n55_subscript_bx, .-n55_subscript_bx
                        .type            n56_deref_bx, @function
n56_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_deref_α:            mov              r11, 57
                        mov              rdi, qword ptr [rsp + 1616]
                        mov              rsi, qword ptr [rsp + 1624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n57_lit_string_α
                        .size            n56_deref_bx, .-n56_deref_bx
                        .type            n57_lit_string_bx, @function
n57_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              r11, 58
                        mov              qword ptr [rsp + 1648], 2            # result
                        mov              dword ptr [rsp + 1652], 1
                        mov              rax, qword ptr [rip + .Lmain_α_186_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n58_var_ref_α
.Lmain_α_186_0:         .quad            .Lmain_α_186_0_s
.Lmain_α_186_0_s:       .string          " "
                        .size            n57_lit_string_bx, .-n57_lit_string_bx
                        .type            n58_var_ref_bx, @function
n58_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:          mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2480]
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx;         jmp   n59_lit_string_α
                        .size            n58_var_ref_bx, .-n58_var_ref_bx
                        .type            n59_lit_string_bx, @function
n59_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              r11, 60
                        mov              qword ptr [rsp + 1696], 2            # result
                        mov              dword ptr [rsp + 1700], 7
                        mov              rax, qword ptr [rip + .Lmain_α_189_0]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n60_subscript_α
.Lmain_α_189_0:         .quad            .Lmain_α_189_0_s
.Lmain_α_189_0_s:       .string          "missing"
                        .size            n59_lit_string_bx, .-n59_lit_string_bx
                        .type            n60_subscript_bx, @function
n60_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_subscript_α:        mov              r11, 61
                        mov              rdi, qword ptr [rsp + 1680]
                        mov              rsi, qword ptr [rsp + 1688]
                        mov              rdx, qword ptr [rsp + 1696]
                        mov              rcx, qword ptr [rsp + 1704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx;         jmp   n61_deref_α
                        .size            n60_subscript_bx, .-n60_subscript_bx
                        .type            n61_deref_bx, @function
n61_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_deref_α:            mov              r11, 62
                        mov              rdi, qword ptr [rsp + 1728]
                        mov              rsi, qword ptr [rsp + 1736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n62_lit_string_α
                        .size            n61_deref_bx, .-n61_deref_bx
                        .type            n62_lit_string_bx, @function
n62_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              r11, 63
                        mov              qword ptr [rsp + 1760], 2            # result
                        mov              dword ptr [rsp + 1764], 1
                        mov              rax, qword ptr [rip + .Lmain_α_192_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n63_var_ref_α
.Lmain_α_192_0:         .quad            .Lmain_α_192_0_s
.Lmain_α_192_0_s:       .string          " "
                        .size            n62_lit_string_bx, .-n62_lit_string_bx
                        .type            n63_var_ref_bx, @function
n63_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2480]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n64_lit_integer_α
                        .size            n63_var_ref_bx, .-n63_var_ref_bx
                        .type            n64_lit_integer_bx, @function
n64_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      mov              r11, 65
                        mov              qword ptr [rsp + 1808], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_195_0]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n65_subscript_α
.Lmain_α_195_0:         .quad            12345
                        .size            n64_lit_integer_bx, .-n64_lit_integer_bx
                        .type            n65_subscript_bx, @function
n65_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_subscript_α:        mov              r11, 66
                        mov              rdi, qword ptr [rsp + 1792]
                        mov              rsi, qword ptr [rsp + 1800]
                        mov              rdx, qword ptr [rsp + 1808]
                        mov              rcx, qword ptr [rsp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx;         jmp   n66_deref_α
                        .size            n65_subscript_bx, .-n65_subscript_bx
                        .type            n66_deref_bx, @function
n66_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_deref_α:            mov              r11, 67
                        mov              rdi, qword ptr [rsp + 1824]
                        mov              rsi, qword ptr [rsp + 1832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n67_call_icon_α
                        .size            n66_deref_bx, .-n66_deref_bx
                        .type            n67_call_icon_bx, @function
n67_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_call_icon_α:        mov              r11, 68
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 952], rax
                        .section         .rodata
.Lrkfn199:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]
                        lea              rsi, [rsp + 944]
                        mov              edx, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n68_lit_integer_α
                                                                              jmp   n68_lit_integer_α
n67_call_icon_β:        mov              r11, 68;                             jmp   n68_lit_integer_α
                        .size            n67_call_icon_bx, .-n67_call_icon_bx
                        .type            n68_lit_integer_bx, @function
n68_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:      mov              r11, 69
                        mov              qword ptr [rsp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_200_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n69_assign_α
.Lmain_α_200_0:         .quad            0
                        .size            n68_lit_integer_bx, .-n68_lit_integer_bx
                        .type            n69_assign_bx, @function
n69_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:           mov              r11, 70
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n70_lit_integer_α
                        .size            n69_assign_bx, .-n69_assign_bx
                        .type            n70_lit_integer_bx, @function
n70_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      mov              r11, 71
                        mov              qword ptr [rsp + 704], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_202_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n71_lit_integer_α
.Lmain_α_202_0:         .quad            1
                        .size            n70_lit_integer_bx, .-n70_lit_integer_bx
                        .type            n71_lit_integer_bx, @function
n71_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:      mov              r11, 72
                        mov              qword ptr [rsp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_203_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n72_to_α
.Lmain_α_203_0:         .quad            5000
                        .size            n71_lit_integer_bx, .-n71_lit_integer_bx
                        .type            n72_to_bx, @function
n72_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_to_α:               mov              r11, 73
                        mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 704], 3
                        mov              qword ptr [rsp + 712], rax
                        mov              rdi, qword ptr [rsp + 720]
                        mov              rsi, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 720], 3
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 688], rax
.Lmain_α_205_0:         mov              rax, qword ptr [rsp + 688]
                        mov              rcx, qword ptr [rsp + 728]
                        cmp              rax, rcx;                            jg    n82_lit_integer_α
                        mov              qword ptr [rsp + 672], 3
                        mov              qword ptr [rsp + 680], rax;          jmp   n73_assign_α
n72_to_β:               mov              r11, 73
                        inc              qword ptr [rsp + 688];               jmp   .Lmain_α_205_0
                        .size            n72_to_bx, .-n72_to_bx
                        .type            n73_assign_bx, @function
n73_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:           mov              r11, 74
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n74_bound_α
                        .size            n73_assign_bx, .-n73_assign_bx
                        .type            n74_bound_bx, @function
n74_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_bound_α:            mov              r11, 75
                        mov              qword ptr [rsp + 736], rsp;          jmp   n75_var_ref_α
                        .size            n74_bound_bx, .-n74_bound_bx
                        .type            n75_var_ref_bx, @function
n75_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2480]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n76_var_α
                        .size            n75_var_ref_bx, .-n75_var_ref_bx
                        .type            n76_var_bx, @function
n76_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              mov              r11, 77
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 856], rax;          jmp   n77_call_icon_α
                        .size            n76_var_bx, .-n76_var_bx
                        .type            n77_call_icon_bx, @function
n77_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_call_icon_α:        mov              r11, 78
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n81_unmark_α
                                                                              jmp   n78_subscript_α
n77_call_icon_β:        mov              r11, 78;                             jmp   n81_unmark_α
                        .size            n77_call_icon_bx, .-n77_call_icon_bx
                        .type            n78_subscript_bx, @function
n78_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_subscript_α:        mov              r11, 79
                        mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              rdx, qword ptr [rsp + 800]
                        mov              rcx, qword ptr [rsp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n81_unmark_α
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n79_var_α
                        .size            n78_subscript_bx, .-n78_subscript_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              mov              r11, 80
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 904], rax;          jmp   n80_assign_var_α
                        .size            n79_var_bx, .-n79_var_bx
                        .type            n80_assign_var_bx, @function
n80_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_var_α:       mov              r11, 81
                        mov              rdi, qword ptr [rsp + 864]
                        mov              rsi, qword ptr [rsp + 872]
                        mov              rdx, qword ptr [rsp + 896]
                        mov              rcx, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n81_unmark_α
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n81_unmark_α
                        .size            n80_assign_var_bx, .-n80_assign_var_bx
                        .type            n81_unmark_bx, @function
n81_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_unmark_α:           mov              r11, 82
                        mov              rsp, qword ptr [rsp + 736];          jmp   n72_to_β
                        .size            n81_unmark_bx, .-n81_unmark_bx
                        .type            n82_lit_integer_bx, @function
n82_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      mov              r11, 83
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_221_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n83_lit_integer_α
.Lmain_α_221_0:         .quad            1
                        .size            n82_lit_integer_bx, .-n82_lit_integer_bx
                        .type            n83_lit_integer_bx, @function
n83_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      mov              r11, 84
                        mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_222_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n84_to_α
.Lmain_α_222_0:         .quad            5000
                        .size            n83_lit_integer_bx, .-n83_lit_integer_bx
                        .type            n84_to_bx, @function
n84_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_to_α:               mov              r11, 85
                        mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 416], 3
                        mov              qword ptr [rsp + 424], rax
                        mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], 3
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 400], rax
.Lmain_α_224_0:         mov              rax, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 440]
                        cmp              rax, rcx;                            jg    n98_var_α
                        mov              qword ptr [rsp + 384], 3
                        mov              qword ptr [rsp + 392], rax;          jmp   n85_assign_α
n84_to_β:               mov              r11, 85
                        inc              qword ptr [rsp + 400];               jmp   .Lmain_α_224_0
                        .size            n84_to_bx, .-n84_to_bx
                        .type            n85_assign_bx, @function
n85_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_assign_α:           mov              r11, 86
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n86_bound_α
                        .size            n85_assign_bx, .-n85_assign_bx
                        .type            n86_bound_bx, @function
n86_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_bound_α:            mov              r11, 87
                        mov              qword ptr [rsp + 448], rsp;          jmp   n87_var_α
                        .size            n86_bound_bx, .-n86_bound_bx
                        .type            n87_var_bx, @function
n87_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:              mov              r11, 88
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 552], rax;          jmp   n88_var_ref_α
                        .size            n87_var_bx, .-n87_var_bx
                        .type            n88_var_ref_bx, @function
n88_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:          mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2480]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n89_var_α
                        .size            n88_var_ref_bx, .-n88_var_ref_bx
                        .type            n89_var_bx, @function
n89_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              mov              r11, 90
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 632], rax;          jmp   n90_call_icon_α
                        .size            n89_var_bx, .-n89_var_bx
                        .type            n90_call_icon_bx, @function
n90_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_call_icon_α:        mov              r11, 91
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n97_unmark_α
                                                                              jmp   n91_subscript_α
n90_call_icon_β:        mov              r11, 91;                             jmp   n97_unmark_α
                        .size            n90_call_icon_bx, .-n90_call_icon_bx
                        .type            n91_subscript_bx, @function
n91_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_subscript_α:        mov              r11, 92
                        mov              rdi, qword ptr [rsp + 560]
                        mov              rsi, qword ptr [rsp + 568]
                        mov              rdx, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n97_unmark_α
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n92_deref_α
                        .size            n91_subscript_bx, .-n91_subscript_bx
                        .type            n92_deref_bx, @function
n92_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_deref_α:            mov              r11, 93
                        mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n97_unmark_α
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n93_coerce_numeric_α
                        .size            n92_deref_bx, .-n92_deref_bx
                        .type            n93_coerce_numeric_bx, @function
n93_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_coerce_numeric_α:   mov              r11, 94
                        mov              eax, dword ptr [rsp + 2448]
                        cmp              al, 5;                               je    .Lmain_α_239_1
                        cmp              al, 3;                               jne   .Lmain_α_239_0
                        mov              eax, dword ptr [rsp + 656]
                        cmp              al, 3;                               jne   .Lmain_α_239_0
.Lmain_α_239_1:         mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 536], rax;          jmp   n94_coerce_numeric_α
.Lmain_α_239_0:         lea              rdi, [rsp + 2448]
                        lea              rsi, [rsp + 656]
                        lea              rdx, [rsp + 528]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n94_coerce_numeric_α
                        .size            n93_coerce_numeric_bx, .-n93_coerce_numeric_bx
                        .type            n94_coerce_numeric_bx, @function
n94_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_coerce_numeric_α:   mov              r11, 95
                        mov              eax, dword ptr [rsp + 656]
                        cmp              al, 5;                               je    .Lmain_α_241_1
                        cmp              al, 3;                               jne   .Lmain_α_241_0
                        mov              eax, dword ptr [rsp + 2448]
                        cmp              al, 3;                               jne   .Lmain_α_241_0
.Lmain_α_241_1:         mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 520], rax;          jmp   n95_binop_α
.Lmain_α_241_0:         lea              rdi, [rsp + 656]
                        lea              rsi, [rsp + 2448]
                        lea              rdx, [rsp + 512]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n95_binop_α
                        .size            n94_coerce_numeric_bx, .-n94_coerce_numeric_bx
                        .type            n95_binop_bx, @function
n95_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_binop_α:            mov              r11, 96
                        mov              eax, dword ptr [rsp + 528]
                        mov              ecx, dword ptr [rsp + 512]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lmain_α_242_2
                        mov              rax, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 520]
                        add              rax, rdx
                        mov              qword ptr [rsp + 496], 3
                        mov              qword ptr [rsp + 504], rax;          jmp   .Lmain_α_242_7
.Lmain_α_242_2:         and              edx, 1;                              jz    .Lmain_α_242_0
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdi, qword ptr [rsp + 520]
                        cmp              al, 5;                               je    .Lmain_α_242_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_242_4
.Lmain_α_242_3:         movq             xmm0, rsi
.Lmain_α_242_4:         cmp              cl, 5;                               je    .Lmain_α_242_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lmain_α_242_6
.Lmain_α_242_5:         movq             xmm1, rdi
.Lmain_α_242_6:         addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 496], 5
                        mov              qword ptr [rsp + 504], rax
.Lmain_α_242_7:                                                               jmp   n96_assign_α
.Lmain_α_242_0:         mov              rdi, qword ptr [rsp + 528]
                        mov              rsi, qword ptr [rsp + 536]
                        mov              rdx, qword ptr [rsp + 512]
                        mov              rcx, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n97_unmark_α
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n96_assign_α
                        .size            n95_binop_bx, .-n95_binop_bx
                        .type            n96_assign_bx, @function
n96_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_α:           mov              r11, 97
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n97_unmark_α
                        .size            n96_assign_bx, .-n96_assign_bx
                        .type            n97_unmark_bx, @function
n97_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_unmark_α:           mov              r11, 98
                        mov              rsp, qword ptr [rsp + 448];          jmp   n84_to_β
                        .size            n97_unmark_bx, .-n97_unmark_bx
                        .type            n98_var_bx, @function
n98_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:              mov              r11, 99
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 376], rax;          jmp   n99_call_icon_α
                        .size            n98_var_bx, .-n98_var_bx
                        .type            n99_call_icon_bx, @function
n99_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_call_icon_α:        mov              r11, 100
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n00001_lit_integer_α
                                                                              jmp   n00001_lit_integer_α
n99_call_icon_β:        mov              r11, 100;                            jmp   n00001_lit_integer_α
                        .size            n99_call_icon_bx, .-n99_call_icon_bx
                        .type            n00001_lit_integer_bx, @function
n00001_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_lit_integer_α:     mov              r11, 101
                        mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_250_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00002_lit_integer_α
.Lmain_α_250_0:         .quad            1
                        .size            n00001_lit_integer_bx, .-n00001_lit_integer_bx
                        .type            n00002_lit_integer_bx, @function
n00002_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_lit_integer_α:     mov              r11, 102
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_251_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00003_to_α
.Lmain_α_251_0:         .quad            5000
                        .size            n00002_lit_integer_bx, .-n00002_lit_integer_bx
                        .type            n00003_to_bx, @function
n00003_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_to_α:              mov              r11, 103
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax
                        mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], 3
                        mov              qword ptr [rsp + 136], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 96], rax
.Lmain_α_253_0:         mov              rax, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 136]
                        cmp              rax, rcx;                            jg    n00004_var_α
                        mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax;           jmp   n00005_assign_α
n00003_to_β:              mov              r11, 103
                        inc              qword ptr [rsp + 96];                jmp   .Lmain_α_253_0
                        .size            n00003_to_bx, .-n00003_to_bx
                        .type            n00005_assign_bx, @function
n00005_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_assign_α:          mov              r11, 104
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n00006_bound_α
                        .size            n00005_assign_bx, .-n00005_assign_bx
                        .type            n00006_bound_bx, @function
n00006_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_bound_α:           mov              r11, 105
                        mov              qword ptr [rsp + 144], rsp;          jmp   n00007_var_α
                        .size            n00006_bound_bx, .-n00006_bound_bx
                        .type            n00007_var_bx, @function
n00007_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_var_α:             mov              r11, 106
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 248], rax;          jmp   n00008_var_ref_α
                        .size            n00007_var_bx, .-n00007_var_bx
                        .type            n00008_var_ref_bx, @function
n00008_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2480]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n00009_var_α
                        .size            n00008_var_ref_bx, .-n00008_var_ref_bx
                        .type            n00009_var_bx, @function
n00009_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_var_α:             mov              r11, 108
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00010_subscript_α
                        .size            n00009_var_bx, .-n00009_var_bx
                        .type            n00010_subscript_bx, @function
n00010_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_subscript_α:       mov              r11, 109
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00011_unmark_α
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n00012_deref_α
                        .size            n00010_subscript_bx, .-n00010_subscript_bx
                        .type            n00012_deref_bx, @function
n00012_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_deref_α:           mov              r11, 110
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00011_unmark_α
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n00013_coerce_numeric_α
                        .size            n00012_deref_bx, .-n00012_deref_bx
                        .type            n00013_coerce_numeric_bx, @function
n00013_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_coerce_numeric_α:  mov              r11, 111
                        mov              eax, dword ptr [rsp + 2448]
                        cmp              al, 5;                               je    .Lmain_α_266_1
                        cmp              al, 3;                               jne   .Lmain_α_266_0
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 3;                               jne   .Lmain_α_266_0
.Lmain_α_266_1:         mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00014_coerce_numeric_α
.Lmain_α_266_0:         lea              rdi, [rsp + 2448]
                        lea              rsi, [rsp + 304]
                        lea              rdx, [rsp + 224]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00014_coerce_numeric_α
                        .size            n00013_coerce_numeric_bx, .-n00013_coerce_numeric_bx
                        .type            n00014_coerce_numeric_bx, @function
n00014_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_coerce_numeric_α:  mov              r11, 112
                        mov              eax, dword ptr [rsp + 304]
                        cmp              al, 5;                               je    .Lmain_α_268_1
                        cmp              al, 3;                               jne   .Lmain_α_268_0
                        mov              eax, dword ptr [rsp + 2448]
                        cmp              al, 3;                               jne   .Lmain_α_268_0
.Lmain_α_268_1:         mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00015_binop_α
.Lmain_α_268_0:         lea              rdi, [rsp + 304]
                        lea              rsi, [rsp + 2448]
                        lea              rdx, [rsp + 208]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00015_binop_α
                        .size            n00014_coerce_numeric_bx, .-n00014_coerce_numeric_bx
                        .type            n00015_binop_bx, @function
n00015_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_binop_α:           mov              r11, 113
                        mov              eax, dword ptr [rsp + 224]
                        mov              ecx, dword ptr [rsp + 208]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lmain_α_269_2
                        mov              rax, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 216]
                        add              rax, rdx
                        mov              qword ptr [rsp + 192], 3
                        mov              qword ptr [rsp + 200], rax;          jmp   .Lmain_α_269_7
.Lmain_α_269_2:         and              edx, 1;                              jz    .Lmain_α_269_0
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdi, qword ptr [rsp + 216]
                        cmp              al, 5;                               je    .Lmain_α_269_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lmain_α_269_4
.Lmain_α_269_3:         movq             xmm0, rsi
.Lmain_α_269_4:         cmp              cl, 5;                               je    .Lmain_α_269_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lmain_α_269_6
.Lmain_α_269_5:         movq             xmm1, rdi
.Lmain_α_269_6:         addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 192], 5
                        mov              qword ptr [rsp + 200], rax
.Lmain_α_269_7:                                                               jmp   n00016_assign_α
.Lmain_α_269_0:         mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 208]
                        mov              rcx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00011_unmark_α
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00016_assign_α
                        .size            n00015_binop_bx, .-n00015_binop_bx
                        .type            n00016_assign_bx, @function
n00016_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_assign_α:          mov              r11, 114
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n00011_unmark_α
                        .size            n00016_assign_bx, .-n00016_assign_bx
                        .type            n00011_unmark_bx, @function
n00011_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_unmark_α:          mov              r11, 115
                        mov              rsp, qword ptr [rsp + 144];          jmp   n00003_to_β
                        .size            n00011_unmark_bx, .-n00011_unmark_bx
                        .type            n00004_var_bx, @function
n00004_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_var_α:             mov              r11, 116
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 56], rax;           jmp   n00017_call_icon_α
                        .size            n00004_var_bx, .-n00004_var_bx
                        .type            n00017_call_icon_bx, @function
n00017_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_call_icon_α:       mov              r11, 117
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n00017_call_icon_β:       mov              r11, 117;                            jmp   main_ω
                        .size            n00017_call_icon_bx, .-n00017_call_icon_bx
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
                        xor              edi, edi
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
