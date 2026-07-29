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
                        sub              rsp, 3864
                        mov              rdi, rsp
                        mov              ecx, 3864
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 3856], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx124_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx124_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx124_101
.Lx124_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx124_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1_lit_string_α
n0_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 3392], 1
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rbp + 3400], rax
                                                                                        jmp   n2_lit_string_α
.Lx125_0:
                        .quad            .Lx125_0_s
.Lx125_0_s:
                        .string          "/tmp/rung71_br.bin"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 3408], 1
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 3416], rax
                                                                                        jmp   n3_var_ref_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3840]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                                                                                        jmp   n4_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 3632], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 3640], rax
                                                                                        jmp   n5_lit_string_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 3536], 1
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n6_lit_string_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "type"
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 3456], 1
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n7_op11_α
.Lx131_0:
                        .quad            .Lx131_0_s
.Lx131_0_s:
                        .string          "binary"
#-----------------------------------------------------------------------------------------------------------------------
n7_op11_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3496], rax
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3512], rax
                        lea              rdi, [rbp + 3488]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n8_lit_string_α
n7_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 3440], 1
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n9_op11_α
.Lx133_0:
                        .quad            .Lx133_0_s
.Lx133_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3576], rax
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3592], rax
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3608], rax
                        lea              rdi, [rbp + 3568]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n10_op11_α
n9_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3336], rax
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3352], rax
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3368], rax
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3384], rax
                        .section         .rodata
.Lrkfn136:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn136]
                        lea              rsi, [rbp + 3328]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n12_var_ref_α
n10_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
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
n11_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3840]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx
                                                                                        jmp   n13_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 3296], 6
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n14_op11_α
.Lx140_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3256], rax
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3272], rax
                        .section         .rodata
.Lrkfn142:              .string          "$put_byte"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]
                        lea              rsi, [rbp + 3248]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n15_var_ref_α
n14_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3840]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                                                                                        jmp   n16_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 3216], 6
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n17_op11_α
.Lx145_0:
                        .quad            65
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3176], rax
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3192], rax
                        .section         .rodata
.Lrkfn147:              .string          "$put_byte"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]
                        lea              rsi, [rbp + 3168]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n18_var_ref_α
n17_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3840]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                                                                                        jmp   n19_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 3136], 6
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n20_op11_α
.Lx150_0:
                        .quad            128
#-----------------------------------------------------------------------------------------------------------------------
n20_op11_α:
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3096], rax
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3112], rax
                        .section         .rodata
.Lrkfn152:              .string          "$put_byte"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn152]
                        lea              rsi, [rbp + 3088]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3072], rax
                        mov              qword ptr [rbp + 3080], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n21_var_ref_α
n20_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3840]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                                                                                        jmp   n22_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 3056], 6
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rbp + 3064], rax
                                                                                        jmp   n23_op11_α
.Lx155_0:
                        .quad            255
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3032], rax
                        .section         .rodata
.Lrkfn157:              .string          "$put_byte"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn157]
                        lea              rsi, [rbp + 3008]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n24_var_ref_α
n23_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3840]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_op11_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2968], rax
                        .section         .rodata
.Lrkfn161:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn161]
                        lea              rsi, [rbp + 2960]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n26_lit_string_α
n25_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 2688], 1
                        mov              rax, qword ptr [rip + .Lx162_0]
                        mov              qword ptr [rbp + 2696], rax
                                                                                        jmp   n27_lit_string_α
.Lx162_0:
                        .quad            .Lx162_0_s
.Lx162_0_s:
                        .string          "/tmp/rung71_br.bin"
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 2704], 1
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n28_var_ref_α
.Lx163_0:
                        .quad            .Lx163_0_s
.Lx163_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3824]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 2928], 1
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 2936], rax
                                                                                        jmp   n30_lit_string_α
.Lx166_0:
                        .quad            .Lx166_0_s
.Lx166_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 2832], 1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n31_lit_string_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "type"
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 2752], 1
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n32_op11_α
.Lx168_0:
                        .quad            .Lx168_0_s
.Lx168_0_s:
                        .string          "binary"
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 2832]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2840]
                        mov              qword ptr [rbp + 2792], rax
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2808], rax
                        lea              rdi, [rbp + 2784]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n33_lit_string_α
n32_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 2736], 1
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n34_op11_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2872], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2888], rax
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2904], rax
                        lea              rdi, [rbp + 2864]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n35_op11_α
n34_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_op11_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2632], rax
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2648], rax
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2664], rax
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2680], rax
                        .section         .rodata
.Lrkfn173:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn173]
                        lea              rsi, [rbp + 2624]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n36_var_ref_α
n35_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3824]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n37_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                                                                                        jmp   n38_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2552], rax
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lrkfn179:              .string          "$get_byte"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn179]
                        lea              rsi, [rbp + 2544]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n39_var_ref_α
n38_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3824]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n40_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3792]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n41_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_op11_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2488], rax
                        .section         .rodata
.Lrkfn185:              .string          "$get_byte"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn185]
                        lea              rsi, [rbp + 2464]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n42_var_ref_α
n41_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3824]
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                                                                                        jmp   n43_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3744]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n44_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2392], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2408], rax
                        .section         .rodata
.Lrkfn191:              .string          "$peek_byte"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rbp + 2384]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n45_var_ref_α
n44_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3824]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                                                                                        jmp   n46_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3760]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                                                                                        jmp   n47_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n47_op11_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2312], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2328], rax
                        .section         .rodata
.Lrkfn197:              .string          "$get_byte"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn197]
                        lea              rsi, [rbp + 2304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n48_var_ref_α
n47_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3824]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n49_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3808]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n50_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n50_op11_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2248], rax
                        .section         .rodata
.Lrkfn203:              .string          "$get_byte"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn203]
                        lea              rsi, [rbp + 2224]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n51_var_ref_α
n50_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3824]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3712]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   n53_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2168], rax
                        .section         .rodata
.Lrkfn209:              .string          "$peek_byte"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rbp + 2144]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n54_var_ref_α
n53_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3824]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n55_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3728]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n56_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2088], rax
                        .section         .rodata
.Lrkfn215:              .string          "$get_byte"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn215]
                        lea              rsi, [rbp + 2064]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n57_var_ref_α
n56_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3824]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n58_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n58_op11_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2024], rax
                        .section         .rodata
.Lrkfn219:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn219]
                        lea              rsi, [rbp + 2016]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n59_lit_string_α
n58_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n60_var_ref_α
.Lx220_0:
                        .quad            .Lx220_0_s
.Lx220_0_s:
                        .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n61_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3792]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n62_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3760]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n63_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3808]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                                                                                        jmp   n64_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n64_op11_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1960], rax
                        lea              rdi, [rbp + 1888]
                        mov              esi, 5
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n65_op11_α
n64_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n65_op11_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1800], rax
                        .section         .rodata
.Lrkfn231:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn231]
                        lea              rsi, [rbp + 1792]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n66_lit_string_α
n65_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 1760], 1
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n67_op11_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n67_op11_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1752], rax
                        .section         .rodata
.Lrkfn234:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn234]
                        lea              rsi, [rbp + 1744]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n68_lit_string_α
n67_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:
                        mov              qword ptr [rbp + 1712], 1
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n69_var_ref_α
.Lx235_0:
                        .quad            .Lx235_0_s
.Lx235_0_s:
                        .string          "peek_consistent"
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3744]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n70_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3760]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n71_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n71_op11_α:
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1648]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n72_op11_α
n71_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n72_op11_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1592], rax
                        .section         .rodata
.Lrkfn242:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn242]
                        lea              rsi, [rbp + 1584]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n73_lit_string_α
n72_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx243_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n74_op11_α
.Lx243_0:
                        .quad            .Lx243_0_s
.Lx243_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n74_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn245:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn245]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n75_lit_string_α
n74_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n76_var_ref_α
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "eof"
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3712]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n77_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3728]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n78_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1440]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n79_op11_α
n78_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n79_op11_α:
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1384], rax
                        .section         .rodata
.Lrkfn253:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn253]
                        lea              rsi, [rbp + 1376]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n80_lit_string_α
n79_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n81_op11_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n81_op11_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lrkfn256:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn256]
                        lea              rsi, [rbp + 1328]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n82_lit_string_α
n81_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n83_lit_string_α
.Lx257_0:
                        .quad            .Lx257_0_s
.Lx257_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n84_var_ref_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "type_error"
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3648]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n85_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3664]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n86_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n86_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n87_var_ref_α
n86_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3680]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n88_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n88_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n90_lit_string_α
                                                                                        jmp   n89_op11_α
n88_op11_β:
                                                                                        jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n89_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx267_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx267_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx267_101
.Lx267_100:
                        lea              rdi, [rbp + 576]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx267_101:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n90_lit_string_α
                                                                                        jmp   n91_lit_string_α
n89_op11_β:
                                                                                        jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n92_op11_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "no_range_check"
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              rax, qword ptr [rip + .Lx269_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n93_lit_string_α
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "/tmp/rung71_br.bin"
#-----------------------------------------------------------------------------------------------------------------------
n92_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn271:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn271]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n94_lit_string_α
n92_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n95_var_ref_α
.Lx272_0:
                        .quad            .Lx272_0_s
.Lx272_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n96_op11_α
.Lx273_0:
                        .quad            .Lx273_0_s
.Lx273_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n97_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n96_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn277:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn277]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n98_lit_string_α
n96_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n99_lit_string_α
.Lx278_0:
                        .quad            .Lx278_0_s
.Lx278_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n100_op11_α
.Lx279_0:
                        .quad            .Lx279_0_s
.Lx279_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n101_lit_string_α
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "type"
#-----------------------------------------------------------------------------------------------------------------------
n100_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn282:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn282]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n102_lit_string_α
n100_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n103_op11_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "binary"
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 160], 1
                        mov              rax, qword ptr [rip + .Lx284_0]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n104_op11_α
.Lx284_0:
                        .quad            .Lx284_0_s
.Lx284_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n103_op11_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n105_lit_string_α
n103_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n104_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn287:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn287]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n106_call_proc_staged_α
n104_op11_β:
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n107_op11_α
.Lx288_0:
                        .quad            .Lx288_0_s
.Lx288_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n106_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx290_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx290_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx290_3]
                        lea              rdx, [rip + .Lx290_4]
                                                                                        jmp   rax
.Lx290_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx290_2
.Lx290_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx290_2
.Lx290_1:
                        call             rt_faildescr@PLT
.Lx290_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n11_op11_α
                                                                                        jmp   n108_move_label_α
n106_call_proc_staged_β:
                                                                                        jmp   n11_op11_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "halt/0"
#-----------------------------------------------------------------------------------------------------------------------
n107_op11_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n110_op11_α
                                                                                        jmp   n109_op11_α
n107_op11_β:
                                                                                        jmp   n110_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n108_move_label_α:
                        lea              rax, [rip + n106_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n109_op11_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1048], rax
                        .section         .rodata
.Lrkfn295:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn295]
                        lea              rsi, [rbp + 992]
                        mov              edx, 4
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n110_op11_α
                                                                                        jmp   n112_var_ref_α
n109_op11_β:
                                                                                        jmp   n110_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n110_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn297:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn297]
                        lea              rsi, [rbp + 608]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n90_lit_string_α
                                                                                        jmp   n113_lit_string_α
n110_op11_β:
                                                                                        jmp   n90_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n111_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n111_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n112_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n114_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n115_var_ref_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "range_err"
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n116_op11_α
.Lx303_0:
                        .quad            300
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3648]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n117_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n116_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lrkfn307:              .string          "$put_byte"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn307]
                        lea              rsi, [rbp + 912]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n110_op11_α
                                                                                        jmp   n118_var_ref_α
n116_op11_β:
                                                                                        jmp   n110_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3664]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n119_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n120_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n119_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 768]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n110_op11_α
                                                                                        jmp   n121_op11_α
n119_op11_β:
                                                                                        jmp   n110_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n120_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 872], rax
                        .section         .rodata
.Lrkfn314:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn314]
                        lea              rsi, [rbp + 864]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 99
                                                                                        je    n110_op11_α
                                                                                        jmp   n98_lit_string_α
n120_op11_β:
                                                                                        jmp   n110_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n121_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn316:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn316]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n110_op11_α
                                                                                        jmp   n122_lit_string_α
n121_op11_β:
                                                                                        jmp   n110_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx317_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n123_op11_α
.Lx317_0:
                        .quad            .Lx317_0_s
.Lx317_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n123_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn319:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn319]
                        lea              rsi, [rbp + 656]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n110_op11_α
                                                                                        jmp   n98_lit_string_α
n123_op11_β:
                                                                                        jmp   n110_op11_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n111_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 3856]
                        add              rsp, 3864
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 3856]
                        add              rsp, 3864
                        ret
                        .section         .note.GNU-stack,"",@progbits
