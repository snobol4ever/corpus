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
                        sub              rsp, 3448
                        mov              rdi, rsp
                        mov              ecx, 3448
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 3440], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx115_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx115_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx115_101
.Lx115_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx115_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 3280], 1
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rbp + 3288], rax
                                                                                        jmp   n3_lit_string_α
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 3168], 1
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rbp + 3176], rax
                                                                                        jmp   n4_lit_string_α
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 3184], 1
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n5_op11_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3224], rax
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3256], rax
                        lea              rdi, [rbp + 3216]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n6_op11_α
n5_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n6_op11_α:
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3128], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3144], rax
                        .section         .rodata
.Lrkfn123:              .string          "$write_to_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn123]
                        lea              rsi, [rbp + 3120]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n8_var_ref_α
n6_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n7_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3424]
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3080], rax
                        .section         .rodata
.Lrkfn128:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn128]
                        lea              rsi, [rbp + 3072]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n10_lit_string_α
n9_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 3040], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 3048], rax
                                                                                        jmp   n11_op11_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3032], rax
                        .section         .rodata
.Lrkfn131:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn131]
                        lea              rsi, [rbp + 3024]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n12_var_ref_α
n11_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                                                                                        jmp   n13_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 2752], 1
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n14_lit_string_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "~w-~w"
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 2992], 1
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n15_lit_string_α
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 2896], 1
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rbp + 2904], rax
                                                                                        jmp   n16_lit_string_α
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 2880], 1
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n17_lit_string_α
.Lx137_0:
                        .quad            .Lx137_0_s
.Lx137_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 2784], 1
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n18_lit_string_α
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 2768], 1
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n19_op11_α
.Lx139_0:
                        .quad            .Lx139_0_s
.Lx139_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2824], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2840], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2816]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n20_op11_α
n19_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n20_op11_α:
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2936], rax
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2952], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2968], rax
                        lea              rdi, [rbp + 2928]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n21_op11_α
n20_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2696], rax
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2712], rax
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2728], rax
                        .section         .rodata
.Lrkfn143:              .string          "$format_to_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn143]
                        lea              rsi, [rbp + 2688]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n22_var_ref_α
n21_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n23_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2648], rax
                        .section         .rodata
.Lrkfn147:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]
                        lea              rsi, [rbp + 2640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n24_lit_string_α
n23_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rbp + 2608], 1
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rbp + 2616], rax
                                                                                        jmp   n25_op11_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n25_op11_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2600], rax
                        .section         .rodata
.Lrkfn150:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn150]
                        lea              rsi, [rbp + 2592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n26_lit_string_α
n25_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 2544], 1
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n27_var_ref_α
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          "foo(1,2)."
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3392]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                                                                                        jmp   n28_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_op11_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2520], rax
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2536], rax
                        .section         .rodata
.Lrkfn155:              .string          "$read_from_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn155]
                        lea              rsi, [rbp + 2512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n29_var_α
n28_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n30_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_op11_α:
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2472], rax
                        .section         .rodata
.Lrkfn159:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]
                        lea              rsi, [rbp + 2464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n31_lit_string_α
n30_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 2432], 1
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n32_op11_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2424], rax
                        .section         .rodata
.Lrkfn162:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]
                        lea              rsi, [rbp + 2416]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n33_op11_α
n32_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_op11_α:
                        .section         .rodata
.Lrkfn164:              .string          "$wot_begin"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn164]
                        lea              rsi, [rbp + 2400]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n34_lit_string_α
n33_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 2368], 1
                        mov              rax, qword ptr [rip + .Lx165_0]
                        mov              qword ptr [rbp + 2376], rax
                                                                                        jmp   n35_lit_integer_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "hi"
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:
                        mov              qword ptr [rbp + 2288], 6
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n36_op11_α
.Lx166_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2328], rax
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2344], rax
                        lea              rdi, [rbp + 2320]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              eax, 99
                                                                                        je    n38_op11_α
                                                                                        jmp   n37_op11_α
n36_op11_β:
                                                                                        jmp   n38_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n37_op11_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2280], rax
                        .section         .rodata
.Lrkfn169:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn169]
                        lea              rsi, [rbp + 2272]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              eax, 99
                                                                                        je    n38_op11_α
                                                                                        jmp   n39_lit_string_α
n37_op11_β:
                                                                                        jmp   n38_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        .section         .rodata
.Lrkfn171:              .string          "$wot_abort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]
                        lea              rsi, [rbp + 2256]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n7_op11_α
n38_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n40_var_ref_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "atom"
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                                                                                        jmp   n41_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_op11_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2176]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n42_op11_α
n41_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n42_op11_α:
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2136], rax
                        .section         .rodata
.Lrkfn177:              .string          "$wot_end"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn177]
                        lea              rsi, [rbp + 2128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n43_var_ref_α
n42_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3376]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2088], rax
                        .section         .rodata
.Lrkfn181:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn181]
                        lea              rsi, [rbp + 2080]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n45_lit_string_α
n44_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rbp + 2048], 1
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n46_op11_α
.Lx182_0:
                        .quad            .Lx182_0_s
.Lx182_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n46_op11_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2040], rax
                        .section         .rodata
.Lrkfn184:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn184]
                        lea              rsi, [rbp + 2032]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n47_op11_α
n46_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n47_op11_α:
                        .section         .rodata
.Lrkfn186:              .string          "$wot_begin"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn186]
                        lea              rsi, [rbp + 2016]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n48_lit_string_α
n47_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx187_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n49_op11_α
.Lx187_0:
                        .quad            .Lx187_0_s
.Lx187_0_s:
                        .string          "ab"
#-----------------------------------------------------------------------------------------------------------------------
n49_op11_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1976], rax
                        .section         .rodata
.Lrkfn189:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn189]
                        lea              rsi, [rbp + 1968]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        cmp              eax, 99
                                                                                        je    n51_op11_α
                                                                                        jmp   n50_lit_string_α
n49_op11_β:
                                                                                        jmp   n51_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:
                        mov              qword ptr [rbp + 1920], 1
                        mov              rax, qword ptr [rip + .Lx190_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n52_var_ref_α
.Lx190_0:
                        .quad            .Lx190_0_s
.Lx190_0_s:
                        .string          "codes"
#-----------------------------------------------------------------------------------------------------------------------
n51_op11_α:
                        .section         .rodata
.Lrkfn192:              .string          "$wot_abort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn192]
                        lea              rsi, [rbp + 1952]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n7_op11_α
n51_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n53_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1872]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n54_op11_α
n53_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1832], rax
                        .section         .rodata
.Lrkfn197:              .string          "$wot_end"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn197]
                        lea              rsi, [rbp + 1824]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n55_var_α
n54_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n56_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1784], rax
                        .section         .rodata
.Lrkfn201:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn201]
                        lea              rsi, [rbp + 1776]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n57_lit_string_α
n56_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx202_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n58_op11_α
.Lx202_0:
                        .quad            .Lx202_0_s
.Lx202_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1736], rax
                        .section         .rodata
.Lrkfn204:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn204]
                        lea              rsi, [rbp + 1728]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n59_op11_α
n58_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n59_op11_α:
                        .section         .rodata
.Lrkfn206:              .string          "$wot_begin"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn206]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n60_lit_string_α
n59_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n61_op11_α
.Lx207_0:
                        .quad            .Lx207_0_s
.Lx207_0_s:
                        .string          "cd"
#-----------------------------------------------------------------------------------------------------------------------
n61_op11_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1672], rax
                        .section         .rodata
.Lrkfn209:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rbp + 1664]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n63_op11_α
                                                                                        jmp   n62_lit_string_α
n61_op11_β:
                                                                                        jmp   n63_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:
                        mov              qword ptr [rbp + 1616], 1
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n64_var_ref_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "chars"
#-----------------------------------------------------------------------------------------------------------------------
n63_op11_α:
                        .section         .rodata
.Lrkfn212:              .string          "$wot_abort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn212]
                        lea              rsi, [rbp + 1648]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n7_op11_α
n63_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3344]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n65_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n65_op11_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1592], rax
                        lea              rdi, [rbp + 1568]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n66_op11_α
n65_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n66_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lrkfn217:              .string          "$wot_end"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn217]
                        lea              rsi, [rbp + 1520]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n67_var_α
n66_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n68_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn221:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn221]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n69_lit_string_α
n68_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 1440], 1
                        mov              rax, qword ptr [rip + .Lx222_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n70_op11_α
.Lx222_0:
                        .quad            .Lx222_0_s
.Lx222_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n70_op11_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lrkfn224:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn224]
                        lea              rsi, [rbp + 1424]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n71_op11_α
n70_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n71_op11_α:
                        .section         .rodata
.Lrkfn226:              .string          "$wot_begin"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn226]
                        lea              rsi, [rbp + 1408]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n72_lit_string_α
n71_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rbp + 1376], 1
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n73_op11_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lrkfn229:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn229]
                        lea              rsi, [rbp + 1360]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n75_op11_α
                                                                                        jmp   n74_lit_string_α
n73_op11_β:
                                                                                        jmp   n75_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx230_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n76_op11_α
.Lx230_0:
                        .quad            .Lx230_0_s
.Lx230_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n75_op11_α:
                        .section         .rodata
.Lrkfn232:              .string          "$wot_abort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn232]
                        lea              rsi, [rbp + 1248]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n7_op11_α
n75_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n76_op11_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn234:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn234]
                        lea              rsi, [rbp + 1312]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n75_op11_α
                                                                                        jmp   n77_lit_string_α
n76_op11_β:
                                                                                        jmp   n75_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n78_op11_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1272], rax
                        .section         .rodata
.Lrkfn237:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]
                        lea              rsi, [rbp + 1264]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n75_op11_α
                                                                                        jmp   n79_lit_string_α
n78_op11_β:
                                                                                        jmp   n75_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n80_var_ref_α
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "atom"
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3328]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n81_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n81_op11_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1168]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n82_op11_α
n81_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n82_op11_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        .section         .rodata
.Lrkfn243:              .string          "$wot_end"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn243]
                        lea              rsi, [rbp + 1120]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n83_var_ref_α
n82_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3328]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n84_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n84_op11_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn247:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn247]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n85_lit_string_α
n84_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n86_op11_α
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n86_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lrkfn250:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn250]
                        lea              rsi, [rbp + 1024]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n87_lit_string_α
n86_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx251_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n88_var_ref_α
.Lx251_0:
                        .quad            .Lx251_0_s
.Lx251_0_s:
                        .string          "atom"
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n89_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n89_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n90_lit_string_α
n89_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n91_lit_string_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "~w!~w"
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n92_lit_string_α
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n93_lit_string_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 880], 1
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n94_lit_string_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n95_lit_string_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "y"
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n96_op11_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n96_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n97_op11_α
n96_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n97_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n98_op11_α
n97_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n98_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn264:              .string          "$format3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn264]
                        lea              rsi, [rbp + 608]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n99_var_ref_α
n98_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3312]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n100_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n100_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn268:              .string          "$writeq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn268]
                        lea              rsi, [rbp + 560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n101_lit_string_α
n100_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n102_op11_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n102_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn271:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn271]
                        lea              rsi, [rbp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n103_op11_α
n102_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n103_op11_α:
                        .section         .rodata
.Lrkfn273:              .string          "$wot_begin"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn273]
                        lea              rsi, [rbp + 496]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n105_lit_string_α
                                                                                        jmp   n104_op11_α
n103_op11_β:
                                                                                        jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n104_op11_α:
                        .section         .rodata
.Lrkfn275:              .string          "$wot_abort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn275]
                        lea              rsi, [rbp + 480]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n105_lit_string_α
                                                                                        jmp   n105_lit_string_α
n104_op11_β:
                                                                                        jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n106_op11_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "goal_failed"
#-----------------------------------------------------------------------------------------------------------------------
n106_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn278:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn278]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n107_lit_string_α
n106_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n108_op11_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n108_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn281:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn281]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n109_lit_string_α
n108_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n110_op11_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n110_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn284:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn284]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n111_lit_string_α
n110_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n112_op11_α
.Lx285_0:
                        .quad            .Lx285_0_s
.Lx285_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n112_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn287:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn287]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n113_move_label_α
n112_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n113_move_label_α:
                        lea              rax, [rip + n7_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n114_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n114_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n114_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 3440]
                        add              rsp, 3448
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 3440]
                        add              rsp, 3448
                        ret
                        .section         .note.GNU-stack,"",@progbits
