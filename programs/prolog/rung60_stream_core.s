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
                        sub              rsp, 3960
                        mov              rdi, rsp
                        mov              ecx, 3960
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 3952], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx130_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx130_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx130_101
.Lx130_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx130_101:
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
                        lea              rdx, [rbp + 3936]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx
                                                                                        jmp   n2_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n2_op11_α:
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3704], rax
                        .section         .rodata
.Lrkfn134:              .string          "$current_output"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn134]
                        lea              rsi, [rbp + 3696]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n3_var_α
n2_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:
                        mov              rax, qword ptr [rbp + 3936]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3944]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
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
n4_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3656], rax
                        .section         .rodata
.Lrkfn139:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn139]
                        lea              rsi, [rbp + 3648]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n6_lit_string_α
n5_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:
                        mov              qword ptr [rbp + 3616], 1
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rbp + 3624], rax
                                                                                        jmp   n7_op11_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n7_op11_α:
                        mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 3608], rax
                        .section         .rodata
.Lrkfn142:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn142]
                        lea              rsi, [rbp + 3600]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n8_var_ref_α
n7_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3920]
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                                                                                        jmp   n9_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3552], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3560], rax
                        .section         .rodata
.Lrkfn146:              .string          "$current_input"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn146]
                        lea              rsi, [rbp + 3552]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n10_var_α
n9_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n11_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_op11_α:
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3512], rax
                        .section         .rodata
.Lrkfn150:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn150]
                        lea              rsi, [rbp + 3504]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n12_lit_string_α
n11_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:
                        mov              qword ptr [rbp + 3472], 1
                        mov              rax, qword ptr [rip + .Lx151_0]
                        mov              qword ptr [rbp + 3480], rax
                                                                                        jmp   n13_op11_α
.Lx151_0:
                        .quad            .Lx151_0_s
.Lx151_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3464], rax
                        .section         .rodata
.Lrkfn153:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn153]
                        lea              rsi, [rbp + 3456]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n14_lit_string_α
n13_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 3248], 1
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rbp + 3256], rax
                                                                                        jmp   n15_lit_string_α
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 3136], 1
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rbp + 3144], rax
                                                                                        jmp   n16_lit_string_α
.Lx155_0:
                        .quad            .Lx155_0_s
.Lx155_0_s:
                        .string          "existence_error"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 3024], 1
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rbp + 3032], rax
                                                                                        jmp   n17_var_ref_α
.Lx156_0:
                        .quad            .Lx156_0_s
.Lx156_0_s:
                        .string          "stream"
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3888]
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
                                                                                        jmp   n18_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_op11_α:
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3080], rax
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 3096], rax
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3112], rax
                        lea              rdi, [rbp + 3072]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n19_var_ref_α
n18_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3904]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                                                                                        jmp   n20_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_op11_α:
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3192], rax
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 3208], rax
                        mov              rax, qword ptr [rbp + 3152]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3160]
                        mov              qword ptr [rbp + 3224], rax
                        lea              rdi, [rbp + 3184]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n21_op11_α
n20_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx163_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx163_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx163_101
.Lx163_100:
                        lea              rdi, [rbp + 3280]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx163_101:
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n22_lit_string_α
n21_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 3424], 1
                        mov              rax, qword ptr [rip + .Lx164_0]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   n23_op11_α
.Lx164_0:
                        .quad            .Lx164_0_s
.Lx164_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3416], rax
                        .section         .rodata
.Lrkfn166:              .string          "$set_output"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn166]
                        lea              rsi, [rbp + 3408]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n24_lit_string_α
n23_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:
                        mov              qword ptr [rbp + 3008], 1
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 3016], rax
                                                                                        jmp   n26_op11_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n25_op11_α:
                        mov              rax, qword ptr [rbp + 3264]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 3320], rax
                        mov              rax, qword ptr [rbp + 3168]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3176]
                        mov              qword ptr [rbp + 3336], rax
                        .section         .rodata
.Lrkfn169:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn169]
                        lea              rsi, [rbp + 3312]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n27_lit_string_α
n25_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 3000], rax
                        .section         .rodata
.Lrkfn171:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn171]
                        lea              rsi, [rbp + 2992]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n28_lit_string_α
n26_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 3376], 1
                        mov              rax, qword ptr [rip + .Lx172_0]
                        mov              qword ptr [rbp + 3384], rax
                                                                                        jmp   n29_op11_α
.Lx172_0:
                        .quad            .Lx172_0_s
.Lx172_0_s:
                        .string          "setout_existence"
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 2784], 1
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n30_lit_string_α
.Lx173_0:
                        .quad            .Lx173_0_s
.Lx173_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3368], rax
                        .section         .rodata
.Lrkfn175:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]
                        lea              rsi, [rbp + 3360]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                        cmp              eax, 99
                                                                                        je    n25_op11_α
                                                                                        jmp   n24_lit_string_α
n29_op11_β:
                                                                                        jmp   n25_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 2672], 1
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rbp + 2680], rax
                                                                                        jmp   n31_lit_string_α
.Lx176_0:
                        .quad            .Lx176_0_s
.Lx176_0_s:
                        .string          "domain_error"
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 2560], 1
                        mov              rax, qword ptr [rip + .Lx177_0]
                        mov              qword ptr [rbp + 2568], rax
                                                                                        jmp   n32_var_ref_α
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "stream"
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3856]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                                                                                        jmp   n33_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_op11_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2616], rax
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2632], rax
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2648], rax
                        lea              rdi, [rbp + 2608]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n34_var_ref_α
n33_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3872]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n35_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_op11_α:
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2728], rax
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2744], rax
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2760], rax
                        lea              rdi, [rbp + 2720]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n36_op11_α
n35_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx184_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx184_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx184_101
.Lx184_100:
                        lea              rdi, [rbp + 2816]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx184_101:
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n37_lit_string_α
n36_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 2960], 1
                        mov              rax, qword ptr [rip + .Lx185_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n38_op11_α
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2952], rax
                        .section         .rodata
.Lrkfn187:              .string          "$current_output"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn187]
                        lea              rsi, [rbp + 2944]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              eax, 99
                                                                                        je    n40_op11_α
                                                                                        jmp   n39_lit_string_α
n38_op11_β:
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 2544], 1
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n41_op11_α
.Lx188_0:
                        .quad            .Lx188_0_s
.Lx188_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2856], rax
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2872], rax
                        .section         .rodata
.Lrkfn190:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn190]
                        lea              rsi, [rbp + 2848]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n42_lit_string_α
n40_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_op11_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2536], rax
                        .section         .rodata
.Lrkfn192:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn192]
                        lea              rsi, [rbp + 2528]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n43_lit_string_α
n41_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 2912], 1
                        mov              rax, qword ptr [rip + .Lx193_0]
                        mov              qword ptr [rbp + 2920], rax
                                                                                        jmp   n44_op11_α
.Lx193_0:
                        .quad            .Lx193_0_s
.Lx193_0_s:
                        .string          "curout_domain"
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:
                        mov              qword ptr [rbp + 2320], 1
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n45_lit_string_α
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2904], rax
                        .section         .rodata
.Lrkfn196:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn196]
                        lea              rsi, [rbp + 2896]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                        cmp              eax, 99
                                                                                        je    n40_op11_α
                                                                                        jmp   n39_lit_string_α
n44_op11_β:
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:
                        mov              qword ptr [rbp + 2208], 1
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n46_var_ref_α
.Lx197_0:
                        .quad            .Lx197_0_s
.Lx197_0_s:
                        .string          "instantiation_error"
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3824]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n47_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n47_op11_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rdi, [rbp + 2256]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n48_op11_α
n47_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n48_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx201_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx201_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx201_101
.Lx201_100:
                        lea              rdi, [rbp + 2352]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx201_101:
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n49_var_ref_α
n48_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3840]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n50_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n50_op11_α:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2488], rax
                        .section         .rodata
.Lrkfn205:              .string          "$set_output"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn205]
                        lea              rsi, [rbp + 2480]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 99
                                                                                        je    n52_op11_α
                                                                                        jmp   n51_lit_string_α
n50_op11_β:
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              rax, qword ptr [rip + .Lx206_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n53_op11_α
.Lx206_0:
                        .quad            .Lx206_0_s
.Lx206_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n52_op11_α:
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2392], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2408], rax
                        .section         .rodata
.Lrkfn208:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn208]
                        lea              rsi, [rbp + 2384]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n54_lit_string_α
n52_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2184], rax
                        .section         .rodata
.Lrkfn210:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn210]
                        lea              rsi, [rbp + 2176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n55_lit_string_α
n53_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 2448], 1
                        mov              rax, qword ptr [rip + .Lx211_0]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n56_op11_α
.Lx211_0:
                        .quad            .Lx211_0_s
.Lx211_0_s:
                        .string          "setout_inst"
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:
                        mov              qword ptr [rbp + 1968], 1
                        mov              rax, qword ptr [rip + .Lx212_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n57_lit_string_α
.Lx212_0:
                        .quad            .Lx212_0_s
.Lx212_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2440], rax
                        .section         .rodata
.Lrkfn214:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn214]
                        lea              rsi, [rbp + 2432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
                        cmp              eax, 99
                                                                                        je    n52_op11_α
                                                                                        jmp   n51_lit_string_α
n56_op11_β:
                                                                                        jmp   n52_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n58_lit_string_α
.Lx215_0:
                        .quad            .Lx215_0_s
.Lx215_0_s:
                        .string          "domain_error"
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n59_var_ref_α
.Lx216_0:
                        .quad            .Lx216_0_s
.Lx216_0_s:
                        .string          "stream_or_alias"
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n60_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n60_op11_α:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1832], rax
                        lea              rdi, [rbp + 1792]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n61_var_ref_α
n60_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3808]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n62_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n62_op11_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1944], rax
                        lea              rdi, [rbp + 1904]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n63_op11_α
n62_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n63_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx223_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx223_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx223_101
.Lx223_100:
                        lea              rdi, [rbp + 2000]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx223_101:
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n64_lit_integer_α
n63_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_integer_α:
                        mov              qword ptr [rbp + 2144], 6
                        mov              rax, qword ptr [rip + .Lx224_0]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n65_op11_α
.Lx224_0:
                        .quad            123
#-----------------------------------------------------------------------------------------------------------------------
n65_op11_α:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2136], rax
                        .section         .rodata
.Lrkfn226:              .string          "$set_output"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn226]
                        lea              rsi, [rbp + 2128]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    n67_op11_α
                                                                                        jmp   n66_lit_string_α
n65_op11_β:
                                                                                        jmp   n67_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              rax, qword ptr [rip + .Lx227_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n68_op11_α
.Lx227_0:
                        .quad            .Lx227_0_s
.Lx227_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n67_op11_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 2056], rax
                        .section         .rodata
.Lrkfn229:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn229]
                        lea              rsi, [rbp + 2032]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n69_lit_string_α
n67_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n68_op11_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1720], rax
                        .section         .rodata
.Lrkfn231:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn231]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n70_lit_string_α
n68_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 2096], 1
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n71_op11_α
.Lx232_0:
                        .quad            .Lx232_0_s
.Lx232_0_s:
                        .string          "setout_domain"
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n72_lit_string_α
.Lx233_0:
                        .quad            .Lx233_0_s
.Lx233_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n71_op11_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2088], rax
                        .section         .rodata
.Lrkfn235:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn235]
                        lea              rsi, [rbp + 2080]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              eax, 99
                                                                                        je    n67_op11_α
                                                                                        jmp   n66_lit_string_α
n71_op11_β:
                                                                                        jmp   n67_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n73_lit_string_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "permission_error"
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n74_lit_string_α
.Lx237_0:
                        .quad            .Lx237_0_s
.Lx237_0_s:
                        .string          "output"
#-----------------------------------------------------------------------------------------------------------------------
n74_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              rax, qword ptr [rip + .Lx238_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n75_var_ref_α
.Lx238_0:
                        .quad            .Lx238_0_s
.Lx238_0_s:
                        .string          "stream"
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3760]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n76_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n76_op11_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1312]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n77_var_ref_α
n76_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n78_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n78_op11_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1304]
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
                                                                                        je    n4_op11_α
                                                                                        jmp   n79_op11_α
n78_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n79_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx245_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx245_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx245_101
.Lx245_100:
                        lea              rdi, [rbp + 1536]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx245_101:
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n80_lit_string_α
n79_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_string_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              rax, qword ptr [rip + .Lx246_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n81_op11_α
.Lx246_0:
                        .quad            .Lx246_0_s
.Lx246_0_s:
                        .string          "user_input"
#-----------------------------------------------------------------------------------------------------------------------
n81_op11_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1672], rax
                        .section         .rodata
.Lrkfn248:              .string          "$set_output"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn248]
                        lea              rsi, [rbp + 1664]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    n83_op11_α
                                                                                        jmp   n82_lit_string_α
n81_op11_β:
                                                                                        jmp   n83_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx249_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n84_op11_α
.Lx249_0:
                        .quad            .Lx249_0_s
.Lx249_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n83_op11_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1592], rax
                        .section         .rodata
.Lrkfn251:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn251]
                        lea              rsi, [rbp + 1568]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n85_lit_string_α
n83_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n84_op11_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn253:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn253]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n86_lit_string_α
n84_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              rax, qword ptr [rip + .Lx254_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n87_op11_α
.Lx254_0:
                        .quad            .Lx254_0_s
.Lx254_0_s:
                        .string          "setout_perm"
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n88_lit_string_α
.Lx255_0:
                        .quad            .Lx255_0_s
.Lx255_0_s:
                        .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n87_op11_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1624], rax
                        .section         .rodata
.Lrkfn257:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn257]
                        lea              rsi, [rbp + 1616]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n83_op11_α
                                                                                        jmp   n82_lit_string_α
n87_op11_β:
                                                                                        jmp   n83_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n89_lit_string_α
.Lx258_0:
                        .quad            .Lx258_0_s
.Lx258_0_s:
                        .string          "permission_error"
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n90_lit_string_α
.Lx259_0:
                        .quad            .Lx259_0_s
.Lx259_0_s:
                        .string          "input"
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx260_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n91_var_ref_α
.Lx260_0:
                        .quad            .Lx260_0_s
.Lx260_0_s:
                        .string          "stream"
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3728]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n92_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n92_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n93_var_ref_α
n92_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3744]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n94_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n94_op11_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n95_op11_α
n94_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n95_op11_α:
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
                        lea              rdi, [rbp + 1040]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx267_101:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n96_lit_string_α
n95_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx268_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n97_op11_α
.Lx268_0:
                        .quad            .Lx268_0_s
.Lx268_0_s:
                        .string          "user_output"
#-----------------------------------------------------------------------------------------------------------------------
n97_op11_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lrkfn270:              .string          "$set_input"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn270]
                        lea              rsi, [rbp + 1168]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n98_lit_string_α
n97_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx271_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n100_op11_α
.Lx271_0:
                        .quad            .Lx271_0_s
.Lx271_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n99_op11_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn273:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn273]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n101_lit_string_α
n99_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n100_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lrkfn275:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn275]
                        lea              rsi, [rbp + 720]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n102_lit_string_α
n100_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx276_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n103_op11_α
.Lx276_0:
                        .quad            .Lx276_0_s
.Lx276_0_s:
                        .string          "setin_perm"
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx277_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n104_lit_string_α
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "user_error"
#-----------------------------------------------------------------------------------------------------------------------
n103_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1128], rax
                        .section         .rodata
.Lrkfn279:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn279]
                        lea              rsi, [rbp + 1120]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n99_op11_α
                                                                                        jmp   n98_lit_string_α
n103_op11_β:
                                                                                        jmp   n99_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:
                        mov              qword ptr [rbp + 688], 1
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n105_op11_α
.Lx280_0:
                        .quad            .Lx280_0_s
.Lx280_0_s:
                        .string          "this_goes_to_stderr"
#-----------------------------------------------------------------------------------------------------------------------
n105_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        .section         .rodata
.Lrkfn282:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn282]
                        lea              rsi, [rbp + 640]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n106_lit_string_α
n105_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx283_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n107_op11_α
.Lx283_0:
                        .quad            .Lx283_0_s
.Lx283_0_s:
                        .string          "user_error"
#-----------------------------------------------------------------------------------------------------------------------
n107_op11_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 600], rax
                        .section         .rodata
.Lrkfn285:              .string          "$nl1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn285]
                        lea              rsi, [rbp + 592]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n108_lit_string_α
n107_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n108_lit_string_α:
                        mov              qword ptr [rbp + 560], 1
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n109_op11_α
.Lx286_0:
                        .quad            .Lx286_0_s
.Lx286_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n109_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn288:              .string          "$flush_output"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn288]
                        lea              rsi, [rbp + 544]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n111_lit_string_α
                                                                                        jmp   n110_lit_string_α
n109_op11_β:
                                                                                        jmp   n111_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              rax, qword ptr [rip + .Lx289_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n112_op11_α
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "flushed0"
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx290_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n113_op11_α
.Lx290_0:
                        .quad            .Lx290_0_s
.Lx290_0_s:
                        .string          "flush0_fail"
#-----------------------------------------------------------------------------------------------------------------------
n112_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn292:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn292]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n114_lit_string_α
n112_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n113_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn294:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn294]
                        lea              rsi, [rbp + 496]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n114_lit_string_α
n113_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n115_op11_α
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n115_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn297:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn297]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n116_lit_string_α
n115_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n116_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n117_op11_α
.Lx298_0:
                        .quad            .Lx298_0_s
.Lx298_0_s:
                        .string          "user_output"
#-----------------------------------------------------------------------------------------------------------------------
n117_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn300:              .string          "$flush_output1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn300]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n119_lit_string_α
                                                                                        jmp   n118_lit_string_α
n117_op11_β:
                                                                                        jmp   n119_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx301_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n120_op11_α
.Lx301_0:
                        .quad            .Lx301_0_s
.Lx301_0_s:
                        .string          "flushed1"
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:
                        mov              qword ptr [rbp + 320], 1
                        mov              rax, qword ptr [rip + .Lx302_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n121_op11_α
.Lx302_0:
                        .quad            .Lx302_0_s
.Lx302_0_s:
                        .string          "flush1_fail"
#-----------------------------------------------------------------------------------------------------------------------
n120_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lrkfn304:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn304]
                        lea              rsi, [rbp + 256]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n122_lit_string_α
n120_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n121_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn306:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn306]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n122_lit_string_α
n121_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n123_op11_α
.Lx307_0:
                        .quad            .Lx307_0_s
.Lx307_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n123_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                        .section         .rodata
.Lrkfn309:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn309]
                        lea              rsi, [rbp + 208]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n124_lit_string_α
n123_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n125_op11_α
.Lx310_0:
                        .quad            .Lx310_0_s
.Lx310_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n125_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn312:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn312]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n126_lit_string_α
n125_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n127_op11_α
.Lx313_0:
                        .quad            .Lx313_0_s
.Lx313_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n127_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn315:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn315]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n4_op11_α
                                                                                        jmp   n128_move_label_α
n127_op11_β:
                                                                                        jmp   n4_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n128_move_label_α:
                        lea              rax, [rip + n4_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n129_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n129_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n129_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 3952]
                        add              rsp, 3960
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 3952]
                        add              rsp, 3960
                        ret
                        .section         .note.GNU-stack,"",@progbits
