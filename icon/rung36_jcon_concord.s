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
                        sub              rsp, 2800
                        mov              rdi, rsp
                        add              rdi, 2400
                        xor              eax, eax
                        mov              ecx, 176
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 11
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_charset_α:       mov              r11, 1
                        mov              qword ptr [rsp + 2352], 2            # result
                        mov              dword ptr [rsp + 2356], -1
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n1_lit_charset_α
.Lx124_0:               .quad            .Lx124_0_s
.Lx124_0_s:             .string          "abcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_charset_α:       mov              r11, 2
                        mov              qword ptr [rsp + 2368], 2            # result
                        mov              dword ptr [rsp + 2372], -1
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n2_binop_α
.Lx125_0:               .quad            .Lx125_0_s
.Lx125_0_s:             .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#-----------------------------------------------------------------------------------------------------------------------
n2_binop_α:             mov              r11, 3
                        mov              rdi, qword ptr [rsp + 2352]
                        mov              rsi, qword ptr [rsp + 2360]
                        mov              rdx, qword ptr [rsp + 2368]
                        mov              rcx, qword ptr [rsp + 2376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cunion@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n6_lit_string_α
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx;         jmp   n3_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_charset_α:       mov              r11, 4
                        mov              qword ptr [rsp + 2384], 2            # result
                        mov              dword ptr [rsp + 2388], -1
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rsp + 2392], rax;         jmp   n4_binop_α
.Lx127_0:               .quad            .Lx127_0_s
.Lx127_0_s:             .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n4_binop_α:             mov              r11, 5
                        mov              rdi, qword ptr [rsp + 2336]
                        mov              rsi, qword ptr [rsp + 2344]
                        mov              rdx, qword ptr [rsp + 2384]
                        mov              rcx, qword ptr [rsp + 2392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cunion@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n6_lit_string_α
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx;         jmp   n5_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:            mov              r11, 6
                        mov              rax, qword ptr [rsp + 2320]
                        mov              rdx, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx;         jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 2304], 2            # result
                        mov              dword ptr [rsp + 2308], 0
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n7_call_builtin_icon_α
.Lx130_0:               .quad            .Lx130_0_s
.Lx130_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α: mov              r11, 8
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2280], rax
                        .section         .rodata
.Lrkfn132:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn132]
                        lea              rsi, [rsp + 2272]
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
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        cmp              al, 104;                             je    n9_lit_integer_α
                                                                              jmp   n8_assign_α
n7_call_builtin_icon_β: mov              r11, 8;                              jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:            mov              r11, 9
                        mov              rax, qword ptr [rsp + 2256]
                        mov              rdx, qword ptr [rsp + 2264]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx;         jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              r11, 10
                        mov              qword ptr [rsp + 2240], 3            # result
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n10_assign_α
.Lx134_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rsp + 2240]
                        mov              rdx, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx;         jmp   n11_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:           mov              r11, 12
                        mov              rax, qword ptr [rsp + 2224]
                        mov              rdx, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n12_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_icon_α:
                        mov              r11, 13
                        .section         .rodata
.Lrkfn138:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn138]
                        lea              rsi, [rsp + 912]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262295
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n77_call_builtin_icon_α
                                                                              jmp   n13_assign_α
n12_call_builtin_icon_β:
                        mov              r11, 13;                             jmp   n77_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx;         jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              mov              r11, 15
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      mov              r11, 16
                        mov              qword ptr [rsp + 2208], 3            # result
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n16_coerce_numeric_α
.Lx142_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n16_coerce_numeric_α:   mov              r11, 17
                        mov              eax, dword ptr [rsp + 2560]
                        cmp              al, 5;                               je    .Lx144_1
                        cmp              al, 3;                               jne   .Lx144_0
                        mov              eax, dword ptr [rsp + 2208]
                        cmp              al, 3;                               jne   .Lx144_0
.Lx144_1:               mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n17_binop_α
.Lx144_0:               lea              rdi, [rsp + 2560]
                        lea              rsi, [rsp + 2208]
                        lea              rdx, [rsp + 2176]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n17_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n17_binop_α:            mov              r11, 18
                        mov              eax, dword ptr [rsp + 2176]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx145_2
                        mov              rax, qword ptr [rsp + 2184]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 2160], 3
                        mov              qword ptr [rsp + 2168], rax;         jmp   .Lx145_7
.Lx145_2:               and              edx, 1;                              jz    .Lx145_0
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx145_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx145_4
.Lx145_3:               movq             xmm0, rsi
.Lx145_4:               cmp              cl, 5;                               je    .Lx145_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx145_6
.Lx145_5:               movq             xmm1, rdi
.Lx145_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 2160], 5
                        mov              qword ptr [rsp + 2168], rax
.Lx145_7:                                                                     jmp   n18_assign_α
.Lx145_0:               mov              rdi, qword ptr [rsp + 2176]
                        mov              rsi, qword ptr [rsp + 2184]
                        mov              rdx, qword ptr [rsp + 2208]
                        mov              rcx, qword ptr [rsp + 2216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n19_var_α
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx;         jmp   n18_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              r11, 19
                        mov              rax, qword ptr [rsp + 2160]
                        mov              rdx, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n19_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:              mov              r11, 20
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n20_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              r11, 21
                        mov              qword ptr [rsp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rsp + 2120], rax;         jmp   n21_call_builtin_icon_α
.Lx149_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_icon_α:
                        mov              r11, 22
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2072], rax
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2056], rax
                        .section         .rodata
.Lrkfn151:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rsp + 2048]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327837
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        cmp              al, 104;                             je    n25_var_α
                                                                              jmp   n22_lit_string_α
n21_call_builtin_icon_β:
                        mov              r11, 22;                             jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              r11, 23
                        mov              qword ptr [rsp + 2128], 2            # result
                        mov              dword ptr [rsp + 2132], 2
                        mov              rax, qword ptr [rip + .Lx152_0]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n23_var_α
.Lx152_0:               .quad            .Lx152_0_s
.Lx152_0_s:             .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              r11, 24
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n24_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_icon_α:
                        mov              r11, 25
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2008], rax
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 1992], rax
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 1976], rax
                        .section         .rodata
.Lrkfn156:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn156]
                        lea              rsi, [rsp + 1968]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              al, 104;                             je    n25_var_α
                                                                              jmp   n25_var_α
n24_call_builtin_icon_β:
                        mov              r11, 25;                             jmp   n25_var_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              mov              r11, 26
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 1944], rax;         jmp   n26_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_icon_α:
                        mov              r11, 27
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1912], rax
                        .section         .rodata
.Lrkfn160:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn160]
                        lea              rsi, [rsp + 1904]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196743
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              al, 104;                             je    n28_lit_integer_α
                                                                              jmp   n27_assign_α
n26_call_builtin_icon_β:
                        mov              r11, 27;                             jmp   n28_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:           mov              r11, 28
                        mov              rax, qword ptr [rsp + 1888]
                        mov              rdx, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx;         jmp   n28_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      mov              r11, 29
                        mov              qword ptr [rsp + 1872], 3            # result
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n29_assign_α
.Lx162_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:           mov              r11, 30
                        mov              rax, qword ptr [rsp + 1872]
                        mov              rdx, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx;         jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              mov              r11, 31
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:              mov              r11, 32
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n32_var_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              mov              r11, 33
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n33_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_gen_α: mov              r11, 34
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 952], rax
                        mov              qword ptr [rsp + 992], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx170_60:              .section         .rodata
.Lbynamegenfn34:        .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn34]
                        lea              rsi, [rsp + 944]
                        mov              edx, 3
                        lea              rcx, [rsp + 992]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n12_call_builtin_icon_α
                                                                              jmp   n34_assign_α
n33_call_builtin_gen_β: mov              r11, 34;                             jmp   .Lx170_60
#-----------------------------------------------------------------------------------------------------------------------
n34_assign_α:           mov              r11, 35
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n35_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              mov              r11, 36
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n36_var_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              mov              r11, 37
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              mov              r11, 38
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n38_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_icon_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1800], rax
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1784], rax
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1768], rax
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
.Lbynamefn39:           .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn39]
                        lea              rsi, [rsp + 1760]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262278
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
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
                        cmp              al, 104;                             je    n40_var_α
                                                                              jmp   n39_assign_α
n38_call_builtin_icon_β:
                        mov              r11, 39;                             jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              r11, 40
                        mov              rax, qword ptr [rsp + 1744]
                        mov              rdx, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx;         jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:              mov              r11, 41
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              mov              r11, 42
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              mov              r11, 43
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n43_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n43_subscript_α:        mov              r11, 44
                        mov              rdi, qword ptr [rsp + 1696]
                        mov              rsi, qword ptr [rsp + 1704]
                        mov              rdx, qword ptr [rsp + 1712]
                        mov              rcx, qword ptr [rsp + 1720]
                        mov              r8, qword ptr [rsp + 1728]
                        mov              r9, qword ptr [rsp + 1736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n45_disjunction_α
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx;         jmp   n44_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n44_assign_α:           mov              r11, 45
                        mov              rax, qword ptr [rsp + 1680]
                        mov              rdx, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx;         jmp   n45_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n45_disjunction_α:      mov              r11, 46
                        mov              qword ptr [rsp + 1584], 0
                        mov              qword ptr [rsp + 1592], 0
                        mov              dword ptr [rsp + 1600], 0;           jmp   n73_var_α
n45_disjunction_as:     mov              r11, 46
                        mov              eax, dword ptr [rsp + 1600]
                        cmp              eax, 0;                              jne   .Lx189_0
                                                                              jmp   n46_var_α
.Lx189_0:                                                                     jmp   n46_var_α
n45_disjunction_β:      mov              r11, 46
                        mov              eax, dword ptr [rsp + 1600];         jmp   n46_var_α
n45_disjunction_af:     mov              r11, 46
                        add              dword ptr [rsp + 1600], 1
                        mov              eax, dword ptr [rsp + 1600];         jmp   n46_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              mov              r11, 47
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n47_var_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              mov              r11, 48
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n48_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n48_unop_α:             mov              r11, 49
                        mov              rdi, qword ptr [rsp + 2400]
                        mov              rsi, qword ptr [rsp + 2408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx;         jmp   n49_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_test_α:       mov              r11, 50
                        mov              eax, dword ptr [rsp + 2448]
                        cmp              al, 112;                             je    .Lx195_0
                        mov              eax, dword ptr [rsp + 1552]
                        cmp              al, 112;                             je    .Lx195_0
                        mov              eax, dword ptr [rsp + 2448]
                        cmp              al, 3;                               jne   .Lx195_2
                        mov              eax, dword ptr [rsp + 1552]
                        cmp              al, 3;                               jne   .Lx195_2
.Lx195_1:               mov              rax, qword ptr [rsp + 2456]
                        mov              rcx, qword ptr [rsp + 1560]
                        cmp              rax, rcx;                            jge   n51_disjunction_α
                        mov              rcx, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1520], rcx
                        mov              rcx, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1528], rcx;         jmp   n50_assign_α
.Lx195_0:               mov              rdi, qword ptr [rsp + 2448]
                        mov              rsi, qword ptr [rsp + 2456]
                        mov              rdx, qword ptr [rsp + 1552]
                        mov              rcx, qword ptr [rsp + 1560]
                        mov              r8d, 5
                        lea              r9, [rsp + 1520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx195_1
                        cmp              eax, 1;                              je    n51_disjunction_α
                                                                              jmp   n50_assign_α
.Lx195_2:               mov              rdi, qword ptr [rsp + 2448]
                        mov              rsi, qword ptr [rsp + 2456]
                        mov              rdx, qword ptr [rsp + 1552]
                        mov              rcx, qword ptr [rsp + 1560]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n51_disjunction_α
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n50_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              r11, 51
                        mov              rax, qword ptr [rsp + 1520]
                        mov              rdx, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx;         jmp   n51_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n51_disjunction_α:      mov              r11, 52
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              dword ptr [rsp + 1088], 0;           jmp   n59_var_ref_α
n51_disjunction_as:     mov              r11, 52
                        mov              eax, dword ptr [rsp + 1088]
                        cmp              eax, 0;                              jne   .Lx198_0
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n52_conjunction_α
.Lx198_0:               cmp              eax, 1;                              jne   .Lx198_1
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n52_conjunction_α
.Lx198_1:                                                                     jmp   n52_conjunction_α
n51_disjunction_β:      mov              r11, 52
                        mov              eax, dword ptr [rsp + 1088]
                        cmp              eax, 0;                              je    n30_var_α
                                                                              jmp   n30_var_α
n51_disjunction_af:     mov              r11, 52
                        add              dword ptr [rsp + 1088], 1
                        mov              eax, dword ptr [rsp + 1088]
                        cmp              eax, 1;                              je    n53_var_ref_α
                                                                              jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n52_conjunction_α:      mov              r11, 53
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n30_var_α
n52_conjunction_β:      mov              r11, 53;                             jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2496]
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n54_var_α
n53_var_ref_β:          mov              r11, 54;                             jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              mov              r11, 55
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n55_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n55_subscript_α:        mov              r11, 56
                        mov              rdi, qword ptr [rsp + 1440]
                        mov              rsi, qword ptr [rsp + 1448]
                        mov              rdx, qword ptr [rsp + 1456]
                        mov              rcx, qword ptr [rsp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n30_var_α
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n56_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n56_deref_α:            mov              r11, 57
                        mov              rdi, qword ptr [rsp + 1472]
                        mov              rsi, qword ptr [rsp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n30_var_α
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n57_var_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              mov              r11, 58
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n58_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_icon_α:
                        mov              r11, 59
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1416], rax
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1400], rax
                        .section         .rodata
.Lrkfn209:              .string          "insert"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rsp + 1392]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393341
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              al, 104;                             je    n30_var_α
                                                                              jmp   n51_disjunction_as
n58_call_builtin_icon_β:
                        mov              r11, 59;                             jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:          mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2496]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx;         jmp   n60_var_α
n59_var_ref_β:          mov              r11, 60;                             jmp   n51_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              mov              r11, 61
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n61_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n61_subscript_α:        mov              r11, 62
                        mov              rdi, qword ptr [rsp + 1296]
                        mov              rsi, qword ptr [rsp + 1304]
                        mov              rdx, qword ptr [rsp + 1312]
                        mov              rcx, qword ptr [rsp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n51_disjunction_af
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n62_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_deref_α:            mov              r11, 63
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
                        cmp              al, 104;                             je    n51_disjunction_af
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n63_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n63_unop_α:             mov              r11, 64
                        mov              rdi, qword ptr [rsp + 1344]
                        mov              rsi, qword ptr [rsp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n64_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:      mov              r11, 65
                        mov              qword ptr [rsp + 1360], 3            # result
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n65_binop_test_α
.Lx217_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n65_binop_test_α:       mov              r11, 66
                        mov              eax, dword ptr [rsp + 1280]
                        cmp              al, 112;                             je    .Lx218_0
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              al, 112;                             je    .Lx218_0
                        mov              eax, dword ptr [rsp + 1280]
                        cmp              al, 3;                               jne   .Lx218_2
                        mov              eax, dword ptr [rsp + 1360]
                        cmp              al, 3;                               jne   .Lx218_2
.Lx218_1:               mov              rax, qword ptr [rsp + 1288]
                        mov              rcx, qword ptr [rsp + 1368]
                        cmp              rax, rcx;                            jne   n51_disjunction_af
                        mov              rcx, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1264], rcx
                        mov              rcx, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1272], rcx;         jmp   n66_var_ref_α
.Lx218_0:               mov              rdi, qword ptr [rsp + 1280]
                        mov              rsi, qword ptr [rsp + 1288]
                        mov              rdx, qword ptr [rsp + 1360]
                        mov              rcx, qword ptr [rsp + 1368]
                        mov              r8d, 9
                        lea              r9, [rsp + 1264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx218_1
                        cmp              eax, 1;                              je    n51_disjunction_af
                                                                              jmp   n66_var_ref_α
.Lx218_2:               mov              rdi, qword ptr [rsp + 1280]
                        mov              rsi, qword ptr [rsp + 1288]
                        mov              rdx, qword ptr [rsp + 1360]
                        mov              rcx, qword ptr [rsp + 1368]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n51_disjunction_af
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n66_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:          mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2496]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n67_var_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              mov              r11, 68
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n68_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n68_subscript_α:        mov              r11, 69
                        mov              rdi, qword ptr [rsp + 1104]
                        mov              rsi, qword ptr [rsp + 1112]
                        mov              rdx, qword ptr [rsp + 1120]
                        mov              rcx, qword ptr [rsp + 1128]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n30_var_α
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n69_var_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              mov              r11, 70
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n70_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n70_make_list_α:        mov              r11, 71
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1240], rax
                        lea              rdi, [rsp + 1232]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n71_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_icon_α:
                        mov              r11, 72
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1192], rax
                        .section         .rodata
.Lrkfn229:              .string          "set"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn229]
                        lea              rsi, [rsp + 1184]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196768
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n30_var_α
                                                                              jmp   n72_assign_var_α
n71_call_builtin_icon_β:
                        mov              r11, 72;                             jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_var_α:       mov              r11, 73
                        mov              rdi, qword ptr [rsp + 1136]
                        mov              rsi, qword ptr [rsp + 1144]
                        mov              rdx, qword ptr [rsp + 1168]
                        mov              rcx, qword ptr [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n30_var_α
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n51_disjunction_as
n72_assign_var_β:       mov              r11, 73;                             jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              mov              r11, 74
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n74_unop_α
n73_var_β:              mov              r11, 74;                             jmp   n45_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n74_unop_α:             mov              r11, 75
                        mov              rdi, qword ptr [rsp + 2400]
                        mov              rsi, qword ptr [rsp + 2408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n75_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:      mov              r11, 76
                        mov              qword ptr [rsp + 1664], 3            # result
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n76_binop_test_α
.Lx234_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n76_binop_test_α:       mov              r11, 77
                        mov              eax, dword ptr [rsp + 1632]
                        cmp              al, 112;                             je    .Lx235_0
                        mov              eax, dword ptr [rsp + 1664]
                        cmp              al, 112;                             je    .Lx235_0
                        mov              eax, dword ptr [rsp + 1632]
                        cmp              al, 3;                               jne   .Lx235_2
                        mov              eax, dword ptr [rsp + 1664]
                        cmp              al, 3;                               jne   .Lx235_2
.Lx235_1:               mov              rax, qword ptr [rsp + 1640]
                        mov              rcx, qword ptr [rsp + 1672]
                        cmp              rax, rcx;                            jge   n45_disjunction_af
                        mov              rcx, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1616], rcx
                        mov              rcx, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1624], rcx;         jmp   n30_var_α
.Lx235_0:               mov              rdi, qword ptr [rsp + 1632]
                        mov              rsi, qword ptr [rsp + 1640]
                        mov              rdx, qword ptr [rsp + 1664]
                        mov              rcx, qword ptr [rsp + 1672]
                        mov              r8d, 5
                        lea              r9, [rsp + 1616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx235_1
                        cmp              eax, 1;                              je    n45_disjunction_af
                                                                              jmp   n30_var_α
.Lx235_2:               mov              rdi, qword ptr [rsp + 1632]
                        mov              rsi, qword ptr [rsp + 1640]
                        mov              rdx, qword ptr [rsp + 1664]
                        mov              rcx, qword ptr [rsp + 1672]
                        mov              r8d, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n45_disjunction_af
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n30_var_α
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_icon_α:
                        mov              r11, 78
                        .section         .rodata
.Lrkfn237:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]
                        lea              rsi, [rsp + 880]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n78_var_α
                                                                              jmp   n78_var_α
n77_call_builtin_icon_β:
                        mov              r11, 78;                             jmp   n78_var_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              mov              r11, 79
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 856], rax;          jmp   n79_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_icon_α:
                        mov              r11, 80
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn241:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn241]
                        lea              rsi, [rsp + 816]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n81_lit_integer_α
                                                                              jmp   n80_assign_α
n79_call_builtin_icon_β:
                        mov              r11, 80;                             jmp   n81_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:           mov              r11, 81
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx;         jmp   n81_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:      mov              r11, 82
                        mov              qword ptr [rsp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n82_assign_α
.Lx243_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:           mov              r11, 83
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx;         jmp   n83_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2416]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx;           jmp   n84_var_α
#-----------------------------------------------------------------------------------------------------------------------
n84_var_α:              mov              r11, 85
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 88], rax;           jmp   n85_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      mov              r11, 86
                        mov              qword ptr [rsp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n86_coerce_numeric_α
.Lx249_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n86_coerce_numeric_α:   mov              r11, 87
                        mov              eax, dword ptr [rsp + 2432]
                        cmp              al, 5;                               je    .Lx251_1
                        cmp              al, 3;                               jne   .Lx251_0
                        mov              eax, dword ptr [rsp + 96]
                        cmp              al, 3;                               jne   .Lx251_0
.Lx251_1:               mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 72], rax;           jmp   n87_binop_α
.Lx251_0:               lea              rdi, [rsp + 2432]
                        lea              rsi, [rsp + 96]
                        lea              rdx, [rsp + 64]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n87_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n87_binop_α:            mov              r11, 88
                        mov              eax, dword ptr [rsp + 64]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx252_2
                        mov              rax, qword ptr [rsp + 72]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 48], 3
                        mov              qword ptr [rsp + 56], rax;           jmp   .Lx252_7
.Lx252_2:               and              edx, 1;                              jz    .Lx252_0
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lx252_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx252_4
.Lx252_3:               movq             xmm0, rsi
.Lx252_4:               cmp              cl, 5;                               je    .Lx252_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx252_6
.Lx252_5:               movq             xmm1, rdi
.Lx252_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 48], 5
                        mov              qword ptr [rsp + 56], rax
.Lx252_7:                                                                     jmp   n88_assign_α
.Lx252_0:               mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n88_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:           mov              r11, 89
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx;           jmp   n89_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n89_subscript_α:        mov              r11, 90
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n90_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:      mov              r11, 91
                        mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n91_subscript_α
.Lx255_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n91_subscript_α:        mov              r11, 92
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 128]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx;          jmp   n92_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n92_deref_α:            mov              r11, 93
                        mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx;          jmp   n93_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_α:           mov              r11, 94
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx;         jmp   n94_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       mov              r11, 95
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 0
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n95_assign_α
.Lx259_0:               .quad            .Lx259_0_s
.Lx259_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n95_assign_α:           mov              r11, 96
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n96_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2416]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n97_var_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              mov              r11, 98
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 696], rax;          jmp   n98_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n98_subscript_α:        mov              r11, 99
                        mov              rdi, qword ptr [rsp + 672]
                        mov              rsi, qword ptr [rsp + 680]
                        mov              rdx, qword ptr [rsp + 688]
                        mov              rcx, qword ptr [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n104_var_α
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n99_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:      mov              r11, 100
                        mov              qword ptr [rsp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Lx266_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n100_subscript_α
.Lx266_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n100_subscript_α:       mov              r11, 101
                        mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n104_var_α
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n101_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n101_deref_α:           mov              r11, 102
                        mov              rdi, qword ptr [rsp + 736]
                        mov              rsi, qword ptr [rsp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n104_var_α
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n102_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_icon_α:
                        mov              r11, 103
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn270:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn270]
                        lea              rsi, [rsp + 640]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262305
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n104_var_α
                                                                              jmp   n103_assign_α
n102_call_builtin_icon_β:
                        mov              r11, 103;                            jmp   n104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n103_assign_α:          mov              r11, 104
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx;         jmp   n104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:             mov              r11, 105
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 520], rax;          jmp   n105_var_α
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:             mov              r11, 106
                        mov              rax, qword ptr [rsp + 2480]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 2488]
                        mov              qword ptr [rsp + 600], rax;          jmp   n106_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_icon_α:
                        mov              r11, 107
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn277:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn277]
                        lea              rsi, [rsp + 560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n111_var_α
                                                                              jmp   n107_lit_string_α
n106_call_builtin_icon_β:
                        mov              r11, 107;                            jmp   n111_var_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      mov              r11, 108
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 2
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n108_binop_α
.Lx278_0:               .quad            .Lx278_0_s
.Lx278_0_s:             .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n108_binop_α:           mov              r11, 109
                        mov              rdi, qword ptr [rsp + 544]
                        mov              rsi, qword ptr [rsp + 552]
                        mov              rdx, qword ptr [rsp + 608]
                        mov              rcx, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n109_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n109_binop_α:           mov              r11, 110
                        mov              rdi, qword ptr [rsp + 2464]
                        mov              rsi, qword ptr [rsp + 2472]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              rcx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n110_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n110_assign_α:          mov              r11, 111
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx;         jmp   n104_var_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             mov              r11, 112
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 344], rax;          jmp   n112_var_α
#-----------------------------------------------------------------------------------------------------------------------
n112_var_α:             mov              r11, 113
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 392], rax;          jmp   n113_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_integer_α:     mov              r11, 114
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n114_coerce_numeric_α
.Lx286_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n114_coerce_numeric_α:  mov              r11, 115
                        mov              eax, dword ptr [rsp + 2448]
                        cmp              al, 5;                               je    .Lx288_1
                        cmp              al, 3;                               jne   .Lx288_0
                        mov              eax, dword ptr [rsp + 400]
                        cmp              al, 3;                               jne   .Lx288_0
.Lx288_1:               mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 376], rax;          jmp   n115_binop_α
.Lx288_0:               lea              rdi, [rsp + 2448]
                        lea              rsi, [rsp + 400]
                        lea              rdx, [rsp + 368]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n115_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n115_binop_α:           mov              r11, 116
                        mov              eax, dword ptr [rsp + 368]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx289_2
                        mov              rax, qword ptr [rsp + 376]
                        mov              rdx, 2
                        add              rax, rdx
                        mov              qword ptr [rsp + 352], 3
                        mov              qword ptr [rsp + 360], rax;          jmp   .Lx289_7
.Lx289_2:               and              edx, 1;                              jz    .Lx289_0
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdi, 2
                        cmp              al, 5;                               je    .Lx289_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx289_4
.Lx289_3:               movq             xmm0, rsi
.Lx289_4:               cmp              cl, 5;                               je    .Lx289_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx289_6
.Lx289_5:               movq             xmm1, rdi
.Lx289_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 352], 5
                        mov              qword ptr [rsp + 360], rax
.Lx289_7:                                                                     jmp   n116_call_builtin_icon_α
.Lx289_0:               mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n83_var_ref_α
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n116_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_icon_α:
                        mov              r11, 117
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn291:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn291]
                        lea              rsi, [rsp + 288]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262275
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n83_var_ref_α
                                                                              jmp   n117_lit_string_α
n116_call_builtin_icon_β:
                        mov              r11, 117;                            jmp   n83_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 2
                        mov              rax, qword ptr [rip + .Lx292_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n118_var_α
.Lx292_0:               .quad            .Lx292_0_s
.Lx292_0_s:             .string          ": "
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             mov              r11, 119
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 456], rax;          jmp   n119_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     mov              r11, 120
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n120_lit_integer_α
.Lx295_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_integer_α:     mov              r11, 121
                        mov              qword ptr [rsp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n121_subscript_α
.Lx296_0:               .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n121_subscript_α:       mov              r11, 122
                        mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 464]
                        mov              rcx, qword ptr [rsp + 472]
                        mov              r8, qword ptr [rsp + 480]
                        mov              r9, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             subscript_get2@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n83_var_ref_α
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n122_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_icon_α:
                        mov              r11, 123
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 248], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn299:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn299]
                        lea              rsi, [rsp + 208]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n83_var_ref_α
                                                                              jmp   n123_conjunction_α
n122_call_builtin_icon_β:
                        mov              r11, 123;                            jmp   n83_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n123_conjunction_α:     mov              r11, 124
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 184], rax;          jmp   n83_var_ref_α
n123_conjunction_β:     mov              r11, 124;                            jmp   n83_var_ref_α
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
