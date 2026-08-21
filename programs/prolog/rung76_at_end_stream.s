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
                        sub              rsp, 3856
                        mov              qword ptr [rsp + 3832], rcx
                        mov              qword ptr [rsp + 3840], rdx
                        mov              qword ptr [rsp + 3848], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 3824
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 12
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx134_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx134_101
.Lx134_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx134_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx134_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx134_101
.Lx134_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx134_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              qword ptr [rsp + 3568], 2            # result
                        mov              dword ptr [rsp + 3572], 17
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rsp + 3576], rax;         jmp   n2_lit_string_α
.Lx135_0:               .quad            .Lx135_0_s
.Lx135_0_s:             .string          "/tmp/rung76_s.txt"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              qword ptr [rsp + 3584], 2            # result
                        mov              dword ptr [rsp + 3588], 5
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rsp + 3592], rax;         jmp   n3_var_ref_α
.Lx136_0:               .quad            .Lx136_0_s
.Lx136_0_s:             .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 3792]
                        mov              qword ptr [rsp + 3600], rax
                        mov              qword ptr [rsp + 3608], rdx;         jmp   n4_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3600]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3608]
                        mov              qword ptr [rsp + 3560], rax
                        mov              rax, qword ptr [rsp + 3584]
                        mov              qword ptr [rsp + 3536], rax
                        mov              rax, qword ptr [rsp + 3592]
                        mov              qword ptr [rsp + 3544], rax
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 3520], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 3528], rax
                        .section         .rodata
.Lrkfn140:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn140]
                        lea              rsi, [rsp + 3520]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3504], rax
                        mov              qword ptr [rsp + 3512], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_var_ref_α
n4_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 3792]
                        mov              qword ptr [rsp + 3472], rax
                        mov              qword ptr [rsp + 3480], rdx;         jmp   n6_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              qword ptr [rsp + 3488], 2            # result
                        mov              dword ptr [rsp + 3492], 1
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rsp + 3496], rax;         jmp   n7_call_builtin_prolog_α
.Lx143_0:               .quad            .Lx143_0_s
.Lx143_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3488]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3496]
                        mov              qword ptr [rsp + 3464], rax
                        mov              rax, qword ptr [rsp + 3472]
                        mov              qword ptr [rsp + 3440], rax
                        mov              rax, qword ptr [rsp + 3480]
                        mov              qword ptr [rsp + 3448], rax
                        .section         .rodata
.Lrkfn145:              .string          "$put_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn145]
                        lea              rsi, [rsp + 3440]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3424], rax
                        mov              qword ptr [rsp + 3432], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n8_var_ref_α
n7_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 3792]
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx;         jmp   n9_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              qword ptr [rsp + 3408], 2            # result
                        mov              dword ptr [rsp + 3412], 1
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 3416], rax;         jmp   n10_call_builtin_prolog_α
.Lx148_0:               .quad            .Lx148_0_s
.Lx148_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3384], rax
                        mov              rax, qword ptr [rsp + 3392]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 3400]
                        mov              qword ptr [rsp + 3368], rax
                        .section         .rodata
.Lrkfn150:              .string          "$put_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn150]
                        lea              rsi, [rsp + 3360]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n11_var_ref_α
n10_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3792]
                        mov              qword ptr [rsp + 3312], rax
                        mov              qword ptr [rsp + 3320], rdx;         jmp   n12_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              qword ptr [rsp + 3328], 2            # result
                        mov              dword ptr [rsp + 3332], 1
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n13_call_builtin_prolog_α
.Lx153_0:               .quad            .Lx153_0_s
.Lx153_0_s:             .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 3296], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 3304], rax
                        mov              rax, qword ptr [rsp + 3312]
                        mov              qword ptr [rsp + 3280], rax
                        mov              rax, qword ptr [rsp + 3320]
                        mov              qword ptr [rsp + 3288], rax
                        .section         .rodata
.Lrkfn155:              .string          "$put_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn155]
                        lea              rsi, [rsp + 3280]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n14_var_ref_α
n13_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3792]
                        mov              qword ptr [rsp + 3248], rax
                        mov              qword ptr [rsp + 3256], rdx;         jmp   n15_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3248]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3256]
                        mov              qword ptr [rsp + 3240], rax
                        .section         .rodata
.Lrkfn159:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]
                        lea              rsi, [rsp + 3232]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n16_lit_string_α
n15_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              qword ptr [rsp + 3168], 2            # result
                        mov              dword ptr [rsp + 3172], 17
                        mov              rax, qword ptr [rip + .Lx160_0]
                        mov              qword ptr [rsp + 3176], rax;         jmp   n17_lit_string_α
.Lx160_0:               .quad            .Lx160_0_s
.Lx160_0_s:             .string          "/tmp/rung76_s.txt"
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              qword ptr [rsp + 3184], 2            # result
                        mov              dword ptr [rsp + 3188], 4
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n18_var_ref_α
.Lx161_0:               .quad            .Lx161_0_s
.Lx161_0_s:             .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3712]
                        mov              qword ptr [rsp + 3200], rax
                        mov              qword ptr [rsp + 3208], rdx;         jmp   n19_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 3152], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 3160], rax
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3144], rax
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3128], rax
                        .section         .rodata
.Lrkfn165:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn165]
                        lea              rsi, [rsp + 3120]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n20_var_ref_α
n19_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3712]
                        mov              qword ptr [rsp + 3088], rax
                        mov              qword ptr [rsp + 3096], rdx;         jmp   n21_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3080], rax
                        .section         .rodata
.Lrkfn169:              .string          "$at_end_of_stream"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn169]
                        lea              rsi, [rsp + 3072]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                        cmp              eax, 104;                            je    n24_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_lit_string_α
n21_call_builtin_prolog_β:
                                                                              jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              qword ptr [rsp + 2992], 2            # result
                        mov              dword ptr [rsp + 2996], 8
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n23_call_builtin_prolog_α
.Lx170_0:               .quad            .Lx170_0_s
.Lx170_0_s:             .string          "at0_true"
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 2976], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 2984], rax
                        .section         .rodata
.Lrkfn172:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn172]
                        lea              rsi, [rsp + 2976]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2960], rax
                        mov              qword ptr [rsp + 2968], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n26_lit_string_α
n23_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       mov              qword ptr [rsp + 3040], 2            # result
                        mov              dword ptr [rsp + 3044], 9
                        mov              rax, qword ptr [rip + .Lx173_0]
                        mov              qword ptr [rsp + 3048], rax;         jmp   n25_call_builtin_prolog_α
.Lx173_0:               .quad            .Lx173_0_s
.Lx173_0_s:             .string          "at0_false"
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 3032], rax
                        .section         .rodata
.Lrkfn175:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn175]
                        lea              rsi, [rsp + 3024]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n26_lit_string_α
n25_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       mov              qword ptr [rsp + 2944], 2            # result
                        mov              dword ptr [rsp + 2948], 0
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 2952], rax;         jmp   n27_call_builtin_prolog_α
.Lx176_0:               .quad            .Lx176_0_s
.Lx176_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2944]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2952]
                        mov              qword ptr [rsp + 2936], rax
                        .section         .rodata
.Lrkfn178:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn178]
                        lea              rsi, [rsp + 2928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2912], rax
                        mov              qword ptr [rsp + 2920], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_var_ref_α
n27_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3712]
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx;         jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3744]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx;         jmp   n30_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 2872], rax
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 2856], rax
                        .section         .rodata
.Lrkfn184:              .string          "$get_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn184]
                        lea              rsi, [rsp + 2848]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_var_ref_α
n30_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3712]
                        mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx;         jmp   n32_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3760]
                        mov              qword ptr [rsp + 2816], rax
                        mov              qword ptr [rsp + 2824], rdx;         jmp   n33_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2816]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 2824]
                        mov              qword ptr [rsp + 2792], rax
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2768], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2776], rax
                        .section         .rodata
.Lrkfn190:              .string          "$get_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn190]
                        lea              rsi, [rsp + 2768]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2752], rax
                        mov              qword ptr [rsp + 2760], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n34_var_ref_α
n33_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3712]
                        mov              qword ptr [rsp + 2720], rax
                        mov              qword ptr [rsp + 2728], rdx;         jmp   n35_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3776]
                        mov              qword ptr [rsp + 2736], rax
                        mov              qword ptr [rsp + 2744], rdx;         jmp   n36_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2712], rax
                        mov              rax, qword ptr [rsp + 2720]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2728]
                        mov              qword ptr [rsp + 2696], rax
                        .section         .rodata
.Lrkfn196:              .string          "$get_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn196]
                        lea              rsi, [rsp + 2688]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n37_lit_string_α
n36_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              qword ptr [rsp + 2656], 2            # result
                        mov              dword ptr [rsp + 2660], 4
                        mov              rax, qword ptr [rip + .Lx197_0]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n38_var_ref_α
.Lx197_0:               .quad            .Lx197_0_s
.Lx197_0_s:             .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3744]
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx;         jmp   n39_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3760]
                        mov              qword ptr [rsp + 2528], rax
                        mov              qword ptr [rsp + 2536], rdx;         jmp   n40_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3776]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx;         jmp   n41_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2632], rax
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2616], rax
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2600], rax
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2584], rax
                        lea              rdi, [rsp + 2576]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n42_call_builtin_prolog_α
n41_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2504], rax
                        .section         .rodata
.Lrkfn206:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn206]
                        lea              rsi, [rsp + 2496]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2480], rax
                        mov              qword ptr [rsp + 2488], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n43_lit_string_α
n42_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       mov              qword ptr [rsp + 2464], 2            # result
                        mov              dword ptr [rsp + 2468], 0
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rsp + 2472], rax;         jmp   n44_call_builtin_prolog_α
.Lx207_0:               .quad            .Lx207_0_s
.Lx207_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2464]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2472]
                        mov              qword ptr [rsp + 2456], rax
                        .section         .rodata
.Lrkfn209:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rsp + 2448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n45_var_ref_α
n44_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3712]
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx;         jmp   n46_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2408], rax
                        .section         .rodata
.Lrkfn213:              .string          "$at_end_of_stream"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn213]
                        lea              rsi, [rsp + 2400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2384], rax
                        mov              qword ptr [rsp + 2392], rdx
                        cmp              eax, 104;                            je    n49_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n47_lit_string_α
n46_call_builtin_prolog_β:
                                                                              jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       mov              qword ptr [rsp + 2320], 2            # result
                        mov              dword ptr [rsp + 2324], 10
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n48_call_builtin_prolog_α
.Lx214_0:               .quad            .Lx214_0_s
.Lx214_0_s:             .string          "ateof_true"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2304], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2312], rax
                        .section         .rodata
.Lrkfn216:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn216]
                        lea              rsi, [rsp + 2304]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2288], rax
                        mov              qword ptr [rsp + 2296], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n51_lit_string_α
n48_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              qword ptr [rsp + 2368], 2            # result
                        mov              dword ptr [rsp + 2372], 11
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rsp + 2376], rax;         jmp   n50_call_builtin_prolog_α
.Lx217_0:               .quad            .Lx217_0_s
.Lx217_0_s:             .string          "ateof_false"
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2368]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2376]
                        mov              qword ptr [rsp + 2360], rax
                        .section         .rodata
.Lrkfn219:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn219]
                        lea              rsi, [rsp + 2352]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n51_lit_string_α
n50_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              qword ptr [rsp + 2272], 2            # result
                        mov              dword ptr [rsp + 2276], 0
                        mov              rax, qword ptr [rip + .Lx220_0]
                        mov              qword ptr [rsp + 2280], rax;         jmp   n52_call_builtin_prolog_α
.Lx220_0:               .quad            .Lx220_0_s
.Lx220_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2272]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2280]
                        mov              qword ptr [rsp + 2264], rax
                        .section         .rodata
.Lrkfn222:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn222]
                        lea              rsi, [rsp + 2256]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n53_var_ref_α
n52_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3712]
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx;         jmp   n54_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3728]
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx;         jmp   n55_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2192], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2200], rax
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2184], rax
                        .section         .rodata
.Lrkfn228:              .string          "$get_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn228]
                        lea              rsi, [rsp + 2176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n56_lit_string_α
n55_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:       mov              qword ptr [rsp + 2144], 2            # result
                        mov              dword ptr [rsp + 2148], 4
                        mov              rax, qword ptr [rip + .Lx229_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n57_var_ref_α
.Lx229_0:               .quad            .Lx229_0_s
.Lx229_0_s:             .string          "past"
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3728]
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx;         jmp   n58_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2120], rax
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2096], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2104], rax
                        lea              rdi, [rsp + 2096]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 2080], rax
                        mov              qword ptr [rsp + 2088], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n59_call_builtin_prolog_α
n58_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2056], rax
                        .section         .rodata
.Lrkfn234:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn234]
                        lea              rsi, [rsp + 2048]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n60_lit_string_α
n59_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              qword ptr [rsp + 2016], 2            # result
                        mov              dword ptr [rsp + 2020], 0
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 2024], rax;         jmp   n61_call_builtin_prolog_α
.Lx235_0:               .quad            .Lx235_0_s
.Lx235_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 2008], rax
                        .section         .rodata
.Lrkfn237:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn237]
                        lea              rsi, [rsp + 2000]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n62_var_ref_α
n61_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3712]
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx;         jmp   n63_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1952], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1960], rax
                        .section         .rodata
.Lrkfn241:              .string          "$at_end_of_stream"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn241]
                        lea              rsi, [rsp + 1952]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx
                        cmp              eax, 104;                            je    n66_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n64_lit_string_α
n63_call_builtin_prolog_β:
                                                                              jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       mov              qword ptr [rsp + 1872], 2            # result
                        mov              dword ptr [rsp + 1876], 12
                        mov              rax, qword ptr [rip + .Lx242_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n65_call_builtin_prolog_α
.Lx242_0:               .quad            .Lx242_0_s
.Lx242_0_s:             .string          "pasteof_true"
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1864], rax
                        .section         .rodata
.Lrkfn244:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn244]
                        lea              rsi, [rsp + 1856]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n68_lit_string_α
n65_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              qword ptr [rsp + 1920], 2            # result
                        mov              dword ptr [rsp + 1924], 13
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 1928], rax;         jmp   n67_call_builtin_prolog_α
.Lx245_0:               .quad            .Lx245_0_s
.Lx245_0_s:             .string          "pasteof_false"
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1920]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1928]
                        mov              qword ptr [rsp + 1912], rax
                        .section         .rodata
.Lrkfn247:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn247]
                        lea              rsi, [rsp + 1904]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n68_lit_string_α
n67_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       mov              qword ptr [rsp + 1824], 2            # result
                        mov              dword ptr [rsp + 1828], 0
                        mov              rax, qword ptr [rip + .Lx248_0]
                        mov              qword ptr [rsp + 1832], rax;         jmp   n69_call_builtin_prolog_α
.Lx248_0:               .quad            .Lx248_0_s
.Lx248_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1816], rax
                        .section         .rodata
.Lrkfn250:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn250]
                        lea              rsi, [rsp + 1808]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n70_var_ref_α
n69_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3712]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx;         jmp   n71_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n71_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1768], rax
                        .section         .rodata
.Lrkfn254:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn254]
                        lea              rsi, [rsp + 1760]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n72_lit_string_α
n71_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:       mov              qword ptr [rsp + 1696], 2            # result
                        mov              dword ptr [rsp + 1700], 17
                        mov              rax, qword ptr [rip + .Lx255_0]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n73_lit_string_α
.Lx255_0:               .quad            .Lx255_0_s
.Lx255_0_s:             .string          "/tmp/rung76_s.txt"
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       mov              qword ptr [rsp + 1712], 2            # result
                        mov              dword ptr [rsp + 1716], 4
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n74_var_ref_α
.Lx256_0:               .quad            .Lx256_0_s
.Lx256_0_s:             .string          "read"
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3696]
                        mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx;         jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1656], rax
                        .section         .rodata
.Lrkfn260:              .string          "$open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]
                        lea              rsi, [rsp + 1648]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n76_var_ref_α
n75_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3696]
                        mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx;         jmp   n77_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1608], rax
                        .section         .rodata
.Lrkfn264:              .string          "$set_input"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn264]
                        lea              rsi, [rsp + 1600]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n78_call_builtin_prolog_α
n77_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n78_call_builtin_prolog_α:
                        .section         .rodata
.Lrkfn266:              .string          "$at_end_of_stream"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn266]
                        lea              rsi, [rsp + 1584]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1568], rax
                        mov              qword ptr [rsp + 1576], rdx
                        cmp              eax, 104;                            je    n81_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n79_lit_string_α
n78_call_builtin_prolog_β:
                                                                              jmp   n81_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              qword ptr [rsp + 1504], 2            # result
                        mov              dword ptr [rsp + 1508], 8
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n80_call_builtin_prolog_α
.Lx267_0:               .quad            .Lx267_0_s
.Lx267_0_s:             .string          "cur_true"
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1496], rax
                        .section         .rodata
.Lrkfn269:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn269]
                        lea              rsi, [rsp + 1488]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n83_lit_string_α
n80_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_string_α:       mov              qword ptr [rsp + 1552], 2            # result
                        mov              dword ptr [rsp + 1556], 9
                        mov              rax, qword ptr [rip + .Lx270_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n82_call_builtin_prolog_α
.Lx270_0:               .quad            .Lx270_0_s
.Lx270_0_s:             .string          "cur_false"
#-----------------------------------------------------------------------------------------------------------------------
n82_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1544], rax
                        .section         .rodata
.Lrkfn272:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn272]
                        lea              rsi, [rsp + 1536]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n83_lit_string_α
n82_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n83_lit_string_α:       mov              qword ptr [rsp + 1456], 2            # result
                        mov              dword ptr [rsp + 1460], 0
                        mov              rax, qword ptr [rip + .Lx273_0]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n84_call_builtin_prolog_α
.Lx273_0:               .quad            .Lx273_0_s
.Lx273_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1448], rax
                        .section         .rodata
.Lrkfn275:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn275]
                        lea              rsi, [rsp + 1440]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n85_var_ref_α
n84_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3696]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n86_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n86_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1400], rax
                        .section         .rodata
.Lrkfn279:              .string          "$close"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn279]
                        lea              rsi, [rsp + 1392]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n87_lit_string_α
n86_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 5
                        mov              rax, qword ptr [rip + .Lx280_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n88_lit_string_α
.Lx280_0:               .quad            .Lx280_0_s
.Lx280_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 15
                        mov              rax, qword ptr [rip + .Lx281_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n89_var_ref_α
.Lx281_0:               .quad            .Lx281_0_s
.Lx281_0_s:             .string          "existence_error"
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3648]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n90_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3664]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n91_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 888], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n92_var_ref_α
n91_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3680]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx;          jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 968], rax
                        lea              rdi, [rsp + 960]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx
                        cmp              eax, 104;                            je    n105_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n94_call_builtin_prolog_α
n93_call_builtin_prolog_β:
                                                                              jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx290_102
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048];         jmp   .Lx290_101
.Lx290_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx290_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx290_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx290_101
.Lx290_100:             lea              rdi, [rsp + 1056]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx290_101:             mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              eax, 104;                            je    n105_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n95_lit_string_α
n94_call_builtin_prolog_β:
                                                                              jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 6
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n96_call_builtin_prolog_α
.Lx291_0:               .quad            .Lx291_0_s
.Lx291_0_s:             .string          "nosuch"
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1352], rax
                        .section         .rodata
.Lrkfn293:              .string          "$at_end_of_stream"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn293]
                        lea              rsi, [rsp + 1344]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              eax, 104;                            je    n97_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n109_lit_string_α
n96_call_builtin_prolog_β:
                                                                              jmp   n97_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1096], rax
                        .section         .rodata
.Lrkfn295:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn295]
                        lea              rsi, [rsp + 1088]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx
                        cmp              eax, 104;                            je    n105_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n98_lit_string_α
n97_call_builtin_prolog_β:
                                                                              jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 5
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n99_var_ref_α
.Lx296_0:               .quad            .Lx296_0_s
.Lx296_0_s:             .string          "exist"
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 3648]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n100_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3664]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx;         jmp   n101_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1288], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1256], rax
                        lea              rdi, [rsp + 1248]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx
                        cmp              eax, 104;                            je    n97_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n102_call_builtin_prolog_α
n101_call_builtin_prolog_β:
                                                                              jmp   n97_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1192], rax
                        .section         .rodata
.Lrkfn303:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn303]
                        lea              rsi, [rsp + 1184]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              eax, 104;                            je    n97_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n103_lit_string_α
n102_call_builtin_prolog_β:
                                                                              jmp   n97_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:      mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 0
                        mov              rax, qword ptr [rip + .Lx304_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n104_call_builtin_prolog_α
.Lx304_0:               .quad            .Lx304_0_s
.Lx304_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1144], rax
                        .section         .rodata
.Lrkfn306:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn306]
                        lea              rsi, [rsp + 1136]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              eax, 104;                            je    n97_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n109_lit_string_α
n104_call_builtin_prolog_β:
                                                                              jmp   n97_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 14
                        mov              rax, qword ptr [rip + .Lx307_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n106_call_builtin_prolog_α
.Lx307_0:               .quad            .Lx307_0_s
.Lx307_0_s:             .string          "no_exist_check"
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 776], rax
                        .section         .rodata
.Lrkfn309:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn309]
                        lea              rsi, [rsp + 768]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n107_lit_string_α
n106_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 0
                        mov              rax, qword ptr [rip + .Lx310_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n108_call_builtin_prolog_α
.Lx310_0:               .quad            .Lx310_0_s
.Lx310_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 728], rax
                        .section         .rodata
.Lrkfn312:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn312]
                        lea              rsi, [rsp + 720]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n109_lit_string_α
n108_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:      mov              qword ptr [rsp + 432], 2             # result
                        mov              dword ptr [rsp + 436], 5
                        mov              rax, qword ptr [rip + .Lx313_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n110_lit_string_α
.Lx313_0:               .quad            .Lx313_0_s
.Lx313_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_string_α:      mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 19
                        mov              rax, qword ptr [rip + .Lx314_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n111_var_ref_α
.Lx314_0:               .quad            .Lx314_0_s
.Lx314_0_s:             .string          "instantiation_error"
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3616]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n112_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 376], rax
                        lea              rdi, [rsp + 368]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              eax, 104;                            je    n122_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n113_call_builtin_prolog_α
n112_call_builtin_prolog_β:
                                                                              jmp   n122_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx318_102
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456];          jmp   .Lx318_101
.Lx318_102:             lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx318_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx318_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx318_101
.Lx318_100:             lea              rdi, [rsp + 464]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx318_101:             mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              eax, 104;                            je    n122_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n114_lit_string_α
n113_call_builtin_prolog_β:
                                                                              jmp   n122_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_string_α:      mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 11
                        mov              rax, qword ptr [rip + .Lx319_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n115_var_ref_α
.Lx319_0:               .quad            .Lx319_0_s
.Lx319_0_s:             .string          "user_output"
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rsp + 3632]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n116_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn323:              .string          "$put_char"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn323]
                        lea              rsi, [rsp + 640]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              eax, 104;                            je    n117_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n126_lit_string_α
n116_call_builtin_prolog_β:
                                                                              jmp   n117_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n117_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn325:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn325]
                        lea              rsi, [rsp + 496]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              eax, 104;                            je    n122_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n118_lit_string_α
n117_call_builtin_prolog_β:
                                                                              jmp   n122_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_string_α:      mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 20
                        mov              rax, qword ptr [rip + .Lx326_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n119_call_builtin_prolog_α
.Lx326_0:               .quad            .Lx326_0_s
.Lx326_0_s:             .string          "instantiation_caught"
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn328:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn328]
                        lea              rsi, [rsp + 592]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              eax, 104;                            je    n117_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n120_lit_string_α
n119_call_builtin_prolog_β:
                                                                              jmp   n117_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n120_lit_string_α:      mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 0
                        mov              rax, qword ptr [rip + .Lx329_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n121_call_builtin_prolog_α
.Lx329_0:               .quad            .Lx329_0_s
.Lx329_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn331:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn331]
                        lea              rsi, [rsp + 544]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              eax, 104;                            je    n117_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n126_lit_string_α
n121_call_builtin_prolog_β:
                                                                              jmp   n117_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n122_lit_string_α:      mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 13
                        mov              rax, qword ptr [rip + .Lx332_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n123_call_builtin_prolog_α
.Lx332_0:               .quad            .Lx332_0_s
.Lx332_0_s:             .string          "no_inst_check"
#-----------------------------------------------------------------------------------------------------------------------
n123_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 296], rax
                        .section         .rodata
.Lrkfn334:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn334]
                        lea              rsi, [rsp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n124_lit_string_α
n123_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:      mov              qword ptr [rsp + 256], 2             # result
                        mov              dword ptr [rsp + 260], 0
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rsp + 264], rax;          jmp   n125_call_builtin_prolog_α
.Lx335_0:               .quad            .Lx335_0_s
.Lx335_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n125_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 248], rax
                        .section         .rodata
.Lrkfn337:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn337]
                        lea              rsi, [rsp + 240]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n126_lit_string_α
n125_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      mov              qword ptr [rsp + 208], 2             # result
                        mov              dword ptr [rsp + 212], 4
                        mov              rax, qword ptr [rip + .Lx338_0]
                        mov              qword ptr [rsp + 216], rax;          jmp   n127_call_builtin_prolog_α
.Lx338_0:               .quad            .Lx338_0_s
.Lx338_0_s:             .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n127_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 200], rax
                        .section         .rodata
.Lrkfn340:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn340]
                        lea              rsi, [rsp + 192]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n128_lit_string_α
n127_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_string_α:      mov              qword ptr [rsp + 160], 2             # result
                        mov              dword ptr [rsp + 164], 0
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rsp + 168], rax;          jmp   n129_call_builtin_prolog_α
.Lx341_0:               .quad            .Lx341_0_s
.Lx341_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 152], rax
                        .section         .rodata
.Lrkfn343:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn343]
                        lea              rsi, [rsp + 144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n130_call_proc_staged_α
n129_call_builtin_prolog_β:
                                                                              jmp   n133_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx345_0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_open@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    .Lx345_1
                        mov              rdi, qword ptr [rip + .Lx345_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        lea              rcx, [rip + .Lx345_4]                # s111 floater pair (LEGACY flat-glue arm): the THIRD non-TINY arm, the one GVA-off actually takes (MONITOR_BIN forces n_gva_m3=0 so the SCC gate and the role-4 TINY shim both refuse and the site falls HERE, to rt_proc_call_open + flat rcx/rdx wires).  s110 patched only the two open_slim tails, so this arm still pushed NOTHING and :(RETURN) popped enclosing-frame bytes.  Push omega then gamma = [rsp+0]=gamma [rsp+8]=omega; the fnrbp2 floater consumes 16 so L(3)/L(4) arrive at today's depth.  SCRIP_SLIM_PAIR=0 restores prior bytes.
                        push             rcx
                        lea              rcx, [rip + .Lx345_3]
                        push             rcx
                        lea              rcx, [rip + .Lx345_3]
                        lea              rdx, [rip + .Lx345_4];               jmp   rax
.Lx345_3:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx345_2
.Lx345_4:               mov              qword ptr [rip + rtccb+40], r8
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   .Lx345_2
.Lx345_1:               call             rt_faildescr@PLT
.Lx345_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx345_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104]
.Lx345_29:              mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              eax, 104;                            je    n133_call_builtin_prolog_α
                                                                              jmp   n131_move_label_α
n130_call_proc_staged_β:
                                                                              jmp   n133_call_builtin_prolog_α
.Lx345_0:               .quad            .Lx345_0_s
.Lx345_0_s:             .string          "halt/0"
#-----------------------------------------------------------------------------------------------------------------------
n131_move_label_α:      lea              rax, [rip + n130_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n132_disjunction_α:     mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n132_disjunction_β:                                                           jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n133_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              eax, 104;                            je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_ω
n133_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n132_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 3832]
                        add              rsp, 3856;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 3840]
                        add              rsp, 3856;                           jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
