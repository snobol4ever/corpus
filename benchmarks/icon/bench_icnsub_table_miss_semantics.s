                        .intel_syntax    noprefix
                        .text
                        .file            1 "/home/claude_coo/corpus/benchmarks/icon/bench_icnsub_table_miss_semantics.icn"
                        .file            2 "<included>"
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rax, [rip + .Llevel_zero_return]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Llevel_zero_return:    call             rt_kw_return_level_zero@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 2656
                        mov              qword ptr [rsp + 2648], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 2512
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
                        mov              qword ptr [rbp + 2496], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_121_0]
                        mov              qword ptr [rbp + 2504], rax;         jmp   n1_call_icon_α
.Llit_integer_α_121_0:  .quad            0
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_call_icon_bx, @function
n1_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_call_icon_α:         mov              r11, 2
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2472], rax
                        .section         .rodata
.Lcall_icon_α_rkfn123:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn123]
                        lea              rsi, [rbp + 2464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              al, 104;                             je    n3_var_ref_α
                                                                              jmp   n2_assign_α
n1_call_icon_β:         mov              r11, 2;                              jmp   n3_var_ref_α
                        .size            n1_call_icon_bx, .-n1_call_icon_bx
                        .type            n2_assign_bx, @function
n2_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_assign_α:            mov              r11, 3
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n3_var_ref_α
                        .size            n2_assign_bx, .-n2_assign_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx;         jmp   n4_lit_string_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_lit_string_bx, @function
n4_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rbp + 2368], 2            # result
                        mov              dword ptr [rbp + 2372], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_127_0]
                        mov              qword ptr [rbp + 2376], rax;         jmp   n5_subscript_α
.Llit_string_α_127_0:   .quad            .Llit_string_α_127_0_s
.Llit_string_α_127_0_s: .string          "alpha"
                        .size            n4_lit_string_bx, .-n4_lit_string_bx
                        .type            n5_subscript_bx, @function
n5_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_subscript_α:         mov              r11, 6
                        mov              rdi, qword ptr [rbp + 2352]
                        mov              rsi, qword ptr [rbp + 2360]
                        mov              rdx, qword ptr [rbp + 2368]
                        mov              rcx, qword ptr [rbp + 2376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n8_var_ref_α
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx;         jmp   n6_lit_integer_α
                        .size            n5_subscript_bx, .-n5_subscript_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rbp + 2432], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_129_0]
                        mov              qword ptr [rbp + 2440], rax;         jmp   n7_assign_var_α
.Llit_integer_α_129_0:  .quad            11
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_assign_var_bx, @function
n7_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_var_α:        mov              r11, 8
                        mov              rdi, qword ptr [rbp + 2400]
                        mov              rsi, qword ptr [rbp + 2408]
                        mov              rdx, qword ptr [rbp + 2432]
                        mov              rcx, qword ptr [rbp + 2440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n8_var_ref_α
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx;         jmp   n8_var_ref_α
                        .size            n7_assign_var_bx, .-n7_assign_var_bx
                        .type            n8_var_ref_bx, @function
n8_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx;         jmp   n9_lit_string_α
                        .size            n8_var_ref_bx, .-n8_var_ref_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rbp + 2272], 2            # result
                        mov              dword ptr [rbp + 2276], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_133_0]
                        mov              qword ptr [rbp + 2280], rax;         jmp   n10_subscript_α
.Llit_string_α_133_0:   .quad            .Llit_string_α_133_0_s
.Llit_string_α_133_0_s: .string          "beta"
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_subscript_bx, @function
n10_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_subscript_α:        mov              r11, 11
                        mov              rdi, qword ptr [rbp + 2256]
                        mov              rsi, qword ptr [rbp + 2264]
                        mov              rdx, qword ptr [rbp + 2272]
                        mov              rcx, qword ptr [rbp + 2280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n13_var_ref_α
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n11_lit_integer_α
                        .size            n10_subscript_bx, .-n10_subscript_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rbp + 2336], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_135_0]
                        mov              qword ptr [rbp + 2344], rax;         jmp   n12_assign_var_α
.Llit_integer_α_135_0:  .quad            22
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_assign_var_bx, @function
n12_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_var_α:       mov              r11, 13
                        mov              rdi, qword ptr [rbp + 2304]
                        mov              rsi, qword ptr [rbp + 2312]
                        mov              rdx, qword ptr [rbp + 2336]
                        mov              rcx, qword ptr [rbp + 2344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n13_var_ref_α
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx;         jmp   n13_var_ref_α
                        .size            n12_assign_var_bx, .-n12_assign_var_bx
                        .type            n13_var_ref_bx, @function
n13_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx;         jmp   n14_lit_integer_α
                        .size            n13_var_ref_bx, .-n13_var_ref_bx
                        .type            n14_lit_integer_bx, @function
n14_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      mov              r11, 15
                        mov              qword ptr [rbp + 2192], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_139_0]
                        mov              qword ptr [rbp + 2200], rax;         jmp   n15_subscript_α
.Llit_integer_α_139_0:  .quad            7
                        .size            n14_lit_integer_bx, .-n14_lit_integer_bx
                        .type            n15_subscript_bx, @function
n15_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_subscript_α:        mov              r11, 16
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2192]
                        mov              rcx, qword ptr [rbp + 2200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n18_var_ref_α
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx;         jmp   n16_lit_integer_α
                        .size            n15_subscript_bx, .-n15_subscript_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              r11, 17
                        mov              qword ptr [rbp + 2240], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_141_0]
                        mov              qword ptr [rbp + 2248], rax;         jmp   n17_assign_var_α
.Llit_integer_α_141_0:  .quad            77
                        .size            n16_lit_integer_bx, .-n16_lit_integer_bx
                        .type            n17_assign_var_bx, @function
n17_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_var_α:       mov              r11, 18
                        mov              rdi, qword ptr [rbp + 2208]
                        mov              rsi, qword ptr [rbp + 2216]
                        mov              rdx, qword ptr [rbp + 2240]
                        mov              rcx, qword ptr [rbp + 2248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n18_var_ref_α
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n18_var_ref_α
                        .size            n17_assign_var_bx, .-n17_assign_var_bx
                        .type            n18_var_ref_bx, @function
n18_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx;         jmp   n19_lit_integer_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_lit_integer_bx, @function
n19_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              r11, 20
                        mov              qword ptr [rbp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_145_0]
                        mov              qword ptr [rbp + 2120], rax;         jmp   n20_subscript_α
.Llit_integer_α_145_0:  .quad            18446744073709551613
                        .size            n19_lit_integer_bx, .-n19_lit_integer_bx
                        .type            n20_subscript_bx, @function
n20_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_subscript_α:        mov              r11, 21
                        mov              rdi, qword ptr [rbp + 2096]
                        mov              rsi, qword ptr [rbp + 2104]
                        mov              rdx, qword ptr [rbp + 2112]
                        mov              rcx, qword ptr [rbp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n23_var_ref_α
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx;         jmp   n21_lit_integer_α
                        .size            n20_subscript_bx, .-n20_subscript_bx
                        .type            n21_lit_integer_bx, @function
n21_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      mov              r11, 22
                        mov              qword ptr [rbp + 2160], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_147_0]
                        mov              qword ptr [rbp + 2168], rax;         jmp   n22_assign_var_α
.Llit_integer_α_147_0:  .quad            33
                        .size            n21_lit_integer_bx, .-n21_lit_integer_bx
                        .type            n22_assign_var_bx, @function
n22_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_var_α:       mov              r11, 23
                        mov              rdi, qword ptr [rbp + 2128]
                        mov              rsi, qword ptr [rbp + 2136]
                        mov              rdx, qword ptr [rbp + 2160]
                        mov              rcx, qword ptr [rbp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n23_var_ref_α
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx;         jmp   n23_var_ref_α
                        .size            n22_assign_var_bx, .-n22_assign_var_bx
                        .type            n23_var_ref_bx, @function
n23_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx;         jmp   n24_lit_integer_α
                        .size            n23_var_ref_bx, .-n23_var_ref_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              r11, 25
                        mov              qword ptr [rbp + 2032], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_151_0]
                        mov              qword ptr [rbp + 2040], rax;         jmp   n25_subscript_α
.Llit_integer_α_151_0:  .quad            0
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_subscript_bx, @function
n25_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_subscript_α:        mov              r11, 26
                        mov              rdi, qword ptr [rbp + 2016]
                        mov              rsi, qword ptr [rbp + 2024]
                        mov              rdx, qword ptr [rbp + 2032]
                        mov              rcx, qword ptr [rbp + 2040]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n28_var_ref_α
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx;         jmp   n26_lit_integer_α
                        .size            n25_subscript_bx, .-n25_subscript_bx
                        .type            n26_lit_integer_bx, @function
n26_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              r11, 27
                        mov              qword ptr [rbp + 2080], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_153_0]
                        mov              qword ptr [rbp + 2088], rax;         jmp   n27_assign_var_α
.Llit_integer_α_153_0:  .quad            99
                        .size            n26_lit_integer_bx, .-n26_lit_integer_bx
                        .type            n27_assign_var_bx, @function
n27_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_var_α:       mov              r11, 28
                        mov              rdi, qword ptr [rbp + 2048]
                        mov              rsi, qword ptr [rbp + 2056]
                        mov              rdx, qword ptr [rbp + 2080]
                        mov              rcx, qword ptr [rbp + 2088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n28_var_ref_α
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx;         jmp   n28_var_ref_α
                        .size            n27_assign_var_bx, .-n27_assign_var_bx
                        .type            n28_var_ref_bx, @function
n28_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx;         jmp   n29_lit_string_α
                        .size            n28_var_ref_bx, .-n28_var_ref_bx
                        .type            n29_lit_string_bx, @function
n29_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              r11, 30
                        mov              qword ptr [rbp + 1936], 2            # result
                        mov              dword ptr [rbp + 1940], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_157_0]
                        mov              qword ptr [rbp + 1944], rax;         jmp   n30_subscript_α
.Llit_string_α_157_0:   .quad            .Llit_string_α_157_0_s
.Llit_string_α_157_0_s: .string          "alpha"
                        .size            n29_lit_string_bx, .-n29_lit_string_bx
                        .type            n30_subscript_bx, @function
n30_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_subscript_α:        mov              r11, 31
                        mov              rdi, qword ptr [rbp + 1920]
                        mov              rsi, qword ptr [rbp + 1928]
                        mov              rdx, qword ptr [rbp + 1936]
                        mov              rcx, qword ptr [rbp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n33_var_ref_α
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx;         jmp   n31_lit_integer_α
                        .size            n30_subscript_bx, .-n30_subscript_bx
                        .type            n31_lit_integer_bx, @function
n31_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      mov              r11, 32
                        mov              qword ptr [rbp + 2000], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_159_0]
                        mov              qword ptr [rbp + 2008], rax;         jmp   n32_assign_var_α
.Llit_integer_α_159_0:  .quad            111
                        .size            n31_lit_integer_bx, .-n31_lit_integer_bx
                        .type            n32_assign_var_bx, @function
n32_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_var_α:       mov              r11, 33
                        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              rdx, qword ptr [rbp + 2000]
                        mov              rcx, qword ptr [rbp + 2008]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n33_var_ref_α
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx;         jmp   n33_var_ref_α
                        .size            n32_assign_var_bx, .-n32_assign_var_bx
                        .type            n33_var_ref_bx, @function
n33_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n34_lit_string_α
                        .size            n33_var_ref_bx, .-n33_var_ref_bx
                        .type            n34_lit_string_bx, @function
n34_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rbp + 1248], 2            # result
                        mov              dword ptr [rbp + 1252], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_163_0]
                        mov              qword ptr [rbp + 1256], rax;         jmp   n35_subscript_α
.Llit_string_α_163_0:   .quad            .Llit_string_α_163_0_s
.Llit_string_α_163_0_s: .string          "alpha"
                        .size            n34_lit_string_bx, .-n34_lit_string_bx
                        .type            n35_subscript_bx, @function
n35_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_subscript_α:        mov              r11, 36
                        mov              rdi, qword ptr [rbp + 1232]
                        mov              rsi, qword ptr [rbp + 1240]
                        mov              rdx, qword ptr [rbp + 1248]
                        mov              rcx, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n36_lit_string_α
                        .size            n35_subscript_bx, .-n35_subscript_bx
                        .type            n36_lit_string_bx, @function
n36_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rbp + 1296], 2            # result
                        mov              dword ptr [rbp + 1300], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_165_0]
                        mov              qword ptr [rbp + 1304], rax;         jmp   n37_var_ref_α
.Llit_string_α_165_0:   .quad            .Llit_string_α_165_0_s
.Llit_string_α_165_0_s: .string          " "
                        .size            n36_lit_string_bx, .-n36_lit_string_bx
                        .type            n37_var_ref_bx, @function
n37_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n38_lit_string_α
                        .size            n37_var_ref_bx, .-n37_var_ref_bx
                        .type            n38_lit_string_bx, @function
n38_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:       mov              r11, 39
                        mov              qword ptr [rbp + 1344], 2            # result
                        mov              dword ptr [rbp + 1348], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_168_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n39_subscript_α
.Llit_string_α_168_0:   .quad            .Llit_string_α_168_0_s
.Llit_string_α_168_0_s: .string          "beta"
                        .size            n38_lit_string_bx, .-n38_lit_string_bx
                        .type            n39_subscript_bx, @function
n39_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_subscript_α:        mov              r11, 40
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1344]
                        mov              rcx, qword ptr [rbp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx;         jmp   n40_lit_string_α
                        .size            n39_subscript_bx, .-n39_subscript_bx
                        .type            n40_lit_string_bx, @function
n40_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              r11, 41
                        mov              qword ptr [rbp + 1392], 2            # result
                        mov              dword ptr [rbp + 1396], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_170_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n41_var_ref_α
.Llit_string_α_170_0:   .quad            .Llit_string_α_170_0_s
.Llit_string_α_170_0_s: .string          " "
                        .size            n40_lit_string_bx, .-n40_lit_string_bx
                        .type            n41_var_ref_bx, @function
n41_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n42_lit_integer_α
                        .size            n41_var_ref_bx, .-n41_var_ref_bx
                        .type            n42_lit_integer_bx, @function
n42_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      mov              r11, 43
                        mov              qword ptr [rbp + 1440], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_173_0]
                        mov              qword ptr [rbp + 1448], rax;         jmp   n43_subscript_α
.Llit_integer_α_173_0:  .quad            7
                        .size            n42_lit_integer_bx, .-n42_lit_integer_bx
                        .type            n43_subscript_bx, @function
n43_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_subscript_α:        mov              r11, 44
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n44_lit_string_α
                        .size            n43_subscript_bx, .-n43_subscript_bx
                        .type            n44_lit_string_bx, @function
n44_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       mov              r11, 45
                        mov              qword ptr [rbp + 1472], 2            # result
                        mov              dword ptr [rbp + 1476], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_175_0]
                        mov              qword ptr [rbp + 1480], rax;         jmp   n45_var_ref_α
.Llit_string_α_175_0:   .quad            .Llit_string_α_175_0_s
.Llit_string_α_175_0_s: .string          " "
                        .size            n44_lit_string_bx, .-n44_lit_string_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx;         jmp   n46_lit_integer_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_lit_integer_bx, @function
n46_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      mov              r11, 47
                        mov              qword ptr [rbp + 1520], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_178_0]
                        mov              qword ptr [rbp + 1528], rax;         jmp   n47_subscript_α
.Llit_integer_α_178_0:  .quad            18446744073709551613
                        .size            n46_lit_integer_bx, .-n46_lit_integer_bx
                        .type            n47_subscript_bx, @function
n47_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_subscript_α:        mov              r11, 48
                        mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        mov              rdx, qword ptr [rbp + 1520]
                        mov              rcx, qword ptr [rbp + 1528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx;         jmp   n48_lit_string_α
                        .size            n47_subscript_bx, .-n47_subscript_bx
                        .type            n48_lit_string_bx, @function
n48_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       mov              r11, 49
                        mov              qword ptr [rbp + 1552], 2            # result
                        mov              dword ptr [rbp + 1556], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_180_0]
                        mov              qword ptr [rbp + 1560], rax;         jmp   n49_var_ref_α
.Llit_string_α_180_0:   .quad            .Llit_string_α_180_0_s
.Llit_string_α_180_0_s: .string          " "
                        .size            n48_lit_string_bx, .-n48_lit_string_bx
                        .type            n49_var_ref_bx, @function
n49_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx;         jmp   n50_lit_integer_α
                        .size            n49_var_ref_bx, .-n49_var_ref_bx
                        .type            n50_lit_integer_bx, @function
n50_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      mov              r11, 51
                        mov              qword ptr [rbp + 1600], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_183_0]
                        mov              qword ptr [rbp + 1608], rax;         jmp   n51_subscript_α
.Llit_integer_α_183_0:  .quad            0
                        .size            n50_lit_integer_bx, .-n50_lit_integer_bx
                        .type            n51_subscript_bx, @function
n51_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_subscript_α:        mov              r11, 52
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        mov              rdx, qword ptr [rbp + 1600]
                        mov              rcx, qword ptr [rbp + 1608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx;         jmp   n52_lit_string_α
                        .size            n51_subscript_bx, .-n51_subscript_bx
                        .type            n52_lit_string_bx, @function
n52_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       mov              r11, 53
                        mov              qword ptr [rbp + 1632], 2            # result
                        mov              dword ptr [rbp + 1636], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_185_0]
                        mov              qword ptr [rbp + 1640], rax;         jmp   n53_var_ref_α
.Llit_string_α_185_0:   .quad            .Llit_string_α_185_0_s
.Llit_string_α_185_0_s: .string          " "
                        .size            n52_lit_string_bx, .-n52_lit_string_bx
                        .type            n53_var_ref_bx, @function
n53_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx;         jmp   n54_lit_string_α
                        .size            n53_var_ref_bx, .-n53_var_ref_bx
                        .type            n54_lit_string_bx, @function
n54_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       mov              r11, 55
                        mov              qword ptr [rbp + 1680], 2            # result
                        mov              dword ptr [rbp + 1684], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_188_0]
                        mov              qword ptr [rbp + 1688], rax;         jmp   n55_subscript_α
.Llit_string_α_188_0:   .quad            .Llit_string_α_188_0_s
.Llit_string_α_188_0_s: .string          "missing"
                        .size            n54_lit_string_bx, .-n54_lit_string_bx
                        .type            n55_subscript_bx, @function
n55_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_subscript_α:        mov              r11, 56
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx;         jmp   n56_lit_string_α
                        .size            n55_subscript_bx, .-n55_subscript_bx
                        .type            n56_lit_string_bx, @function
n56_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:       mov              r11, 57
                        mov              qword ptr [rbp + 1728], 2            # result
                        mov              dword ptr [rbp + 1732], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_190_0]
                        mov              qword ptr [rbp + 1736], rax;         jmp   n57_var_ref_α
.Llit_string_α_190_0:   .quad            .Llit_string_α_190_0_s
.Llit_string_α_190_0_s: .string          " "
                        .size            n56_lit_string_bx, .-n56_lit_string_bx
                        .type            n57_var_ref_bx, @function
n57_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:          mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n58_lit_integer_α
                        .size            n57_var_ref_bx, .-n57_var_ref_bx
                        .type            n58_lit_integer_bx, @function
n58_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      mov              r11, 59
                        mov              qword ptr [rbp + 1776], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_193_0]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n59_subscript_α
.Llit_integer_α_193_0:  .quad            12345
                        .size            n58_lit_integer_bx, .-n58_lit_integer_bx
                        .type            n59_subscript_bx, @function
n59_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_subscript_α:        mov              r11, 60
                        mov              rdi, qword ptr [rbp + 1760]
                        mov              rsi, qword ptr [rbp + 1768]
                        mov              rdx, qword ptr [rbp + 1776]
                        mov              rcx, qword ptr [rbp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n60_deref_α
                        .size            n59_subscript_bx, .-n59_subscript_bx
                        .type            n60_deref_bx, @function
n60_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_deref_α:            mov              r11, 61
                        mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx;         jmp   n61_deref_α
                        .size            n60_deref_bx, .-n60_deref_bx
                        .type            n61_deref_bx, @function
n61_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_deref_α:            mov              r11, 62
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx;         jmp   n62_deref_α
                        .size            n61_deref_bx, .-n61_deref_bx
                        .type            n62_deref_bx, @function
n62_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_deref_α:            mov              r11, 63
                        mov              rdi, qword ptr [rbp + 1456]
                        mov              rsi, qword ptr [rbp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx;         jmp   n63_deref_α
                        .size            n62_deref_bx, .-n62_deref_bx
                        .type            n63_deref_bx, @function
n63_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_deref_α:            mov              r11, 64
                        mov              rdi, qword ptr [rbp + 1536]
                        mov              rsi, qword ptr [rbp + 1544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n64_deref_α
                        .size            n63_deref_bx, .-n63_deref_bx
                        .type            n64_deref_bx, @function
n64_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_deref_α:            mov              r11, 65
                        mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx;         jmp   n65_deref_α
                        .size            n64_deref_bx, .-n64_deref_bx
                        .type            n65_deref_bx, @function
n65_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_deref_α:            mov              r11, 66
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx;         jmp   n66_deref_α
                        .size            n65_deref_bx, .-n65_deref_bx
                        .type            n66_deref_bx, @function
n66_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_deref_α:            mov              r11, 67
                        mov              rdi, qword ptr [rbp + 1792]
                        mov              rsi, qword ptr [rbp + 1800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n68_lit_integer_α
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx;         jmp   n67_call_icon_α
                        .size            n66_deref_bx, .-n66_deref_bx
                        .type            n67_call_icon_bx, @function
n67_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_call_icon_α:        mov              r11, 68
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lcall_icon_α_rkfn203:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn203]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              al, 104;                             je    n68_lit_integer_α
                                                                              jmp   n68_lit_integer_α
n67_call_icon_β:        mov              r11, 68;                             jmp   n68_lit_integer_α
                        .size            n67_call_icon_bx, .-n67_call_icon_bx
                        .type            n68_lit_integer_bx, @function
n68_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_integer_α:      mov              r11, 69
                        mov              qword ptr [rbp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_204_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n69_assign_α
.Llit_integer_α_204_0:  .quad            0
                        .size            n68_lit_integer_bx, .-n68_lit_integer_bx
                        .type            n69_assign_bx, @function
n69_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:           mov              r11, 70
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx;         jmp   n70_lit_integer_α
                        .size            n69_assign_bx, .-n69_assign_bx
                        .type            n70_lit_integer_bx, @function
n70_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      mov              r11, 71
                        mov              qword ptr [rbp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_206_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n71_lit_integer_α
.Llit_integer_α_206_0:  .quad            1
                        .size            n70_lit_integer_bx, .-n70_lit_integer_bx
                        .type            n71_lit_integer_bx, @function
n71_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:      mov              r11, 72
                        mov              qword ptr [rbp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_207_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n72_to_α
.Llit_integer_α_207_0:  .quad            5000
                        .size            n71_lit_integer_bx, .-n71_lit_integer_bx
                        .type            n72_to_bx, @function
n72_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_to_α:               mov              r11, 73
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 752], 3
                        mov              qword ptr [rbp + 760], rax
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 768], 3
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 736], rax
.Lto_α_209_0:           mov              rax, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 776]
                        cmp              rax, rcx;                            jg    n83_lit_integer_α
                        mov              qword ptr [rbp + 720], 3
                        mov              qword ptr [rbp + 728], rax;          jmp   n73_assign_α
n72_to_β:               mov              r11, 73
                        inc              qword ptr [rbp + 736];               jmp   .Lto_α_209_0
                        .size            n72_to_bx, .-n72_to_bx
                        .type            n73_assign_bx, @function
n73_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:           mov              r11, 74
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx;         jmp   n74_bound_α
                        .size            n73_assign_bx, .-n73_assign_bx
                        .type            n74_bound_bx, @function
n74_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_bound_α:            mov              r11, 75
                        mov              qword ptr [rbp + 784], rsp;          jmp   n75_var_ref_α
                        .size            n74_bound_bx, .-n74_bound_bx
                        .type            n75_var_ref_bx, @function
n75_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n76_var_ref_α
                        .size            n75_var_ref_bx, .-n75_var_ref_bx
                        .type            n76_var_ref_bx, @function
n76_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n77_deref_α
                        .size            n76_var_ref_bx, .-n76_var_ref_bx
                        .type            n77_deref_bx, @function
n77_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_deref_α:            mov              r11, 78
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n82_unmark_α
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n78_call_icon_α
                        .size            n77_deref_bx, .-n77_deref_bx
                        .type            n78_call_icon_bx, @function
n78_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_call_icon_α:        mov              r11, 79
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lcall_icon_α_rkfn219:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn219]
                        lea              rsi, [rbp + 864]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              al, 104;                             je    n82_unmark_α
                                                                              jmp   n79_subscript_α
n78_call_icon_β:        mov              r11, 79;                             jmp   n82_unmark_α
                        .size            n78_call_icon_bx, .-n78_call_icon_bx
                        .type            n79_subscript_bx, @function
n79_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_subscript_α:        mov              r11, 80
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n82_unmark_α
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n80_var_α
                        .size            n79_subscript_bx, .-n79_subscript_bx
                        .type            n80_var_bx, @function
n80_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:              mov              r11, 81
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 968], rax;          jmp   n81_assign_var_α
                        .size            n80_var_bx, .-n80_var_bx
                        .type            n81_assign_var_bx, @function
n81_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_var_α:       mov              r11, 82
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 960]
                        mov              rcx, qword ptr [rbp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n82_unmark_α
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n82_unmark_α
                        .size            n81_assign_var_bx, .-n81_assign_var_bx
                        .type            n82_unmark_bx, @function
n82_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_unmark_α:           mov              r11, 83
                        mov              rsp, qword ptr [rbp + 784];          jmp   n72_to_β
                        .size            n82_unmark_bx, .-n82_unmark_bx
                        .type            n83_lit_integer_bx, @function
n83_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      mov              r11, 84
                        mov              qword ptr [rbp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_226_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n84_lit_integer_α
.Llit_integer_α_226_0:  .quad            1
                        .size            n83_lit_integer_bx, .-n83_lit_integer_bx
                        .type            n84_lit_integer_bx, @function
n84_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      mov              r11, 85
                        mov              qword ptr [rbp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_227_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n85_to_α
.Llit_integer_α_227_0:  .quad            5000
                        .size            n84_lit_integer_bx, .-n84_lit_integer_bx
                        .type            n85_to_bx, @function
n85_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_to_α:               mov              r11, 86
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 448], 3
                        mov              qword ptr [rbp + 456], rax
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 464], 3
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 432], rax
.Lto_α_229_0:           mov              rax, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 472]
                        cmp              rax, rcx;                            jg    n00001_var_ref_α
                        mov              qword ptr [rbp + 416], 3
                        mov              qword ptr [rbp + 424], rax;          jmp   n86_assign_α
n85_to_β:               mov              r11, 86
                        inc              qword ptr [rbp + 432];               jmp   .Lto_α_229_0
                        .size            n85_to_bx, .-n85_to_bx
                        .type            n86_assign_bx, @function
n86_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:           mov              r11, 87
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx;         jmp   n87_bound_α
                        .size            n86_assign_bx, .-n86_assign_bx
                        .type            n87_bound_bx, @function
n87_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_bound_α:            mov              r11, 88
                        mov              qword ptr [rbp + 480], rsp;          jmp   n88_var_α
                        .size            n87_bound_bx, .-n87_bound_bx
                        .type            n88_var_bx, @function
n88_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              mov              r11, 89
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 584], rax;          jmp   n89_var_ref_α
                        .size            n88_var_bx, .-n88_var_bx
                        .type            n89_var_ref_bx, @function
n89_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n90_var_ref_α
                        .size            n89_var_ref_bx, .-n89_var_ref_bx
                        .type            n90_var_ref_bx, @function
n90_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2528]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n91_deref_α
                        .size            n90_var_ref_bx, .-n90_var_ref_bx
                        .type            n91_deref_bx, @function
n91_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_deref_α:            mov              r11, 92
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n99_unmark_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n92_call_icon_α
                        .size            n91_deref_bx, .-n91_deref_bx
                        .type            n92_call_icon_bx, @function
n92_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_call_icon_α:        mov              r11, 93
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lcall_icon_α_rkfn241:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn241]
                        lea              rsi, [rbp + 624]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    n99_unmark_α
                                                                              jmp   n93_subscript_α
n92_call_icon_β:        mov              r11, 93;                             jmp   n99_unmark_α
                        .size            n92_call_icon_bx, .-n92_call_icon_bx
                        .type            n93_subscript_bx, @function
n93_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_subscript_α:        mov              r11, 94
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n99_unmark_α
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n94_deref_α
                        .size            n93_subscript_bx, .-n93_subscript_bx
                        .type            n94_deref_bx, @function
n94_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_deref_α:            mov              r11, 95
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n99_unmark_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n95_coerce_numeric_α
                        .size            n94_deref_bx, .-n94_deref_bx
                        .type            n95_coerce_numeric_bx, @function
n95_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_coerce_numeric_α:   mov              r11, 96
                        mov              eax, dword ptr [rbp + 2512]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_245_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_245_0
                        mov              eax, dword ptr [rbp + 704]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_245_0
.Lcoerce_numeric_α_245_1:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 568], rax;          jmp   n96_coerce_numeric_α
.Lcoerce_numeric_α_245_0:
                        lea              rdi, [rbp + 2512]
                        lea              rsi, [rbp + 704]
                        lea              rdx, [rbp + 560]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 560]
                        cmp              al, 104;                             je    n99_unmark_α
                                                                              jmp   n96_coerce_numeric_α
                        .size            n95_coerce_numeric_bx, .-n95_coerce_numeric_bx
                        .type            n96_coerce_numeric_bx, @function
n96_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_coerce_numeric_α:   mov              r11, 97
                        mov              eax, dword ptr [rbp + 704]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_247_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_247_0
                        mov              eax, dword ptr [rbp + 2512]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_247_0
.Lcoerce_numeric_α_247_1:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 552], rax;          jmp   n97_binop_α
.Lcoerce_numeric_α_247_0:
                        lea              rdi, [rbp + 704]
                        lea              rsi, [rbp + 2512]
                        lea              rdx, [rbp + 544]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 544]
                        cmp              al, 104;                             je    n99_unmark_α
                                                                              jmp   n97_binop_α
                        .size            n96_coerce_numeric_bx, .-n96_coerce_numeric_bx
                        .type            n97_binop_bx, @function
n97_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_binop_α:            mov              r11, 98
                        mov              eax, dword ptr [rbp + 560]
                        mov              ecx, dword ptr [rbp + 544]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_248_2
                        mov              rax, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 552]
                        add              rax, rdx;                            jo    .Lbinop_α_248_0
                        mov              qword ptr [rbp + 528], 3
                        mov              qword ptr [rbp + 536], rax;          jmp   .Lbinop_α_248_7
.Lbinop_α_248_2:        and              edx, 1;                              jz    .Lbinop_α_248_0
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdi, qword ptr [rbp + 552]
                        cmp              al, 5;                               je    .Lbinop_α_248_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_248_4
.Lbinop_α_248_3:        movq             xmm0, rsi
.Lbinop_α_248_4:        cmp              cl, 5;                               je    .Lbinop_α_248_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_248_6
.Lbinop_α_248_5:        movq             xmm1, rdi
.Lbinop_α_248_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_248_0
                        mov              qword ptr [rbp + 528], 5
                        mov              qword ptr [rbp + 536], rax
.Lbinop_α_248_7:                                                              jmp   n98_assign_α
.Lbinop_α_248_0:        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 544]
                        mov              rcx, qword ptr [rbp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n99_unmark_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n98_assign_α
                        .size            n97_binop_bx, .-n97_binop_bx
                        .type            n98_assign_bx, @function
n98_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:           mov              r11, 99
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx;         jmp   n99_unmark_α
                        .size            n98_assign_bx, .-n98_assign_bx
                        .type            n99_unmark_bx, @function
n99_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_unmark_α:           mov              r11, 100
                        mov              rsp, qword ptr [rbp + 480];          jmp   n85_to_β
                        .size            n99_unmark_bx, .-n99_unmark_bx
                        .type            n00001_var_ref_bx, @function
n00001_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n00002_deref_α
                        .size            n00001_var_ref_bx, .-n00001_var_ref_bx
                        .type            n00002_deref_bx, @function
n00002_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_deref_α:           mov              r11, 102
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00003_lit_integer_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00004_call_icon_α
                        .size            n00002_deref_bx, .-n00002_deref_bx
                        .type            n00004_call_icon_bx, @function
n00004_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_call_icon_α:       mov              r11, 103
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lcall_icon_α_rkfn256:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn256]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    n00003_lit_integer_α
                                                                              jmp   n00003_lit_integer_α
n00004_call_icon_β:       mov              r11, 103;                            jmp   n00003_lit_integer_α
                        .size            n00004_call_icon_bx, .-n00004_call_icon_bx
                        .type            n00003_lit_integer_bx, @function
n00003_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_lit_integer_α:     mov              r11, 104
                        mov              qword ptr [rbp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_257_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n00005_lit_integer_α
.Llit_integer_α_257_0:  .quad            1
                        .size            n00003_lit_integer_bx, .-n00003_lit_integer_bx
                        .type            n00005_lit_integer_bx, @function
n00005_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_lit_integer_α:     mov              r11, 105
                        mov              qword ptr [rbp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_258_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n00006_to_α
.Llit_integer_α_258_0:  .quad            5000
                        .size            n00005_lit_integer_bx, .-n00005_lit_integer_bx
                        .type            n00006_to_bx, @function
n00006_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_to_α:              mov              r11, 106
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 112], rax
.Lto_α_260_0:           mov              rax, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 152]
                        cmp              rax, rcx;                            jg    n00007_var_ref_α
                        mov              qword ptr [rbp + 96], 3
                        mov              qword ptr [rbp + 104], rax;          jmp   n00008_assign_α
n00006_to_β:              mov              r11, 106
                        inc              qword ptr [rbp + 112];               jmp   .Lto_α_260_0
                        .size            n00006_to_bx, .-n00006_to_bx
                        .type            n00008_assign_bx, @function
n00008_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_assign_α:          mov              r11, 107
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx;         jmp   n00009_bound_α
                        .size            n00008_assign_bx, .-n00008_assign_bx
                        .type            n00009_bound_bx, @function
n00009_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_bound_α:           mov              r11, 108
                        mov              qword ptr [rbp + 160], rsp;          jmp   n00010_var_α
                        .size            n00009_bound_bx, .-n00009_bound_bx
                        .type            n00010_var_bx, @function
n00010_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_var_α:             mov              r11, 109
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 264], rax;          jmp   n00011_var_ref_α
                        .size            n00010_var_bx, .-n00010_var_bx
                        .type            n00011_var_ref_bx, @function
n00011_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_var_ref_α:         mov              r11, 110
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2544]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n00012_var_α
                        .size            n00011_var_ref_bx, .-n00011_var_ref_bx
                        .type            n00012_var_bx, @function
n00012_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_var_α:             mov              r11, 111
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00013_subscript_α
                        .size            n00012_var_bx, .-n00012_var_bx
                        .type            n00013_subscript_bx, @function
n00013_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_subscript_α:       mov              r11, 112
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00014_unmark_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n00015_deref_α
                        .size            n00013_subscript_bx, .-n00013_subscript_bx
                        .type            n00015_deref_bx, @function
n00015_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_deref_α:           mov              r11, 113
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00014_unmark_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n00016_coerce_numeric_α
                        .size            n00015_deref_bx, .-n00015_deref_bx
                        .type            n00016_coerce_numeric_bx, @function
n00016_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_coerce_numeric_α:  mov              r11, 114
                        mov              eax, dword ptr [rbp + 2512]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_273_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_273_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_273_0
.Lcoerce_numeric_α_273_1:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00017_coerce_numeric_α
.Lcoerce_numeric_α_273_0:
                        lea              rdi, [rbp + 2512]
                        lea              rsi, [rbp + 320]
                        lea              rdx, [rbp + 240]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 104;                             je    n00014_unmark_α
                                                                              jmp   n00017_coerce_numeric_α
                        .size            n00016_coerce_numeric_bx, .-n00016_coerce_numeric_bx
                        .type            n00017_coerce_numeric_bx, @function
n00017_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_coerce_numeric_α:  mov              r11, 115
                        mov              eax, dword ptr [rbp + 320]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_275_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_275_0
                        mov              eax, dword ptr [rbp + 2512]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_275_0
.Lcoerce_numeric_α_275_1:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 232], rax;          jmp   n00018_binop_α
.Lcoerce_numeric_α_275_0:
                        lea              rdi, [rbp + 320]
                        lea              rsi, [rbp + 2512]
                        lea              rdx, [rbp + 224]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 224]
                        cmp              al, 104;                             je    n00014_unmark_α
                                                                              jmp   n00018_binop_α
                        .size            n00017_coerce_numeric_bx, .-n00017_coerce_numeric_bx
                        .type            n00018_binop_bx, @function
n00018_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_binop_α:           mov              r11, 116
                        mov              eax, dword ptr [rbp + 240]
                        mov              ecx, dword ptr [rbp + 224]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_276_2
                        mov              rax, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 232]
                        add              rax, rdx;                            jo    .Lbinop_α_276_0
                        mov              qword ptr [rbp + 208], 3
                        mov              qword ptr [rbp + 216], rax;          jmp   .Lbinop_α_276_7
.Lbinop_α_276_2:        and              edx, 1;                              jz    .Lbinop_α_276_0
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdi, qword ptr [rbp + 232]
                        cmp              al, 5;                               je    .Lbinop_α_276_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_276_4
.Lbinop_α_276_3:        movq             xmm0, rsi
.Lbinop_α_276_4:        cmp              cl, 5;                               je    .Lbinop_α_276_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_276_6
.Lbinop_α_276_5:        movq             xmm1, rdi
.Lbinop_α_276_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_276_0
                        mov              qword ptr [rbp + 208], 5
                        mov              qword ptr [rbp + 216], rax
.Lbinop_α_276_7:                                                              jmp   n00019_assign_α
.Lbinop_α_276_0:        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00014_unmark_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00019_assign_α
                        .size            n00018_binop_bx, .-n00018_binop_bx
                        .type            n00019_assign_bx, @function
n00019_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_assign_α:          mov              r11, 117
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx;         jmp   n00014_unmark_α
                        .size            n00019_assign_bx, .-n00019_assign_bx
                        .type            n00014_unmark_bx, @function
n00014_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_unmark_α:          mov              r11, 118
                        mov              rsp, qword ptr [rbp + 160];          jmp   n00006_to_β
                        .size            n00014_unmark_bx, .-n00014_unmark_bx
                        .type            n00007_var_ref_bx, @function
n00007_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2512]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n00020_deref_α
                        .size            n00007_var_ref_bx, .-n00007_var_ref_bx
                        .type            n00020_deref_bx, @function
n00020_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_deref_α:           mov              r11, 120
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx;           jmp   n00021_call_icon_α
                        .size            n00020_deref_bx, .-n00020_deref_bx
                        .type            n00021_call_icon_bx, @function
n00021_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_call_icon_α:       mov              r11, 121
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn284:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn284]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n00021_call_icon_β:       mov              r11, 121;                            jmp   main_ω
                        .size            n00021_call_icon_bx, .-n00021_call_icon_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lmain_α_283_248
                        .section         .rodata
.Licn_trace_nm285:      .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm285]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_283_248:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lmain_α_283_249
                        .section         .rodata
.Licn_trace_nm286:      .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm286]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_283_249:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
