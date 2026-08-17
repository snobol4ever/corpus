                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__dofile:
                        sub              rsp, 3296
                        mov              qword ptr [rsp + 3272], rcx
                        mov              qword ptr [rsp + 3280], rdx
                        mov              rdi, rsp
                        add              rdi, 2960
                        xor              eax, eax
                        mov              ecx, 128
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 8
                        call             rt_icn_zframe_args_install@PLT
dofile_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_make_list_α:         lea              rdi, [rsp + 2960]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2944], rax
                        mov              qword ptr [rsp + 2952], rdx;         jmp   n1_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:            mov              rax, qword ptr [rsp + 2944]
                        mov              rdx, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx;         jmp   n2_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n2_make_list_α:         lea              rdi, [rsp + 2944]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx;         jmp   n3_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              rax, qword ptr [rsp + 2928]
                        mov              rdx, qword ptr [rsp + 2936]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 2136], rax;         jmp   n5_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_icon_α: mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 2104], rax
                        .section         .rodata
.Lrkfn147:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]
                        lea              rsi, [rsp + 2096]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              eax, 104;                            je    n42_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_assign_α
n5_call_builtin_icon_β:                                                       jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rsp + 2080]
                        mov              rdx, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx;         jmp   n7_var_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 2920], rax;         jmp   n8_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n8_scan_enter_α:        mov              rdi, qword ptr [rsp + 2912]
                        mov              rsi, qword ptr [rsp + 2920]
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
                        mov              r14, 0;                              jmp   n9_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_charset_α:       mov              qword ptr [rsp + 2896], 2            # result
                        mov              dword ptr [rsp + 2900], -1
                        mov              rax, qword ptr [rip + .Lx00001_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n10_scan_many_α
.Lx00001_0:               .quad            .Lx00001_0_s
.Lx00001_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n10_scan_many_α:        mov              eax, r14d
.Lx00002_0:               cmp              eax, r15d;                           jge   .Lx00002_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00002_2]
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
                        pop              rax;                                 je    .Lx00002_1
                        add              eax, 1;                              jmp   .Lx00002_0
.Lx00002_1:               cmp              eax, r14d;                           je    n12_lit_charset_α
                        mov              qword ptr [rsp + 2880], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 2888], rcx;         jmp   n11_scan_tab_α
n10_scan_many_β:                                                              jmp   n12_lit_charset_α
.Lx00002_2:               .quad            .Lx00002_2_s
.Lx00002_2_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n11_scan_tab_α:         mov              rax, qword ptr [rsp + 2888]
                        cmp              rax, 1;                              jge   .Lx00003_0
                        add              rax, r15
                        add              rax, 1
.Lx00003_0:               cmp              rax, 1;                              jl    n12_lit_charset_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n12_lit_charset_α
                        mov              qword ptr [rsp + 2864], r14
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
                        mov              qword ptr [rsp + 2848], rax
                        mov              qword ptr [rsp + 2856], rdx;         jmp   n12_lit_charset_α
n11_scan_tab_β:         mov              r14, qword ptr [rsp + 2864];         jmp   n12_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_charset_α:      mov              qword ptr [rsp + 2832], 2            # result
                        mov              dword ptr [rsp + 2836], -1
                        mov              rax, qword ptr [rip + .Lx00004_0]
                        mov              qword ptr [rsp + 2840], rax;         jmp   n13_scan_many_α
.Lx00004_0:               .quad            .Lx00004_0_s
.Lx00004_0_s:             .string          "-0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n13_scan_many_α:        mov              eax, r14d
.Lx00005_0:               cmp              eax, r15d;                           jge   .Lx00005_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00005_2]
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
                        pop              rax;                                 je    .Lx00005_1
                        add              eax, 1;                              jmp   .Lx00005_0
.Lx00005_1:               cmp              eax, r14d;                           je    n17_lit_charset_α
                        mov              qword ptr [rsp + 2816], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 2824], rcx;         jmp   n14_scan_tab_α
n13_scan_many_β:                                                              jmp   n17_lit_charset_α
.Lx00005_2:               .quad            .Lx00005_2_s
.Lx00005_2_s:             .string          "-0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n14_scan_tab_α:         mov              rax, qword ptr [rsp + 2824]
                        cmp              rax, 1;                              jge   .Lx00006_0
                        add              rax, r15
                        add              rax, 1
.Lx00006_0:               cmp              rax, 1;                              jl    n17_lit_charset_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n17_lit_charset_α
                        mov              qword ptr [rsp + 2800], r14
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
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx;         jmp   n15_call_builtin_icon_α
n14_scan_tab_β:         mov              r14, qword ptr [rsp + 2800];         jmp   n17_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2760], rax
                        .section         .rodata
.Lrkfn164:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn164]
                        lea              rsi, [rsp + 2752]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx
                        cmp              eax, 104;                            je    n17_lit_charset_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_assign_α
n15_call_builtin_icon_β:
                                                                              jmp   n17_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              rax, qword ptr [rsp + 2736]
                        mov              rdx, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx;         jmp   n17_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_charset_α:      mov              qword ptr [rsp + 2720], 2            # result
                        mov              dword ptr [rsp + 2724], -1
                        mov              rax, qword ptr [rip + .Lx00007_0]
                        mov              qword ptr [rsp + 2728], rax;         jmp   n18_scan_many_α
.Lx00007_0:               .quad            .Lx00007_0_s
.Lx00007_0_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n18_scan_many_α:        mov              eax, r14d
.Lx00008_0:               cmp              eax, r15d;                           jge   .Lx00008_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00008_2]
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
                        pop              rax;                                 je    .Lx00008_1
                        add              eax, 1;                              jmp   .Lx00008_0
.Lx00008_1:               cmp              eax, r14d;                           je    n20_lit_integer_α
                        mov              qword ptr [rsp + 2704], 3
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rsp + 2712], rcx;         jmp   n19_scan_tab_α
n18_scan_many_β:                                                              jmp   n20_lit_integer_α
.Lx00008_2:               .quad            .Lx00008_2_s
.Lx00008_2_s:             .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n19_scan_tab_α:         mov              rax, qword ptr [rsp + 2712]
                        cmp              rax, 1;                              jge   .Lx00009_0
                        add              rax, r15
                        add              rax, 1
.Lx00009_0:               cmp              rax, 1;                              jl    n20_lit_integer_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n20_lit_integer_α
                        mov              qword ptr [rsp + 2688], r14
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
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx;         jmp   n20_lit_integer_α
n19_scan_tab_β:         mov              r14, qword ptr [rsp + 2688];         jmp   n20_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              qword ptr [rsp + 2656], 3            # result
                        mov              rax, qword ptr [rip + .Lx00010_0]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n21_scan_tab_α
.Lx00010_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n21_scan_tab_α:         mov              rax, 0
                        cmp              rax, 1;                              jge   .Lx00011_0
                        add              rax, r15
                        add              rax, 1
.Lx00011_0:               cmp              rax, 1;                              jl    n23_disjunction_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n23_disjunction_α
                        mov              qword ptr [rsp + 2640], r14
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
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx;         jmp   n22_assign_α
n21_scan_tab_β:         mov              r14, qword ptr [rsp + 2640];         jmp   n23_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              rax, qword ptr [rsp + 2624]
                        mov              rdx, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 3072], rax
                        mov              qword ptr [rsp + 3080], rdx;         jmp   n23_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n23_disjunction_α:      mov              qword ptr [rsp + 2240], 0
                        mov              qword ptr [rsp + 2248], 0
                        mov              dword ptr [rsp + 2256], 0;           jmp   n36_var_α
n23_disjunction_as:     mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 0;                              jne   .Lx00012_0
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n24_conjunction_α
.Lx00012_0:               cmp              eax, 1;                              jne   .Lx00012_1
                        mov              rax, qword ptr [rsp + 2352]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2360]
                        mov              qword ptr [rsp + 2248], rax;         jmp   n24_conjunction_α
.Lx00012_1:                                                                     jmp   n24_conjunction_α
n23_disjunction_β:      mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 0;                              je    n41_scan_α
                                                                              jmp   n26_disjunction_β
n23_disjunction_af:     add              dword ptr [rsp + 2256], 1
                        mov              eax, dword ptr [rsp + 2256]
                        cmp              eax, 1;                              je    n26_disjunction_α
                                                                              jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n24_conjunction_α:      mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n25_scan_α
n24_conjunction_β:                                                            jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n25_scan_α:             mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2200], rax
                        lea              rdi, [rsp + 2160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 2160]
                        mov              r14, qword ptr [rsp + 2168]
                        mov              r15, qword ptr [rsp + 2176];         jmp   n4_var_α
n25_scan_β:                                                                   jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_disjunction_α:      mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2360], 0
                        mov              dword ptr [rsp + 2368], 0;           jmp   n30_var_α
n26_disjunction_as:     mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 0;                              jne   .Lx00013_0
                        mov              rax, qword ptr [rsp + 2384]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2392]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n23_disjunction_as
.Lx00013_0:               cmp              eax, 1;                              jne   .Lx00013_1
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2360], rax;         jmp   n23_disjunction_as
.Lx00013_1:                                                                     jmp   n23_disjunction_as
n26_disjunction_β:      mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 0;                              je    n41_scan_α
                                                                              jmp   n41_scan_α
n26_disjunction_af:     add              dword ptr [rsp + 2368], 1
                        mov              eax, dword ptr [rsp + 2368]
                        cmp              eax, 1;                              je    n27_var_α
                                                                              jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_α:              mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2600], rax;         jmp   n28_var_α
n27_var_β:                                                                    jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n29_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2568], rax
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2544], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2552], rax
                        .section         .rodata
.Lrkfn187:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]
                        lea              rsi, [rsp + 2544]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx
                        cmp              eax, 104;                            je    n41_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n26_disjunction_as
n29_call_builtin_icon_β:
                                                                              jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 2504], rax;         jmp   n31_lit_string_α
n30_var_β:                                                                    jmp   n26_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              qword ptr [rsp + 2512], 2            # result
                        mov              dword ptr [rsp + 2516], 7
                        mov              rax, qword ptr [rip + .Lx00014_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n32_binop_test_α
.Lx00014_0:               .quad            .Lx00014_0_s
.Lx00014_0_s:             .string          "nothing"
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_test_α:       mov              rdi, qword ptr [rsp + 3072]
                        mov              rsi, qword ptr [rsp + 3080]
                        mov              rdx, qword ptr [rsp + 2512]
                        mov              rcx, qword ptr [rsp + 2520]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n26_disjunction_af
                        mov              rdi, qword ptr [rsp + 2512]
                        mov              rsi, qword ptr [rsp + 2520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n35_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2424], rax
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2408], rax
                        .section         .rodata
.Lrkfn197:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn197]
                        lea              rsi, [rsp + 2400]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              eax, 104;                            je    n41_scan_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n26_disjunction_as
n35_call_builtin_icon_β:
                                                                              jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n37_lit_string_α
n36_var_β:                                                                    jmp   n23_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              qword ptr [rsp + 2336], 2            # result
                        mov              dword ptr [rsp + 2340], 8
                        mov              rax, qword ptr [rip + .Lx00015_0]
                        mov              qword ptr [rsp + 2344], rax;         jmp   n38_binop_test_α
.Lx00015_0:               .quad            .Lx00015_0_s
.Lx00015_0_s:             .string          "overhead"
#-----------------------------------------------------------------------------------------------------------------------
n38_binop_test_α:       mov              rdi, qword ptr [rsp + 3072]
                        mov              rsi, qword ptr [rsp + 3080]
                        mov              rdx, qword ptr [rsp + 2336]
                        mov              rcx, qword ptr [rsp + 2344]
                        mov              r8d, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n23_disjunction_af
                        mov              rdi, qword ptr [rsp + 2336]
                        mov              rsi, qword ptr [rsp + 2344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n39_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n40_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n40_assign_α:           mov              rax, qword ptr [rsp + 2288]
                        mov              rdx, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 3024], rax
                        mov              qword ptr [rsp + 3032], rdx
                        mov              qword ptr [rsp + 2272], rax
                        mov              qword ptr [rsp + 2280], rdx;         jmp   n23_disjunction_as
n40_assign_β:                                                                 jmp   n41_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n41_scan_α:             lea              rdi, [rsp + 2160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 2160]
                        mov              r14, qword ptr [rsp + 2168]
                        mov              r15, qword ptr [rsp + 2176];         jmp   n4_var_α
n41_scan_β:                                                                   jmp   n4_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n43_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n43_unop_α:             mov              rdi, qword ptr [rsp + 2976]
                        mov              rsi, qword ptr [rsp + 2984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx;         jmp   n44_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2024], rax
                        .section         .rodata
.Lrkfn211:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn211]
                        lea              rsi, [rsp + 2016]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              eax, 104;                            je    n45_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n45_var_α
n44_call_builtin_icon_β:
                                                                              jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              mov              rax, qword ptr [rsp + 3024]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 3032]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n46_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      mov              qword ptr [rsp + 1984], 3            # result
                        mov              rax, qword ptr [rip + .Lx00016_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n47_call_builtin_icon_α
.Lx00016_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1944], rax
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1928], rax
                        .section         .rodata
.Lrkfn216:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rsp + 1920]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1912], rdx
                        cmp              eax, 104;                            je    n49_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n48_call_builtin_icon_α
n47_call_builtin_icon_β:
                                                                              jmp   n49_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1904]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1912]
                        mov              qword ptr [rsp + 1880], rax
                        .section         .rodata
.Lrkfn218:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn218]
                        lea              rsi, [rsp + 1872]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              eax, 104;                            je    n49_lit_integer_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n49_lit_integer_α
n48_call_builtin_icon_β:
                                                                              jmp   n49_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      mov              qword ptr [rsp + 1840], 3            # result
                        mov              rax, qword ptr [rip + .Lx00017_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n50_assign_α
.Lx00017_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              rax, qword ptr [rsp + 1840]
                        mov              rdx, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n51_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n52_var_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 1816], rax;         jmp   n53_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n53_iterate_α:          mov              qword ptr [rsp + 1792], 0
.Lx00018_0:               mov              rdi, qword ptr [rsp + 1808]
                        mov              rsi, qword ptr [rsp + 1816]
                        mov              rdx, qword ptr [rsp + 1792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                        cmp              rax, 104;                            je    n61_var_α
                                                                              jmp   n54_lit_integer_α
n53_iterate_β:          inc              qword ptr [rsp + 1792];              jmp   .Lx00018_0
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      mov              qword ptr [rsp + 1824], 3            # result
                        mov              rax, qword ptr [rip + .Lx00019_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n55_coerce_numeric_α
.Lx00019_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n55_coerce_numeric_α:   mov              eax, dword ptr [rsp + 1776]
                        cmp              eax, 5;                              je    .Lx00020_1
                        cmp              eax, 3;                              jne   .Lx00020_0
                        mov              eax, dword ptr [rsp + 1824]
                        cmp              eax, 3;                              jne   .Lx00020_0
.Lx00020_1:               mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n56_binop_α
.Lx00020_0:               lea              rdi, [rsp + 1776]
                        lea              rsi, [rsp + 1824]
                        lea              rdx, [rsp + 1760]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n56_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:            mov              rdi, qword ptr [rsp + 1760]
                        mov              rsi, qword ptr [rsp + 1768]
                        mov              rdx, qword ptr [rsp + 1824]
                        mov              rcx, qword ptr [rsp + 1832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n61_var_α
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n57_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n57_coerce_numeric_α:   mov              eax, dword ptr [rsp + 2960]
                        cmp              eax, 5;                              je    .Lx00021_1
                        cmp              eax, 3;                              jne   .Lx00021_0
                        mov              eax, dword ptr [rsp + 1744]
                        cmp              eax, 3;                              jne   .Lx00021_0
.Lx00021_1:               mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n58_coerce_numeric_α
.Lx00021_0:               lea              rdi, [rsp + 2960]
                        lea              rsi, [rsp + 1744]
                        lea              rdx, [rsp + 1712]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n58_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n58_coerce_numeric_α:   mov              eax, dword ptr [rsp + 1744]
                        cmp              eax, 5;                              je    .Lx00022_1
                        cmp              eax, 3;                              jne   .Lx00022_0
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              eax, 3;                              jne   .Lx00022_0
.Lx00022_1:               mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n59_binop_α
.Lx00022_0:               lea              rdi, [rsp + 1744]
                        lea              rsi, [rsp + 2960]
                        lea              rdx, [rsp + 1696]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n59_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:            mov              eax, dword ptr [rsp + 1712]
                        mov              ecx, dword ptr [rsp + 1696]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00023_2
                        mov              rax, qword ptr [rsp + 1720]
                        mov              rdx, qword ptr [rsp + 1704]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1680], 3
                        mov              qword ptr [rsp + 1688], rax;         jmp   .Lx00023_7
.Lx00023_2:               and              edx, 1;                              jz    .Lx00023_0
                        mov              rsi, qword ptr [rsp + 1720]
                        mov              rdi, qword ptr [rsp + 1704]
                        cmp              eax, 5;                              je    .Lx00023_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00023_4
.Lx00023_3:               movq             xmm0, rsi
.Lx00023_4:               cmp              ecx, 5;                              je    .Lx00023_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00023_6
.Lx00023_5:               movq             xmm1, rdi
.Lx00023_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1680], 5
                        mov              qword ptr [rsp + 1688], rax
.Lx00023_7:                                                                     jmp   n60_assign_α
.Lx00023_0:               mov              rdi, qword ptr [rsp + 1712]
                        mov              rsi, qword ptr [rsp + 1720]
                        mov              rdx, qword ptr [rsp + 1696]
                        mov              rcx, qword ptr [rsp + 1704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n61_var_α
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n60_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              rax, qword ptr [rsp + 1680]
                        mov              rdx, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n53_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:              mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n62_var_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:              mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n63_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n63_unop_α:             mov              rdi, qword ptr [rsp + 3008]
                        mov              rsi, qword ptr [rsp + 3016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n64_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n64_coerce_numeric_α:   mov              eax, dword ptr [rsp + 2960]
                        cmp              eax, 5;                              je    .Lx00024_1
                        cmp              eax, 3;                              jne   .Lx00024_0
                        mov              eax, dword ptr [rsp + 1632]
                        cmp              eax, 3;                              jne   .Lx00024_0
.Lx00024_1:               mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 1608], rax;         jmp   n65_coerce_numeric_α
.Lx00024_0:               lea              rdi, [rsp + 2960]
                        lea              rsi, [rsp + 1632]
                        lea              rdx, [rsp + 1600]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n65_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n65_coerce_numeric_α:   mov              eax, dword ptr [rsp + 1632]
                        cmp              eax, 5;                              je    .Lx00025_1
                        cmp              eax, 3;                              jne   .Lx00025_0
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              eax, 3;                              jne   .Lx00025_0
.Lx00025_1:               mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n66_binop_α
.Lx00025_0:               lea              rdi, [rsp + 1632]
                        lea              rsi, [rsp + 2960]
                        lea              rdx, [rsp + 1584]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n66_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n66_binop_α:            mov              rdi, qword ptr [rsp + 1600]
                        mov              rsi, qword ptr [rsp + 1608]
                        mov              rdx, qword ptr [rsp + 1584]
                        mov              rcx, qword ptr [rsp + 1592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              eax, 104;                            je    n73_var_α
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n67_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1544], rax
                        .section         .rodata
.Lrkfn248:              .string          "sqrt"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn248]
                        lea              rsi, [rsp + 1536]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              eax, 104;                            je    n73_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n68_lit_real_α
n67_call_builtin_icon_β:
                                                                              jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_real_α:         mov              qword ptr [rsp + 1664], 5            # result
                        mov              rax, qword ptr [rip + .Lx00026_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n69_coerce_numeric_α
.Lx00026_0:               .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n69_coerce_numeric_α:   mov              eax, dword ptr [rsp + 1520]
                        cmp              eax, 5;                              je    .Lx00027_1
                        cmp              eax, 3;                              jne   .Lx00027_0
                        mov              eax, dword ptr [rsp + 1664]
                        cmp              eax, 3;                              jne   .Lx00027_0
.Lx00027_1:               mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n70_binop_α
.Lx00027_0:               lea              rdi, [rsp + 1520]
                        lea              rsi, [rsp + 1664]
                        lea              rdx, [rsp + 1504]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n70_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n70_binop_α:            mov              eax, dword ptr [rsp + 1504]
                        mov              ecx, dword ptr [rsp + 1664]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00028_2
                        mov              rax, qword ptr [rsp + 1512]
                        mov              rdx, qword ptr [rsp + 1672]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1488], 3
                        mov              qword ptr [rsp + 1496], rax;         jmp   .Lx00028_7
.Lx00028_2:               and              edx, 1;                              jz    .Lx00028_0
                        mov              rsi, qword ptr [rsp + 1512]
                        mov              rdi, qword ptr [rsp + 1672]
                        cmp              eax, 5;                              je    .Lx00028_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00028_4
.Lx00028_3:               movq             xmm0, rsi
.Lx00028_4:               cmp              ecx, 5;                              je    .Lx00028_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00028_6
.Lx00028_5:               movq             xmm1, rdi
.Lx00028_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1488], 5
                        mov              qword ptr [rsp + 1496], rax
.Lx00028_7:                                                                     jmp   n71_call_builtin_icon_α
.Lx00028_0:               mov              rdi, qword ptr [rsp + 1504]
                        mov              rsi, qword ptr [rsp + 1512]
                        mov              rdx, qword ptr [rsp + 1664]
                        mov              rcx, qword ptr [rsp + 1672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n73_var_α
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n71_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1464], rax
                        .section         .rodata
.Lrkfn254:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn254]
                        lea              rsi, [rsp + 1456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              eax, 104;                            je    n73_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n72_assign_α
n71_call_builtin_icon_β:
                                                                              jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:           mov              rax, qword ptr [rsp + 1440]
                        mov              rdx, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n73_var_α
#-----------------------------------------------------------------------------------------------------------------------
n73_var_α:              mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n74_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_integer_α:      mov              qword ptr [rsp + 1424], 3            # result
                        mov              rax, qword ptr [rip + .Lx00029_0]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n75_call_builtin_icon_α
.Lx00029_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1384], rax
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1368], rax
                        .section         .rodata
.Lrkfn260:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]
                        lea              rsi, [rsp + 1360]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              eax, 104;                            je    n77_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n76_call_builtin_icon_α
n75_call_builtin_icon_β:
                                                                              jmp   n77_var_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1320], rax
                        .section         .rodata
.Lrkfn262:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn262]
                        lea              rsi, [rsp + 1312]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              eax, 104;                            je    n77_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n77_var_α
n76_call_builtin_icon_β:
                                                                              jmp   n77_var_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n78_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n78_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1256], rax
                        .section         .rodata
.Lrkfn266:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn266]
                        lea              rsi, [rsp + 1248]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              eax, 104;                            je    n80_var_ref_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n79_assign_α
n78_call_builtin_icon_β:
                                                                              jmp   n80_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              rax, qword ptr [rsp + 1232]
                        mov              rdx, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx;         jmp   n80_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 2976]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n81_var_α
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n82_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n82_unop_α:             mov              rdi, qword ptr [rsp + 2976]
                        mov              rsi, qword ptr [rsp + 2984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n83_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_integer_α:      mov              qword ptr [rsp + 1168], 3            # result
                        mov              rax, qword ptr [rip + .Lx00030_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n84_coerce_numeric_α
.Lx00030_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n84_coerce_numeric_α:   mov              eax, dword ptr [rsp + 1136]
                        cmp              eax, 5;                              je    .Lx00031_1
                        cmp              eax, 3;                              jne   .Lx00031_0
                        mov              eax, dword ptr [rsp + 1168]
                        cmp              eax, 3;                              jne   .Lx00031_0
.Lx00031_1:               mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n85_binop_α
.Lx00031_0:               lea              rdi, [rsp + 1136]
                        lea              rsi, [rsp + 1168]
                        lea              rdx, [rsp + 1120]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n85_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_α:            mov              rdi, qword ptr [rsp + 1120]
                        mov              rsi, qword ptr [rsp + 1128]
                        mov              rdx, qword ptr [rsp + 1168]
                        mov              rcx, qword ptr [rsp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              eax, 104;                            je    n92_var_α
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n86_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:      mov              qword ptr [rsp + 1184], 3            # result
                        mov              rax, qword ptr [rip + .Lx00032_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n87_coerce_numeric_α
.Lx00032_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n87_coerce_numeric_α:   mov              eax, dword ptr [rsp + 1104]
                        cmp              eax, 5;                              je    .Lx00033_1
                        cmp              eax, 3;                              jne   .Lx00033_0
                        mov              eax, dword ptr [rsp + 1184]
                        cmp              eax, 3;                              jne   .Lx00033_0
.Lx00033_1:               mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n88_binop_α
.Lx00033_0:               lea              rdi, [rsp + 1104]
                        lea              rsi, [rsp + 1184]
                        lea              rdx, [rsp + 1088]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n88_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n88_binop_α:            mov              eax, dword ptr [rsp + 1088]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00034_2
                        mov              rax, qword ptr [rsp + 1096]
                        mov              rdx, 1
                        add              rax, rdx
                        mov              qword ptr [rsp + 1072], 3
                        mov              qword ptr [rsp + 1080], rax;         jmp   .Lx00034_7
.Lx00034_2:               and              edx, 1;                              jz    .Lx00034_0
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              rdi, 1
                        cmp              eax, 5;                              je    .Lx00034_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00034_4
.Lx00034_3:               movq             xmm0, rsi
.Lx00034_4:               cmp              ecx, 5;                              je    .Lx00034_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00034_6
.Lx00034_5:               movq             xmm1, rdi
.Lx00034_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 1072], 5
                        mov              qword ptr [rsp + 1080], rax
.Lx00034_7:                                                                     jmp   n89_subscript_α
.Lx00034_0:               mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              rdx, qword ptr [rsp + 1184]
                        mov              rcx, qword ptr [rsp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n92_var_α
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n89_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n89_subscript_α:        mov              rdi, qword ptr [rsp + 1056]
                        mov              rsi, qword ptr [rsp + 1064]
                        mov              rdx, qword ptr [rsp + 1072]
                        mov              rcx, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n92_var_α
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n90_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n90_deref_α:            mov              rdi, qword ptr [rsp + 1200]
                        mov              rsi, qword ptr [rsp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n92_var_α
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n91_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_α:           mov              rax, qword ptr [rsp + 1216]
                        mov              rdx, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n92_var_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n93_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:      mov              qword ptr [rsp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Lx00035_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n94_call_builtin_icon_α
.Lx00035_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lrkfn288:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn288]
                        lea              rsi, [rsp + 976]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              eax, 104;                            je    n96_lit_real_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n95_call_builtin_icon_α
n94_call_builtin_icon_β:
                                                                              jmp   n96_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn290:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rsp + 928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              eax, 104;                            je    n96_lit_real_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n96_lit_real_α
n95_call_builtin_icon_β:
                                                                              jmp   n96_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_real_α:         mov              qword ptr [rsp + 896], 5             # result
                        mov              rax, qword ptr [rip + .Lx00036_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n97_assign_α
.Lx00036_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:           mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n98_var_α
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:              mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 616], rax;          jmp   n99_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n99_iterate_α:          mov              qword ptr [rsp + 592], 0
.Lx00037_0:               mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              rax, 104;                            je    n00038_keyword_icon_α
                                                                              jmp   n00039_assign_α
n99_iterate_β:          inc              qword ptr [rsp + 592];               jmp   .Lx00037_0
#-----------------------------------------------------------------------------------------------------------------------
n00039_assign_α:          mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx;         jmp   n00040_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00040_bound_α:           mov              qword ptr [rsp + 624], rsp;          jmp   n00041_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00041_var_α:             mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 728], rax;          jmp   n00042_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00042_disjunction_α:     mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              dword ptr [rsp + 752], 0;            jmp   n00043_var_α
n00042_disjunction_as:    mov              eax, dword ptr [rsp + 752]
                        cmp              eax, 0;                              jne   .Lx00044_0
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00045_coerce_numeric_α
.Lx00044_0:               cmp              eax, 1;                              jne   .Lx00044_1
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 744], rax;          jmp   n00045_coerce_numeric_α
.Lx00044_1:                                                                     jmp   n00045_coerce_numeric_α
n00042_disjunction_β:     mov              eax, dword ptr [rsp + 752]
                        cmp              eax, 0;                              je    n00046_unmark_α
                                                                              jmp   n00046_unmark_α
n00042_disjunction_af:    add              dword ptr [rsp + 752], 1
                        mov              eax, dword ptr [rsp + 752]
                        cmp              eax, 1;                              je    n00047_var_α
                                                                              jmp   n00046_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00045_coerce_numeric_α:  mov              eax, dword ptr [rsp + 2960]
                        cmp              eax, 5;                              je    .Lx00048_1
                        cmp              eax, 3;                              jne   .Lx00048_0
                        mov              eax, dword ptr [rsp + 736]
                        cmp              eax, 3;                              jne   .Lx00048_0
.Lx00048_1:               mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 712], rax;          jmp   n00049_coerce_numeric_α
.Lx00048_0:               lea              rdi, [rsp + 2960]
                        lea              rsi, [rsp + 736]
                        lea              rdx, [rsp + 704]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00049_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00049_coerce_numeric_α:  mov              eax, dword ptr [rsp + 736]
                        cmp              eax, 5;                              je    .Lx00050_1
                        cmp              eax, 3;                              jne   .Lx00050_0
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              eax, 3;                              jne   .Lx00050_0
.Lx00050_1:               mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax;          jmp   n00051_binop_α
.Lx00050_0:               lea              rdi, [rsp + 736]
                        lea              rsi, [rsp + 2960]
                        lea              rdx, [rsp + 688]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00051_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00051_binop_α:           mov              eax, dword ptr [rsp + 704]
                        mov              ecx, dword ptr [rsp + 688]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00052_2
                        mov              rax, qword ptr [rsp + 712]
                        mov              rdx, qword ptr [rsp + 696]
                        add              rax, rdx
                        mov              qword ptr [rsp + 672], 3
                        mov              qword ptr [rsp + 680], rax;          jmp   .Lx00052_7
.Lx00052_2:               and              edx, 1;                              jz    .Lx00052_0
                        mov              rsi, qword ptr [rsp + 712]
                        mov              rdi, qword ptr [rsp + 696]
                        cmp              eax, 5;                              je    .Lx00052_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00052_4
.Lx00052_3:               movq             xmm0, rsi
.Lx00052_4:               cmp              ecx, 5;                              je    .Lx00052_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00052_6
.Lx00052_5:               movq             xmm1, rdi
.Lx00052_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 672], 5
                        mov              qword ptr [rsp + 680], rax
.Lx00052_7:                                                                     jmp   n00053_assign_α
.Lx00052_0:               mov              rdi, qword ptr [rsp + 704]
                        mov              rsi, qword ptr [rsp + 712]
                        mov              rdx, qword ptr [rsp + 688]
                        mov              rcx, qword ptr [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n00046_unmark_α
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00053_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00053_assign_α:          mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n00046_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00047_var_α:             mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 888], rax;          jmp   n00054_call_builtin_icon_α
n00047_var_β:                                                                   jmp   n00046_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00054_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn313:              .string          "log"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn313]
                        lea              rsi, [rsp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              eax, 104;                            je    n00046_unmark_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00042_disjunction_as
n00054_call_builtin_icon_β:
                                                                              jmp   n00046_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00043_var_α:             mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 808], rax;          jmp   n00055_lit_integer_α
n00043_var_β:                                                                   jmp   n00042_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00055_lit_integer_α:     mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Lx00056_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n00057_binop_test_α
.Lx00056_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00057_binop_test_α:      mov              eax, dword ptr [rsp + 2992]
                        cmp              eax, 112;                            je    .Lx00058_0
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 112;                            je    .Lx00058_0
                        mov              eax, dword ptr [rsp + 2992]
                        cmp              eax, 3;                              jne   .Lx00058_2
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 3;                              jne   .Lx00058_2
.Lx00058_1:               mov              rax, qword ptr [rsp + 3000]
                        mov              rcx, qword ptr [rsp + 824]
                        cmp              rax, rcx;                            jg    n00042_disjunction_af
                        mov              rcx, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rcx
                        mov              rcx, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rcx;          jmp   n00059_lit_integer_α
.Lx00058_0:               mov              rdi, qword ptr [rsp + 2992]
                        mov              rsi, qword ptr [rsp + 3000]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        mov              r8d, 6
                        lea              r9, [rsp + 784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx00058_1
                        cmp              eax, 1;                              je    n00042_disjunction_af
                                                                              jmp   n00059_lit_integer_α
.Lx00058_2:               mov              rdi, qword ptr [rsp + 2992]
                        mov              rsi, qword ptr [rsp + 3000]
                        mov              rdx, qword ptr [rsp + 816]
                        mov              rcx, qword ptr [rsp + 824]
                        mov              r8d, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00042_disjunction_af
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax;          jmp   n00059_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00059_lit_integer_α:     mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lx00060_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n00042_disjunction_as
n00059_lit_integer_β:                                                           jmp   n00046_unmark_α
.Lx00060_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00046_unmark_α:          mov              rsp, qword ptr [rsp + 624];          jmp   n99_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00038_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx00061_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    n00062_var_α
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n00063_var_α
n00038_keyword_icon_β:                                                          jmp   n00062_var_α
.Lx00061_0:               .quad            .Lx00061_0_s
.Lx00061_0_s:             .string          "&e"
#-----------------------------------------------------------------------------------------------------------------------
n00063_var_α:             mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 520], rax;          jmp   n00064_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00064_var_α:             mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 552], rax;          jmp   n00065_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00065_unop_α:            mov              rdi, qword ptr [rsp + 2976]
                        mov              rsi, qword ptr [rsp + 2984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n00066_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00066_coerce_numeric_α:  mov              eax, dword ptr [rsp + 2960]
                        cmp              eax, 5;                              je    .Lx00067_1
                        cmp              eax, 3;                              jne   .Lx00067_0
                        mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 3;                              jne   .Lx00067_0
.Lx00067_1:               mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 504], rax;          jmp   n00068_coerce_numeric_α
.Lx00067_0:               lea              rdi, [rsp + 2960]
                        lea              rsi, [rsp + 528]
                        lea              rdx, [rsp + 496]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00068_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00068_coerce_numeric_α:  mov              eax, dword ptr [rsp + 528]
                        cmp              eax, 5;                              je    .Lx00069_1
                        cmp              eax, 3;                              jne   .Lx00069_0
                        mov              eax, dword ptr [rsp + 2960]
                        cmp              eax, 3;                              jne   .Lx00069_0
.Lx00069_1:               mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 488], rax;          jmp   n00070_binop_α
.Lx00069_0:               lea              rdi, [rsp + 528]
                        lea              rsi, [rsp + 2960]
                        lea              rdx, [rsp + 480]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00070_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00070_binop_α:           mov              rdi, qword ptr [rsp + 496]
                        mov              rsi, qword ptr [rsp + 504]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        cmp              eax, 104;                            je    n00062_var_α
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00071_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00071_coerce_numeric_α:  mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 5;                              je    .Lx00072_1
                        cmp              eax, 3;                              jne   .Lx00072_0
                        mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 3;                              jne   .Lx00072_0
.Lx00072_1:               mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00073_coerce_numeric_α
.Lx00072_0:               lea              rdi, [rsp + 432]
                        lea              rsi, [rsp + 464]
                        lea              rdx, [rsp + 416]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00073_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00073_coerce_numeric_α:  mov              eax, dword ptr [rsp + 464]
                        cmp              eax, 5;                              je    .Lx00074_1
                        cmp              eax, 3;                              jne   .Lx00074_0
                        mov              eax, dword ptr [rsp + 432]
                        cmp              eax, 3;                              jne   .Lx00074_0
.Lx00074_1:               mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 408], rax;          jmp   n00075_binop_α
.Lx00074_0:               lea              rdi, [rsp + 464]
                        lea              rsi, [rsp + 432]
                        lea              rdx, [rsp + 400]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00075_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00075_binop_α:           mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pow@PLT
                        cmp              eax, 104;                            je    n00062_var_α
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00076_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n00076_lit_real_α:        mov              qword ptr [rsp + 560], 5             # result
                        mov              rax, qword ptr [rip + .Lx00077_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n00078_coerce_numeric_α
.Lx00077_0:               .quad            4602678819172646912
#-----------------------------------------------------------------------------------------------------------------------
n00078_coerce_numeric_α:  mov              eax, dword ptr [rsp + 384]
                        cmp              eax, 5;                              je    .Lx00079_1
                        cmp              eax, 3;                              jne   .Lx00079_0
                        mov              eax, dword ptr [rsp + 560]
                        cmp              eax, 3;                              jne   .Lx00079_0
.Lx00079_1:               mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 376], rax;          jmp   n00080_binop_α
.Lx00079_0:               lea              rdi, [rsp + 384]
                        lea              rsi, [rsp + 560]
                        lea              rdx, [rsp + 368]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00080_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00080_binop_α:           mov              eax, dword ptr [rsp + 368]
                        mov              ecx, dword ptr [rsp + 560]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              edx, 3;                              jne   .Lx00081_2
                        mov              rax, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 568]
                        add              rax, rdx
                        mov              qword ptr [rsp + 352], 3
                        mov              qword ptr [rsp + 360], rax;          jmp   .Lx00081_7
.Lx00081_2:               and              edx, 1;                              jz    .Lx00081_0
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdi, qword ptr [rsp + 568]
                        cmp              eax, 5;                              je    .Lx00081_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx00081_4
.Lx00081_3:               movq             xmm0, rsi
.Lx00081_4:               cmp              ecx, 5;                              je    .Lx00081_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx00081_6
.Lx00081_5:               movq             xmm1, rdi
.Lx00081_6:               addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 352], 5
                        mov              qword ptr [rsp + 360], rax
.Lx00081_7:                                                                     jmp   n00082_call_builtin_icon_α
.Lx00081_0:               mov              rdi, qword ptr [rsp + 368]
                        mov              rsi, qword ptr [rsp + 376]
                        mov              rdx, qword ptr [rsp + 560]
                        mov              rcx, qword ptr [rsp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        cmp              eax, 104;                            je    n00062_var_α
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00082_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00082_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        .section         .rodata
.Lrkfn342:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn342]
                        lea              rsi, [rsp + 320]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 104;                            je    n00062_var_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00083_assign_α
n00082_call_builtin_icon_β:
                                                                              jmp   n00062_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00083_assign_α:          mov              rax, qword ptr [rsp + 304]
                        mov              rdx, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx;         jmp   n00062_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00062_var_α:             mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 264], rax;          jmp   n00084_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00084_lit_integer_α:     mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx00085_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n00086_call_builtin_icon_α
.Lx00085_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n00086_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn348:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn348]
                        lea              rsi, [rsp + 208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              eax, 104;                            je    n00087_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00088_call_builtin_icon_α
n00086_call_builtin_icon_β:
                                                                              jmp   n00087_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00088_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn350:              .string          "writes"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn350]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              eax, 104;                            je    n00087_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00087_lit_string_α
n00088_call_builtin_icon_β:
                                                                              jmp   n00087_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00087_lit_string_α:      mov              qword ptr [rsp + 112], 2             # result
                        mov              dword ptr [rsp + 116], 3
                        mov              rax, qword ptr [rip + .Lx00089_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n00090_var_α
.Lx00089_0:               .quad            .Lx00089_0_s
.Lx00089_0_s:             .string          "   "
#-----------------------------------------------------------------------------------------------------------------------
n00090_var_α:             mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 136], rax;          jmp   n00091_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00091_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 88], rax
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 72], rax
                        .section         .rodata
.Lrkfn355:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn355]
                        lea              rsi, [rsp + 64]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              eax, 104;                            je    n00092_return_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00092_return_α
n00091_call_builtin_icon_β:
                                                                              jmp   n00092_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00092_return_α:          mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   dofile_γ
#-----------------------------------------------------------------------------------------------------------------------
dofile_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
dofile_β:
                                                                              jmp   dofile_ω
#-----------------------------------------------------------------------------------------------------------------------
dofile_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 3272]
                        add              rsp, 3296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
dofile_ω:
                        mov              rcx, qword ptr [rsp + 3280]
                        add              rsp, 3296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
dofile_dcα:
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
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [r10 + 0]
                        mov              rdx, qword ptr [r10 + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00093_2]
                        lea              rdx, [rip + .Lx00093_3];               jmp   FN__dofile
.Lx00093_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx00093_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             main_init
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
main_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "dofile"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__dofile
                        .quad            dofile_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            3088
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 816
                        mov              qword ptr [rsp + 792], rcx
                        mov              qword ptr [rsp + 800], rdx
                        mov              rdi, rsp
                        add              rdi, 688
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00094_lit_string_α:      mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 42
                        mov              rax, qword ptr [rip + .Lx00095_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n00096_call_builtin_icon_α
.Lx00095_0:               .quad            .Lx00095_0_s
.Lx00095_0_s:             .string          "  N ovhead rmserr median  gmean   filename"
#-----------------------------------------------------------------------------------------------------------------------
n00096_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn385:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn385]
                        lea              rsi, [rsp + 640]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              eax, 104;                            je    n00097_disjunction_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00097_disjunction_α
n00096_call_builtin_icon_β:
                                                                              jmp   n00097_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00097_disjunction_α:     mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              dword ptr [rsp + 48], 0;             jmp   n00098_var_α
n00097_disjunction_as:    mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              jne   .Lx00099_0
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax;           jmp   main_γ
.Lx00099_0:               cmp              eax, 1;                              jne   .Lx00099_1
                                                                              jmp   main_γ
.Lx00099_1:                                                                     jmp   main_γ
n00097_disjunction_β:     mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 0;                              je    main_ω
                                                                              jmp   n00100_goto_β
n00097_disjunction_af:    add              dword ptr [rsp + 48], 1
                        mov              eax, dword ptr [rsp + 48]
                        cmp              eax, 1;                              je    n00101_var_α
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n00101_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 312], rax;          jmp   n00102_call_builtin_icon_α
n00101_var_β:                                                                   jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n00102_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn391:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn391]
                        lea              rsi, [rsp + 272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00103_assign_α
n00102_call_builtin_icon_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n00103_assign_α:          mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n00104_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00104_disjunction_α:     mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              dword ptr [rsp + 448], 0;            jmp   n00105_var_α
n00104_disjunction_as:    mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 0;                              jne   .Lx00106_0
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax;          jmp   n00107_assign_α
.Lx00106_0:               cmp              eax, 1;                              jne   .Lx00106_1
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 440], rax;          jmp   n00107_assign_α
.Lx00106_1:                                                                     jmp   n00107_assign_α
n00104_disjunction_β:     mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 0;                              je    n00104_disjunction_af
                                                                              jmp   n00104_disjunction_af
n00104_disjunction_af:    add              dword ptr [rsp + 448], 1
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 1;                              je    n00108_lit_string_α
                                                                              jmp   n00109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00107_assign_α:          mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n00109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00109_var_α:             mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 408], rax;          jmp   n00110_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00110_var_α:             mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 424], rax;          jmp   n00111_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00111_call_proc_staged_α:
                        lea              rsi, [rsp + 400]
                        lea              rdx, [rsp + 416]
                        call             dofile_dcα;                          jmp   .Lx00112_2
.Lx00112_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00112_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
.Lx00112_29:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              eax, 104;                            je    n00101_var_α
                                                                              jmp   n00113_conjunction_α
n00111_call_proc_staged_β:
                                                                              jmp   n00101_var_α
.Lx00112_0:               .quad            .Lx00112_0_s
.Lx00112_0_s:             .string          "dofile"
#-----------------------------------------------------------------------------------------------------------------------
n00113_conjunction_α:     mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 328], rax;          jmp   n00101_var_α
n00113_conjunction_β:                                                           jmp   n00101_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00100_goto_α:                                                                  jmp   n00101_var_α
n00100_goto_β:                                                                  jmp   n00101_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00108_lit_string_α:      mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 12
                        mov              rax, qword ptr [rip + .Lx00114_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n00115_var_α
n00108_lit_string_β:                                                            jmp   n00104_disjunction_af
.Lx00114_0:               .quad            .Lx00114_0_s
.Lx00114_0_s:             .string          "cannot open "
#-----------------------------------------------------------------------------------------------------------------------
n00115_var_α:             mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 616], rax;          jmp   n00116_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00116_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn408:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn408]
                        lea              rsi, [rsp + 544]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              eax, 104;                            je    n00104_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00104_disjunction_as
n00116_call_builtin_icon_β:
                                                                              jmp   n00104_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00105_var_α:             mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 520], rax;          jmp   n00117_call_builtin_icon_α
n00105_var_β:                                                                   jmp   n00104_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00117_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        .section         .rodata
.Lrkfn412:              .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn412]
                        lea              rsi, [rsp + 480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              eax, 104;                            je    n00104_disjunction_af
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00104_disjunction_as
n00117_call_builtin_icon_β:
                                                                              jmp   n00104_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00098_var_α:             mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n00118_unop_α
n00098_var_β:                                                                   jmp   n00097_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00118_unop_α:            mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n00119_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00119_lit_integer_α:     mov              qword ptr [rsp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Lx00120_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n00121_binop_test_α
.Lx00120_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00121_binop_test_α:      mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 112;                            je    .Lx00122_0
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 112;                            je    .Lx00122_0
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 3;                              jne   .Lx00122_2
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 3;                              jne   .Lx00122_2
.Lx00122_1:               mov              rax, qword ptr [rsp + 200]
                        mov              rcx, qword ptr [rsp + 232]
                        cmp              rax, rcx;                            jne   n00097_disjunction_af
                        mov              rcx, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rcx
                        mov              rcx, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rcx;          jmp   n00123_keyword_icon_α
.Lx00122_0:               mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              r8d, 9
                        lea              r9, [rsp + 176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lx00122_1
                        cmp              eax, 1;                              je    n00097_disjunction_af
                                                                              jmp   n00123_keyword_icon_α
.Lx00122_2:               mov              rdi, qword ptr [rsp + 192]
                        mov              rsi, qword ptr [rsp + 200]
                        mov              rdx, qword ptr [rsp + 224]
                        mov              rcx, qword ptr [rsp + 232]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00097_disjunction_af
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax;          jmp   n00123_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00123_keyword_icon_α:    mov              rdi, qword ptr [rip + .Lx00124_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              eax, 104;                            je    main_ω
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx;          jmp   n00125_lit_string_α
n00123_keyword_icon_β:                                                          jmp   main_ω
.Lx00124_0:               .quad            .Lx00124_0_s
.Lx00124_0_s:             .string          "&input"
#-----------------------------------------------------------------------------------------------------------------------
n00125_lit_string_α:      mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 5
                        mov              rax, qword ptr [rip + .Lx00126_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n00127_call_proc_staged_α
.Lx00126_0:               .quad            .Lx00126_0_s
.Lx00126_0_s:             .string          "stdin"
#-----------------------------------------------------------------------------------------------------------------------
n00127_call_proc_staged_α:
                        lea              rsi, [rsp + 128]
                        lea              rdx, [rsp + 160]
                        call             dofile_dcα;                          jmp   .Lx00128_2
.Lx00128_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx00128_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
.Lx00128_29:              mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104;                            je    main_ω
                                                                              jmp   n00097_disjunction_as
n00127_call_proc_staged_β:
                                                                              jmp   main_ω
.Lx00128_0:               .quad            .Lx00128_0_s
.Lx00128_0_s:             .string          "dofile"
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
