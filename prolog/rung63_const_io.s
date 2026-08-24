                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rt_gcheap_warmup@PLT
                        call             rt_plw_floor_bypass_on@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                              jmp   main_α
.Lmain_zf_γ:            xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:            mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 3488
                        mov              qword ptr [rsp + 3464], rcx
                        mov              qword ptr [rsp + 3472], rdx
                        mov              qword ptr [rsp + 3480], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 3456
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx115_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx115_101
.Lx115_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx115_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx115_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx115_101
.Lx115_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx115_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3424]
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx;         jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 3280], 2            # result
                        mov              dword ptr [rsp + 3284], 3
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rsp + 3288], rax;         jmp   n3_lit_string_α
.Lx118_0:               .quad            .Lx118_0_s
.Lx118_0_s:             .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 3168], 2            # result
                        mov              dword ptr [rsp + 3172], 1
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rsp + 3176], rax;         jmp   n4_lit_string_α
.Lx119_0:               .quad            .Lx119_0_s
.Lx119_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rsp + 3184], 2            # result
                        mov              dword ptr [rsp + 3188], 1
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n5_call_builtin_prolog_α
.Lx120_0:               .quad            .Lx120_0_s
.Lx120_0_s:             .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_prolog_α:
                        mov              r11, 6
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3256], rax
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3240], rax
                        mov              rax, qword ptr [rsp + 3280]
                        mov              qword ptr [rsp + 3216], rax
                        mov              rax, qword ptr [rsp + 3288]
                        mov              qword ptr [rsp + 3224], rax
                        lea              rdi, [rsp + 3216]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n6_call_builtin_prolog_α
n5_call_builtin_prolog_β:
                        mov              r11, 6;                              jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              r11, 7
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 3144], rax
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3128], rax
                        .section         .rodata
.Lrkfn123:              .string          "$write_to_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn123]
                        lea              rsi, [rsp + 3120]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 917504
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n7_var_ref_α
n6_call_builtin_prolog_β:
                        mov              r11, 7;                              jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3424]
                        mov              qword ptr [rsp + 3088], rax
                        mov              qword ptr [rsp + 3096], rdx;         jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              r11, 9
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3080], rax
                        .section         .rodata
.Lrkfn127:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]
                        lea              rsi, [rsp + 3072]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458752
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n9_lit_string_α
n8_call_builtin_prolog_β:
                        mov              r11, 9;                              jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 10
                        mov              qword ptr [rsp + 3040], 2            # result
                        mov              dword ptr [rsp + 3044], 0
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 3048], rax;         jmp   n10_call_builtin_prolog_α
.Lx128_0:               .quad            .Lx128_0_s
.Lx128_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 3032], rax
                        .section         .rodata
.Lrkfn130:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn130]
                        lea              rsi, [rsp + 3024]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n11_var_ref_α
n10_call_builtin_prolog_β:
                        mov              r11, 11;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3408]
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx;         jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              r11, 13
                        mov              qword ptr [rsp + 2752], 2            # result
                        mov              dword ptr [rsp + 2756], 5
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n13_lit_string_α
.Lx133_0:               .quad            .Lx133_0_s
.Lx133_0_s:             .string          "~w-~w"
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rsp + 2992], 2            # result
                        mov              dword ptr [rsp + 2996], 1
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n14_lit_string_α
.Lx134_0:               .quad            .Lx134_0_s
.Lx134_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rsp + 2896], 2            # result
                        mov              dword ptr [rsp + 2900], 1
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rsp + 2904], rax;         jmp   n15_lit_string_α
.Lx135_0:               .quad            .Lx135_0_s
.Lx135_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rsp + 2880], 2            # result
                        mov              dword ptr [rsp + 2884], 1
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n16_lit_string_α
.Lx136_0:               .quad            .Lx136_0_s
.Lx136_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rsp + 2784], 2            # result
                        mov              dword ptr [rsp + 2788], 1
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n17_lit_string_α
.Lx137_0:               .quad            .Lx137_0_s
.Lx137_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rsp + 2768], 2            # result
                        mov              dword ptr [rsp + 2772], 2
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n18_call_builtin_prolog_α
.Lx138_0:               .quad            .Lx138_0_s
.Lx138_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              r11, 19
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2856], rax
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2840], rax
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 2824], rax
                        lea              rdi, [rsp + 2816]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n19_call_builtin_prolog_α
n18_call_builtin_prolog_β:
                        mov              r11, 19;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              r11, 20
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2960], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2968], rax
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2952], rax
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 2936], rax
                        lea              rdi, [rsp + 2928]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n20_call_builtin_prolog_α
n19_call_builtin_prolog_β:
                        mov              r11, 20;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              r11, 21
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2728], rax
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2712], rax
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2696], rax
                        .section         .rodata
.Lrkfn142:              .string          "$format_to_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]
                        lea              rsi, [rsp + 2688]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 983040
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n21_var_ref_α
n20_call_builtin_prolog_β:
                        mov              r11, 21;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3408]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx;         jmp   n22_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              r11, 23
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2648], rax
                        .section         .rodata
.Lrkfn146:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn146]
                        lea              rsi, [rsp + 2640]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458752
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2624], rax
                        mov              qword ptr [rsp + 2632], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n23_lit_string_α
n22_call_builtin_prolog_β:
                        mov              r11, 23;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rsp + 2608], 2            # result
                        mov              dword ptr [rsp + 2612], 0
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rsp + 2616], rax;         jmp   n24_call_builtin_prolog_α
.Lx147_0:               .quad            .Lx147_0_s
.Lx147_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              r11, 25
                        mov              rax, qword ptr [rsp + 2608]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2616]
                        mov              qword ptr [rsp + 2600], rax
                        .section         .rodata
.Lrkfn149:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn149]
                        lea              rsi, [rsp + 2592]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n25_lit_string_α
n24_call_builtin_prolog_β:
                        mov              r11, 25;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 2544], 2            # result
                        mov              dword ptr [rsp + 2548], 9
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n26_var_ref_α
.Lx150_0:               .quad            .Lx150_0_s
.Lx150_0_s:             .string          "foo(1,2)."
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3392]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx;         jmp   n27_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
                        mov              r11, 28
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2536], rax
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2512], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2520], rax
                        .section         .rodata
.Lrkfn154:              .string          "$read_from_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn154]
                        lea              rsi, [rsp + 2512]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 983040
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n28_var_α
n27_call_builtin_prolog_β:
                        mov              r11, 28;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              mov              r11, 29
                        mov              rax, qword ptr [rsp + 3392]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 3400]
                        mov              qword ptr [rsp + 2488], rax;         jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_prolog_α:
                        mov              r11, 30
                        mov              rax, qword ptr [rsp + 2480]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2488]
                        mov              qword ptr [rsp + 2472], rax
                        .section         .rodata
.Lrkfn158:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn158]
                        lea              rsi, [rsp + 2464]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n30_lit_string_α
n29_call_builtin_prolog_β:
                        mov              r11, 30;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       mov              r11, 31
                        mov              qword ptr [rsp + 2432], 2            # result
                        mov              dword ptr [rsp + 2436], 0
                        mov              rax, qword ptr [rip + .Lx159_0]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n31_call_builtin_prolog_α
.Lx159_0:               .quad            .Lx159_0_s
.Lx159_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2416], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2424], rax
                        .section         .rodata
.Lrkfn161:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn161]
                        lea              rsi, [rsp + 2416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2400], rax
                        mov              qword ptr [rsp + 2408], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n32_call_builtin_prolog_α
n31_call_builtin_prolog_β:
                        mov              r11, 32;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              r11, 33
                        .section         .rodata
.Lrkfn163:              .string          "$wot_begin"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn163]
                        lea              rsi, [rsp + 2400]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 655360
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n33_lit_string_α
n32_call_builtin_prolog_β:
                        mov              r11, 33;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:       mov              r11, 34
                        mov              qword ptr [rsp + 2368], 2            # result
                        mov              dword ptr [rsp + 2372], 2
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n34_lit_integer_α
.Lx164_0:               .quad            .Lx164_0_s
.Lx164_0_s:             .string          "hi"
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      mov              r11, 35
                        mov              qword ptr [rsp + 2288], 3            # result
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n35_call_builtin_prolog_α
.Lx165_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              r11, 36
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2344], rax
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2320], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2328], rax
                        lea              rdi, [rsp + 2320]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2304], rax
                        mov              qword ptr [rsp + 2312], rdx
                        cmp              al, 104;                             je    n113_call_builtin_prolog_α
                                                                              jmp   n36_call_builtin_prolog_α
n35_call_builtin_prolog_β:
                        mov              r11, 36;                             jmp   n113_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_prolog_α:
                        mov              r11, 37
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2280], rax
                        .section         .rodata
.Lrkfn168:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn168]
                        lea              rsi, [rsp + 2272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2256], rax
                        mov              qword ptr [rsp + 2264], rdx
                        cmp              al, 104;                             je    n113_call_builtin_prolog_α
                                                                              jmp   n37_lit_string_α
n36_call_builtin_prolog_β:
                        mov              r11, 37;                             jmp   n113_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rsp + 2224], 2            # result
                        mov              dword ptr [rsp + 2228], 4
                        mov              rax, qword ptr [rip + .Lx169_0]
                        mov              qword ptr [rsp + 2232], rax;         jmp   n38_var_ref_α
.Lx169_0:               .quad            .Lx169_0_s
.Lx169_0_s:             .string          "atom"
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3376]
                        mov              qword ptr [rsp + 2144], rax
                        mov              qword ptr [rsp + 2152], rdx;         jmp   n39_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_prolog_α:
                        mov              r11, 40
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2200], rax
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2184], rax
                        lea              rdi, [rsp + 2176]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n40_call_builtin_prolog_α
n39_call_builtin_prolog_β:
                        mov              r11, 40;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              r11, 41
                        mov              rax, qword ptr [rsp + 2160]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2168]
                        mov              qword ptr [rsp + 2136], rax
                        .section         .rodata
.Lrkfn174:              .string          "$wot_end"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn174]
                        lea              rsi, [rsp + 2128]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n41_var_ref_α
n40_call_builtin_prolog_β:
                        mov              r11, 41;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3376]
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx;         jmp   n42_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_prolog_α:
                        mov              r11, 43
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2088], rax
                        .section         .rodata
.Lrkfn178:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn178]
                        lea              rsi, [rsp + 2080]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458752
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n43_lit_string_α
n42_call_builtin_prolog_β:
                        mov              r11, 43;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       mov              r11, 44
                        mov              qword ptr [rsp + 2048], 2            # result
                        mov              dword ptr [rsp + 2052], 0
                        mov              rax, qword ptr [rip + .Lx179_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n44_call_builtin_prolog_α
.Lx179_0:               .quad            .Lx179_0_s
.Lx179_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              r11, 45
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2040], rax
                        .section         .rodata
.Lrkfn181:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn181]
                        lea              rsi, [rsp + 2032]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n45_call_builtin_prolog_α
n44_call_builtin_prolog_β:
                        mov              r11, 45;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_prolog_α:
                        mov              r11, 46
                        .section         .rodata
.Lrkfn183:              .string          "$wot_begin"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn183]
                        lea              rsi, [rsp + 2016]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 655360
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n46_lit_string_α
n45_call_builtin_prolog_β:
                        mov              r11, 46;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       mov              r11, 47
                        mov              qword ptr [rsp + 1984], 2            # result
                        mov              dword ptr [rsp + 1988], 2
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n47_call_builtin_prolog_α
.Lx184_0:               .quad            .Lx184_0_s
.Lx184_0_s:             .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_prolog_α:
                        mov              r11, 48
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 1968], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 1976], rax
                        .section         .rodata
.Lrkfn186:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn186]
                        lea              rsi, [rsp + 1968]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx
                        cmp              al, 104;                             je    n112_call_builtin_prolog_α
                                                                              jmp   n48_lit_string_α
n47_call_builtin_prolog_β:
                        mov              r11, 48;                             jmp   n112_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       mov              r11, 49
                        mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], 5
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n49_var_ref_α
.Lx187_0:               .quad            .Lx187_0_s
.Lx187_0_s:             .string          "codes"
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3360]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n50_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_prolog_α:
                        mov              r11, 51
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1896], rax
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1880], rax
                        lea              rdi, [rsp + 1872]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n51_call_builtin_prolog_α
n50_call_builtin_prolog_β:
                        mov              r11, 51;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              r11, 52
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1832], rax
                        .section         .rodata
.Lrkfn192:              .string          "$wot_end"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn192]
                        lea              rsi, [rsp + 1824]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n52_var_α
n51_call_builtin_prolog_β:
                        mov              r11, 52;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              mov              r11, 53
                        mov              rax, qword ptr [rsp + 3360]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 3368]
                        mov              qword ptr [rsp + 1800], rax;         jmp   n53_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_prolog_α:
                        mov              r11, 54
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1784], rax
                        .section         .rodata
.Lrkfn196:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn196]
                        lea              rsi, [rsp + 1776]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n54_lit_string_α
n53_call_builtin_prolog_β:
                        mov              r11, 54;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:       mov              r11, 55
                        mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 0
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n55_call_builtin_prolog_α
.Lx197_0:               .quad            .Lx197_0_s
.Lx197_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_prolog_α:
                        mov              r11, 56
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1736], rax
                        .section         .rodata
.Lrkfn199:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn199]
                        lea              rsi, [rsp + 1728]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1712], rax
                        mov              qword ptr [rsp + 1720], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n56_call_builtin_prolog_α
n55_call_builtin_prolog_β:
                        mov              r11, 56;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_prolog_α:
                        mov              r11, 57
                        .section         .rodata
.Lrkfn201:              .string          "$wot_begin"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn201]
                        lea              rsi, [rsp + 1712]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 655360
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n57_lit_string_α
n56_call_builtin_prolog_β:
                        mov              r11, 57;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              r11, 58
                        mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 2
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n58_call_builtin_prolog_α
.Lx202_0:               .quad            .Lx202_0_s
.Lx202_0_s:             .string          "cd"
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_prolog_α:
                        mov              r11, 59
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1672], rax
                        .section         .rodata
.Lrkfn204:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn204]
                        lea              rsi, [rsp + 1664]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              al, 104;                             je    n111_call_builtin_prolog_α
                                                                              jmp   n59_lit_string_α
n58_call_builtin_prolog_β:
                        mov              r11, 59;                             jmp   n111_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              r11, 60
                        mov              qword ptr [rsp + 1616], 2            # result
                        mov              dword ptr [rsp + 1620], 5
                        mov              rax, qword ptr [rip + .Lx205_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n60_var_ref_α
.Lx205_0:               .quad            .Lx205_0_s
.Lx205_0_s:             .string          "chars"
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3344]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx;         jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_prolog_α:
                        mov              r11, 62
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1592], rax
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1576], rax
                        lea              rdi, [rsp + 1568]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n62_call_builtin_prolog_α
n61_call_builtin_prolog_β:
                        mov              r11, 62;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_prolog_α:
                        mov              r11, 63
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1528], rax
                        .section         .rodata
.Lrkfn210:              .string          "$wot_end"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn210]
                        lea              rsi, [rsp + 1520]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n63_var_α
n62_call_builtin_prolog_β:
                        mov              r11, 63;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:              mov              r11, 64
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n64_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_prolog_α:
                        mov              r11, 65
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1480], rax
                        .section         .rodata
.Lrkfn214:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn214]
                        lea              rsi, [rsp + 1472]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n65_lit_string_α
n64_call_builtin_prolog_β:
                        mov              r11, 65;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              r11, 66
                        mov              qword ptr [rsp + 1440], 2            # result
                        mov              dword ptr [rsp + 1444], 0
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n66_call_builtin_prolog_α
.Lx215_0:               .quad            .Lx215_0_s
.Lx215_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n66_call_builtin_prolog_α:
                        mov              r11, 67
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1432], rax
                        .section         .rodata
.Lrkfn217:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn217]
                        lea              rsi, [rsp + 1424]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n67_call_builtin_prolog_α
n66_call_builtin_prolog_β:
                        mov              r11, 67;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_prolog_α:
                        mov              r11, 68
                        .section         .rodata
.Lrkfn219:              .string          "$wot_begin"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn219]
                        lea              rsi, [rsp + 1408]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 655360
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n68_lit_string_α
n67_call_builtin_prolog_β:
                        mov              r11, 68;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       mov              r11, 69
                        mov              qword ptr [rsp + 1376], 2            # result
                        mov              dword ptr [rsp + 1380], 1
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n69_call_builtin_prolog_α
.Lx220_0:               .quad            .Lx220_0_s
.Lx220_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_prolog_α:
                        mov              r11, 70
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1368], rax
                        .section         .rodata
.Lrkfn222:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn222]
                        lea              rsi, [rsp + 1360]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    n110_call_builtin_prolog_α
                                                                              jmp   n70_lit_string_α
n69_call_builtin_prolog_β:
                        mov              r11, 70;                             jmp   n110_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       mov              r11, 71
                        mov              qword ptr [rsp + 1328], 2            # result
                        mov              dword ptr [rsp + 1332], 1
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n71_call_builtin_prolog_α
.Lx223_0:               .quad            .Lx223_0_s
.Lx223_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_prolog_α:
                        mov              r11, 72
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1320], rax
                        .section         .rodata
.Lrkfn225:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn225]
                        lea              rsi, [rsp + 1312]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    n110_call_builtin_prolog_α
                                                                              jmp   n72_lit_string_α
n71_call_builtin_prolog_β:
                        mov              r11, 72;                             jmp   n110_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:       mov              r11, 73
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 1
                        mov              rax, qword ptr [rip + .Lx226_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n73_call_builtin_prolog_α
.Lx226_0:               .quad            .Lx226_0_s
.Lx226_0_s:             .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_prolog_α:
                        mov              r11, 74
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1272], rax
                        .section         .rodata
.Lrkfn228:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rsp + 1264]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx
                        cmp              al, 104;                             je    n110_call_builtin_prolog_α
                                                                              jmp   n74_lit_string_α
n73_call_builtin_prolog_β:
                        mov              r11, 74;                             jmp   n110_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:       mov              r11, 75
                        mov              qword ptr [rsp + 1216], 2            # result
                        mov              dword ptr [rsp + 1220], 4
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n75_var_ref_α
.Lx229_0:               .quad            .Lx229_0_s
.Lx229_0_s:             .string          "atom"
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:          mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3328]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n76_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n76_call_builtin_prolog_α:
                        mov              r11, 77
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1176], rax
                        lea              rdi, [rsp + 1168]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n77_call_builtin_prolog_α
n76_call_builtin_prolog_β:
                        mov              r11, 77;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_prolog_α:
                        mov              r11, 78
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1128], rax
                        .section         .rodata
.Lrkfn234:              .string          "$wot_end"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn234]
                        lea              rsi, [rsp + 1120]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n78_var_ref_α
n77_call_builtin_prolog_β:
                        mov              r11, 78;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3328]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n79_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_builtin_prolog_α:
                        mov              r11, 80
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn238:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn238]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458752
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n80_lit_string_α
n79_call_builtin_prolog_β:
                        mov              r11, 80;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:       mov              r11, 81
                        mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 0
                        mov              rax, qword ptr [rip + .Lx239_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n81_call_builtin_prolog_α
.Lx239_0:               .quad            .Lx239_0_s
.Lx239_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_prolog_α:
                        mov              r11, 82
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1032], rax
                        .section         .rodata
.Lrkfn241:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn241]
                        lea              rsi, [rsp + 1024]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n82_lit_string_α
n81_call_builtin_prolog_β:
                        mov              r11, 82;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              r11, 83
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 4
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n83_var_ref_α
.Lx242_0:               .quad            .Lx242_0_s
.Lx242_0_s:             .string          "atom"
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:          mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3312]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n84_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_prolog_α:
                        mov              r11, 85
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        lea              rdi, [rsp + 688]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n85_lit_string_α
n84_call_builtin_prolog_β:
                        mov              r11, 85;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              r11, 86
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 5
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n86_lit_string_α
.Lx246_0:               .quad            .Lx246_0_s
.Lx246_0_s:             .string          "~w!~w"
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       mov              r11, 87
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 1
                        mov              rax, qword ptr [rip + .Lx247_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n87_lit_string_α
.Lx247_0:               .quad            .Lx247_0_s
.Lx247_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       mov              r11, 88
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 1
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n88_lit_string_α
.Lx248_0:               .quad            .Lx248_0_s
.Lx248_0_s:             .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       mov              r11, 89
                        mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 1
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n89_lit_string_α
.Lx249_0:               .quad            .Lx249_0_s
.Lx249_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       mov              r11, 90
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 1
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n90_lit_string_α
.Lx250_0:               .quad            .Lx250_0_s
.Lx250_0_s:             .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       mov              r11, 91
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 2
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n91_call_builtin_prolog_α
.Lx251_0:               .quad            .Lx251_0_s
.Lx251_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_prolog_α:
                        mov              r11, 92
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 824], rax
                        lea              rdi, [rsp + 816]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n92_call_builtin_prolog_α
n91_call_builtin_prolog_β:
                        mov              r11, 92;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n92_call_builtin_prolog_α:
                        mov              r11, 93
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n93_call_builtin_prolog_α
n92_call_builtin_prolog_β:
                        mov              r11, 93;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
                        mov              r11, 94
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 616], rax
                        .section         .rodata
.Lrkfn255:              .string          "$format3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn255]
                        lea              rsi, [rsp + 608]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n94_var_ref_α
n93_call_builtin_prolog_β:
                        mov              r11, 94;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3312]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n95_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n95_call_builtin_prolog_α:
                        mov              r11, 96
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn259:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn259]
                        lea              rsi, [rsp + 560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458752
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n96_lit_string_α
n95_call_builtin_prolog_β:
                        mov              r11, 96;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       mov              r11, 97
                        mov              qword ptr [rsp + 528], 2             # result
                        mov              dword ptr [rsp + 532], 0
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n97_call_builtin_prolog_α
.Lx260_0:               .quad            .Lx260_0_s
.Lx260_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        mov              r11, 98
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 520], rax
                        .section         .rodata
.Lrkfn262:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn262]
                        lea              rsi, [rsp + 512]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n98_call_builtin_prolog_α
n97_call_builtin_prolog_β:
                        mov              r11, 98;                             jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n98_call_builtin_prolog_α:
                        mov              r11, 99
                        .section         .rodata
.Lrkfn264:              .string          "$wot_begin"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn264]
                        lea              rsi, [rsp + 496]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 655360
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n100_lit_string_α
                                                                              jmp   n99_call_builtin_prolog_α
n98_call_builtin_prolog_β:
                        mov              r11, 99;                             jmp   n100_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        mov              r11, 100
                        .section         .rodata
.Lrkfn266:              .string          "$wot_abort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn266]
                        lea              rsi, [rsp + 480]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 655360
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n100_lit_string_α
                                                                              jmp   n100_lit_string_α
n99_call_builtin_prolog_β:
                        mov              r11, 100;                            jmp   n100_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      mov              r11, 101
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 11
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n101_call_builtin_prolog_α
.Lx267_0:               .quad            .Lx267_0_s
.Lx267_0_s:             .string          "goal_failed"
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_prolog_α:
                        mov              r11, 102
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn269:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn269]
                        lea              rsi, [rsp + 304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n102_lit_string_α
n101_call_builtin_prolog_β:
                        mov              r11, 102;                            jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      mov              r11, 103
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 0
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n103_call_builtin_prolog_α
.Lx270_0:               .quad            .Lx270_0_s
.Lx270_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n103_call_builtin_prolog_α:
                        mov              r11, 104
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn272:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn272]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n104_lit_string_α
n103_call_builtin_prolog_β:
                        mov              r11, 104;                            jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 4
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n105_call_builtin_prolog_α
.Lx273_0:               .quad            .Lx273_0_s
.Lx273_0_s:             .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n105_call_builtin_prolog_α:
                        mov              r11, 106
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn275:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn275]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n106_lit_string_α
n105_call_builtin_prolog_β:
                        mov              r11, 106;                            jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:      mov              r11, 107
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n107_call_builtin_prolog_α
.Lx276_0:               .quad            .Lx276_0_s
.Lx276_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_prolog_α:
                        mov              r11, 108
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn278:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn278]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n108_move_label_α
n107_call_builtin_prolog_β:
                        mov              r11, 108;                            jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n108_move_label_α:      mov              r11, 109
                        lea              rax, [rip + n114_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n109_disjunction_α:     mov              r11, 110
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n109_disjunction_β:     mov              r11, 110;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n110_call_builtin_prolog_α:
                        mov              r11, 111
                        .section         .rodata
.Lrkfn284:              .string          "$wot_abort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn284]
                        lea              rsi, [rsp + 1248]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 655360
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n114_call_builtin_prolog_α
n110_call_builtin_prolog_β:
                        mov              r11, 111;                            jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
                        mov              r11, 112
                        .section         .rodata
.Lrkfn286:              .string          "$wot_abort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn286]
                        lea              rsi, [rsp + 1648]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 655360
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n114_call_builtin_prolog_α
n111_call_builtin_prolog_β:
                        mov              r11, 112;                            jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_prolog_α:
                        mov              r11, 113
                        .section         .rodata
.Lrkfn288:              .string          "$wot_abort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn288]
                        lea              rsi, [rsp + 1952]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 655360
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n114_call_builtin_prolog_α
n112_call_builtin_prolog_β:
                        mov              r11, 113;                            jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_prolog_α:
                        mov              r11, 114
                        .section         .rodata
.Lrkfn290:              .string          "$wot_abort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rsp + 2256]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 655360
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              al, 104;                             je    n114_call_builtin_prolog_α
                                                                              jmp   n114_call_builtin_prolog_α
n113_call_builtin_prolog_β:
                        mov              r11, 114;                            jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_prolog_α:
                        mov              r11, 115
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n114_call_builtin_prolog_β:
                        mov              r11, 115;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n109_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 3464]
                        add              rsp, 3488;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 3472]
                        add              rsp, 3488;                           jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
