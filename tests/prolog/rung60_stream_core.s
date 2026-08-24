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
                        sub              rsp, 4000
                        mov              qword ptr [rsp + 3976], rcx
                        mov              qword ptr [rsp + 3984], rdx
                        mov              qword ptr [rsp + 3992], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 3968
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 14
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
                        test             rax, rax;                            je    .Lx130_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx130_101
.Lx130_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx130_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx130_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx130_101
.Lx130_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx130_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3936]
                        mov              qword ptr [rsp + 3712], rax
                        mov              qword ptr [rsp + 3720], rdx;         jmp   n2_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n2_call_builtin_prolog_α:
                        mov              r11, 3
                        mov              rax, qword ptr [rsp + 3712]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 3720]
                        mov              qword ptr [rsp + 3704], rax
                        .section         .rodata
.Lrkfn134:              .string          "$current_output"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn134]
                        lea              rsi, [rsp + 3696]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 983040
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n3_var_α
n2_call_builtin_prolog_β:
                        mov              r11, 3;                              jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:               mov              r11, 4
                        mov              rax, qword ptr [rsp + 3936]
                        mov              qword ptr [rsp + 3664], rax
                        mov              rax, qword ptr [rsp + 3944]
                        mov              qword ptr [rsp + 3672], rax;         jmp   n4_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              r11, 5
                        mov              rax, qword ptr [rsp + 3664]
                        mov              qword ptr [rsp + 3648], rax
                        mov              rax, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 3656], rax
                        .section         .rodata
.Lrkfn138:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn138]
                        lea              rsi, [rsp + 3648]
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
                        mov              qword ptr [rsp + 3632], rax
                        mov              qword ptr [rsp + 3640], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n5_lit_string_α
n4_call_builtin_prolog_β:
                        mov              r11, 5;                              jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 3616], 2            # result
                        mov              dword ptr [rsp + 3620], 0
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 3624], rax;         jmp   n6_call_builtin_prolog_α
.Lx139_0:               .quad            .Lx139_0_s
.Lx139_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              r11, 7
                        mov              rax, qword ptr [rsp + 3616]
                        mov              qword ptr [rsp + 3600], rax
                        mov              rax, qword ptr [rsp + 3624]
                        mov              qword ptr [rsp + 3608], rax
                        .section         .rodata
.Lrkfn141:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rsp + 3600]
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
                        mov              qword ptr [rsp + 3584], rax
                        mov              qword ptr [rsp + 3592], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n7_var_ref_α
n6_call_builtin_prolog_β:
                        mov              r11, 7;                              jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3920]
                        mov              qword ptr [rsp + 3568], rax
                        mov              qword ptr [rsp + 3576], rdx;         jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              r11, 9
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 3552], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 3560], rax
                        .section         .rodata
.Lrkfn145:              .string          "$current_input"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn145]
                        lea              rsi, [rsp + 3552]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 917504
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3536], rax
                        mov              qword ptr [rsp + 3544], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n9_var_α
n8_call_builtin_prolog_β:
                        mov              r11, 9;                              jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              r11, 10
                        mov              rax, qword ptr [rsp + 3920]
                        mov              qword ptr [rsp + 3520], rax
                        mov              rax, qword ptr [rsp + 3928]
                        mov              qword ptr [rsp + 3528], rax;         jmp   n10_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 3512], rax
                        .section         .rodata
.Lrkfn149:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn149]
                        lea              rsi, [rsp + 3504]
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
                        mov              qword ptr [rsp + 3488], rax
                        mov              qword ptr [rsp + 3496], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n11_lit_string_α
n10_call_builtin_prolog_β:
                        mov              r11, 11;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              r11, 12
                        mov              qword ptr [rsp + 3472], 2            # result
                        mov              dword ptr [rsp + 3476], 0
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rsp + 3480], rax;         jmp   n12_call_builtin_prolog_α
.Lx150_0:               .quad            .Lx150_0_s
.Lx150_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              r11, 13
                        mov              rax, qword ptr [rsp + 3472]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3480]
                        mov              qword ptr [rsp + 3464], rax
                        .section         .rodata
.Lrkfn152:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn152]
                        lea              rsi, [rsp + 3456]
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
                        mov              qword ptr [rsp + 3440], rax
                        mov              qword ptr [rsp + 3448], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n13_lit_string_α
n12_call_builtin_prolog_β:
                        mov              r11, 13;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rsp + 3248], 2            # result
                        mov              dword ptr [rsp + 3252], 5
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 3256], rax;         jmp   n14_lit_string_α
.Lx153_0:               .quad            .Lx153_0_s
.Lx153_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rsp + 3136], 2            # result
                        mov              dword ptr [rsp + 3140], 15
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rsp + 3144], rax;         jmp   n15_lit_string_α
.Lx154_0:               .quad            .Lx154_0_s
.Lx154_0_s:             .string          "existence_error"
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rsp + 3024], 2            # result
                        mov              dword ptr [rsp + 3028], 6
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rsp + 3032], rax;         jmp   n16_var_ref_α
.Lx155_0:               .quad            .Lx155_0_s
.Lx155_0_s:             .string          "stream"
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3888]
                        mov              qword ptr [rsp + 3040], rax
                        mov              qword ptr [rsp + 3048], rdx;         jmp   n17_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              r11, 18
                        mov              rax, qword ptr [rsp + 3040]
                        mov              qword ptr [rsp + 3104], rax
                        mov              rax, qword ptr [rsp + 3048]
                        mov              qword ptr [rsp + 3112], rax
                        mov              rax, qword ptr [rsp + 3024]
                        mov              qword ptr [rsp + 3088], rax
                        mov              rax, qword ptr [rsp + 3032]
                        mov              qword ptr [rsp + 3096], rax
                        mov              rax, qword ptr [rsp + 3136]
                        mov              qword ptr [rsp + 3072], rax
                        mov              rax, qword ptr [rsp + 3144]
                        mov              qword ptr [rsp + 3080], rax
                        lea              rdi, [rsp + 3072]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3056], rax
                        mov              qword ptr [rsp + 3064], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n18_var_ref_α
n17_call_builtin_prolog_β:
                        mov              r11, 18;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3904]
                        mov              qword ptr [rsp + 3152], rax
                        mov              qword ptr [rsp + 3160], rdx;         jmp   n19_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              r11, 20
                        mov              rax, qword ptr [rsp + 3152]
                        mov              qword ptr [rsp + 3216], rax
                        mov              rax, qword ptr [rsp + 3160]
                        mov              qword ptr [rsp + 3224], rax
                        mov              rax, qword ptr [rsp + 3056]
                        mov              qword ptr [rsp + 3200], rax
                        mov              rax, qword ptr [rsp + 3064]
                        mov              qword ptr [rsp + 3208], rax
                        mov              rax, qword ptr [rsp + 3248]
                        mov              qword ptr [rsp + 3184], rax
                        mov              rax, qword ptr [rsp + 3256]
                        mov              qword ptr [rsp + 3192], rax
                        lea              rdi, [rsp + 3184]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3168], rax
                        mov              qword ptr [rsp + 3176], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n20_call_builtin_prolog_α
n19_call_builtin_prolog_β:
                        mov              r11, 20;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              r11, 21
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx162_102
                        mov              rax, qword ptr [rsp + 3264]
                        mov              rdx, qword ptr [rsp + 3272];         jmp   .Lx162_101
.Lx162_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx162_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx162_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx162_101
.Lx162_100:             lea              rdi, [rsp + 3280]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx162_101:             mov              qword ptr [rsp + 3264], rax
                        mov              qword ptr [rsp + 3272], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n21_lit_string_α
n20_call_builtin_prolog_β:
                        mov              r11, 21;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:       mov              r11, 22
                        mov              qword ptr [rsp + 3424], 2            # result
                        mov              dword ptr [rsp + 3428], 3
                        mov              rax, qword ptr [rip + .Lx163_0]
                        mov              qword ptr [rsp + 3432], rax;         jmp   n22_call_builtin_prolog_α
.Lx163_0:               .quad            .Lx163_0_s
.Lx163_0_s:             .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              r11, 23
                        mov              rax, qword ptr [rsp + 3424]
                        mov              qword ptr [rsp + 3408], rax
                        mov              rax, qword ptr [rsp + 3432]
                        mov              qword ptr [rsp + 3416], rax
                        .section         .rodata
.Lrkfn165:              .string          "$set_output"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn165]
                        lea              rsi, [rsp + 3408]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 720896
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3392], rax
                        mov              qword ptr [rsp + 3400], rdx
                        cmp              al, 104;                             je    n23_call_builtin_prolog_α
                                                                              jmp   n26_lit_string_α
n22_call_builtin_prolog_β:
                        mov              r11, 23;                             jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
                        mov              r11, 24
                        mov              rax, qword ptr [rsp + 3168]
                        mov              qword ptr [rsp + 3328], rax
                        mov              rax, qword ptr [rsp + 3176]
                        mov              qword ptr [rsp + 3336], rax
                        mov              rax, qword ptr [rsp + 3264]
                        mov              qword ptr [rsp + 3312], rax
                        mov              rax, qword ptr [rsp + 3272]
                        mov              qword ptr [rsp + 3320], rax
                        .section         .rodata
.Lrkfn167:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn167]
                        lea              rsi, [rsp + 3312]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 786432
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3296], rax
                        mov              qword ptr [rsp + 3304], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n24_lit_string_α
n23_call_builtin_prolog_β:
                        mov              r11, 24;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       mov              r11, 25
                        mov              qword ptr [rsp + 3376], 2            # result
                        mov              dword ptr [rsp + 3380], 16
                        mov              rax, qword ptr [rip + .Lx168_0]
                        mov              qword ptr [rsp + 3384], rax;         jmp   n25_call_builtin_prolog_α
.Lx168_0:               .quad            .Lx168_0_s
.Lx168_0_s:             .string          "setout_existence"
#-----------------------------------------------------------------------------------------------------------------------
n25_call_builtin_prolog_α:
                        mov              r11, 26
                        mov              rax, qword ptr [rsp + 3376]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 3384]
                        mov              qword ptr [rsp + 3368], rax
                        .section         .rodata
.Lrkfn170:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn170]
                        lea              rsi, [rsp + 3360]
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
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx
                        cmp              al, 104;                             je    n23_call_builtin_prolog_α
                                                                              jmp   n26_lit_string_α
n25_call_builtin_prolog_β:
                        mov              r11, 26;                             jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       mov              r11, 27
                        mov              qword ptr [rsp + 3008], 2            # result
                        mov              dword ptr [rsp + 3012], 0
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 3016], rax;         jmp   n27_call_builtin_prolog_α
.Lx171_0:               .quad            .Lx171_0_s
.Lx171_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
                        mov              r11, 28
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 2992], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 3000], rax
                        .section         .rodata
.Lrkfn173:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn173]
                        lea              rsi, [rsp + 2992]
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
                        mov              qword ptr [rsp + 2976], rax
                        mov              qword ptr [rsp + 2984], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n28_lit_string_α
n27_call_builtin_prolog_β:
                        mov              r11, 28;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       mov              r11, 29
                        mov              qword ptr [rsp + 2784], 2            # result
                        mov              dword ptr [rsp + 2788], 5
                        mov              rax, qword ptr [rip + .Lx174_0]
                        mov              qword ptr [rsp + 2792], rax;         jmp   n29_lit_string_α
.Lx174_0:               .quad            .Lx174_0_s
.Lx174_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              r11, 30
                        mov              qword ptr [rsp + 2672], 2            # result
                        mov              dword ptr [rsp + 2676], 12
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rsp + 2680], rax;         jmp   n30_lit_string_α
.Lx175_0:               .quad            .Lx175_0_s
.Lx175_0_s:             .string          "domain_error"
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       mov              r11, 31
                        mov              qword ptr [rsp + 2560], 2            # result
                        mov              dword ptr [rsp + 2564], 6
                        mov              rax, qword ptr [rip + .Lx176_0]
                        mov              qword ptr [rsp + 2568], rax;         jmp   n31_var_ref_α
.Lx176_0:               .quad            .Lx176_0_s
.Lx176_0_s:             .string          "stream"
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3856]
                        mov              qword ptr [rsp + 2576], rax
                        mov              qword ptr [rsp + 2584], rdx;         jmp   n32_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              r11, 33
                        mov              rax, qword ptr [rsp + 2576]
                        mov              qword ptr [rsp + 2640], rax
                        mov              rax, qword ptr [rsp + 2584]
                        mov              qword ptr [rsp + 2648], rax
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2624], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2632], rax
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2616], rax
                        lea              rdi, [rsp + 2608]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2592], rax
                        mov              qword ptr [rsp + 2600], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n33_var_ref_α
n32_call_builtin_prolog_β:
                        mov              r11, 33;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3872]
                        mov              qword ptr [rsp + 2688], rax
                        mov              qword ptr [rsp + 2696], rdx;         jmp   n34_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
                        mov              r11, 35
                        mov              rax, qword ptr [rsp + 2688]
                        mov              qword ptr [rsp + 2752], rax
                        mov              rax, qword ptr [rsp + 2696]
                        mov              qword ptr [rsp + 2760], rax
                        mov              rax, qword ptr [rsp + 2592]
                        mov              qword ptr [rsp + 2736], rax
                        mov              rax, qword ptr [rsp + 2600]
                        mov              qword ptr [rsp + 2744], rax
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2728], rax
                        lea              rdi, [rsp + 2720]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2704], rax
                        mov              qword ptr [rsp + 2712], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n35_call_builtin_prolog_α
n34_call_builtin_prolog_β:
                        mov              r11, 35;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              r11, 36
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx183_102
                        mov              rax, qword ptr [rsp + 2800]
                        mov              rdx, qword ptr [rsp + 2808];         jmp   .Lx183_101
.Lx183_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx183_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx183_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx183_101
.Lx183_100:             lea              rdi, [rsp + 2816]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx183_101:             mov              qword ptr [rsp + 2800], rax
                        mov              qword ptr [rsp + 2808], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n36_lit_string_α
n35_call_builtin_prolog_β:
                        mov              r11, 36;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rsp + 2960], 2            # result
                        mov              dword ptr [rsp + 2964], 1
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n37_call_builtin_prolog_α
.Lx184_0:               .quad            .Lx184_0_s
.Lx184_0_s:             .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_prolog_α:
                        mov              r11, 38
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2952], rax
                        .section         .rodata
.Lrkfn186:              .string          "$current_output"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn186]
                        lea              rsi, [rsp + 2944]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 983040
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2936], rdx
                        cmp              al, 104;                             je    n38_call_builtin_prolog_α
                                                                              jmp   n41_lit_string_α
n37_call_builtin_prolog_β:
                        mov              r11, 38;                             jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_prolog_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 2704]
                        mov              qword ptr [rsp + 2864], rax
                        mov              rax, qword ptr [rsp + 2712]
                        mov              qword ptr [rsp + 2872], rax
                        mov              rax, qword ptr [rsp + 2800]
                        mov              qword ptr [rsp + 2848], rax
                        mov              rax, qword ptr [rsp + 2808]
                        mov              qword ptr [rsp + 2856], rax
                        .section         .rodata
.Lrkfn188:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn188]
                        lea              rsi, [rsp + 2848]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 786432
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2840], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n39_lit_string_α
n38_call_builtin_prolog_β:
                        mov              r11, 39;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rsp + 2912], 2            # result
                        mov              dword ptr [rsp + 2916], 13
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rsp + 2920], rax;         jmp   n40_call_builtin_prolog_α
.Lx189_0:               .quad            .Lx189_0_s
.Lx189_0_s:             .string          "curout_domain"
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              r11, 41
                        mov              rax, qword ptr [rsp + 2912]
                        mov              qword ptr [rsp + 2896], rax
                        mov              rax, qword ptr [rsp + 2920]
                        mov              qword ptr [rsp + 2904], rax
                        .section         .rodata
.Lrkfn191:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn191]
                        lea              rsi, [rsp + 2896]
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
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx
                        cmp              al, 104;                             je    n38_call_builtin_prolog_α
                                                                              jmp   n41_lit_string_α
n40_call_builtin_prolog_β:
                        mov              r11, 41;                             jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       mov              r11, 42
                        mov              qword ptr [rsp + 2544], 2            # result
                        mov              dword ptr [rsp + 2548], 0
                        mov              rax, qword ptr [rip + .Lx192_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n42_call_builtin_prolog_α
.Lx192_0:               .quad            .Lx192_0_s
.Lx192_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n42_call_builtin_prolog_α:
                        mov              r11, 43
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2528], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2536], rax
                        .section         .rodata
.Lrkfn194:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn194]
                        lea              rsi, [rsp + 2528]
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
                        mov              qword ptr [rsp + 2512], rax
                        mov              qword ptr [rsp + 2520], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n43_lit_string_α
n42_call_builtin_prolog_β:
                        mov              r11, 43;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       mov              r11, 44
                        mov              qword ptr [rsp + 2320], 2            # result
                        mov              dword ptr [rsp + 2324], 5
                        mov              rax, qword ptr [rip + .Lx195_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n44_lit_string_α
.Lx195_0:               .quad            .Lx195_0_s
.Lx195_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:       mov              r11, 45
                        mov              qword ptr [rsp + 2208], 2            # result
                        mov              dword ptr [rsp + 2212], 19
                        mov              rax, qword ptr [rip + .Lx196_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n45_var_ref_α
.Lx196_0:               .quad            .Lx196_0_s
.Lx196_0_s:             .string          "instantiation_error"
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3824]
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx;         jmp   n46_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_prolog_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2288], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2296], rax
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2280], rax
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2264], rax
                        lea              rdi, [rsp + 2256]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2240], rax
                        mov              qword ptr [rsp + 2248], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n47_call_builtin_prolog_α
n46_call_builtin_prolog_β:
                        mov              r11, 47;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_prolog_α:
                        mov              r11, 48
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx200_102
                        mov              rax, qword ptr [rsp + 2336]
                        mov              rdx, qword ptr [rsp + 2344];         jmp   .Lx200_101
.Lx200_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx200_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx200_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx200_101
.Lx200_100:             lea              rdi, [rsp + 2352]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx200_101:             mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n48_var_ref_α
n47_call_builtin_prolog_β:
                        mov              r11, 48;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3840]
                        mov              qword ptr [rsp + 2496], rax
                        mov              qword ptr [rsp + 2504], rdx;         jmp   n49_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              r11, 50
                        mov              rax, qword ptr [rsp + 2496]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2504]
                        mov              qword ptr [rsp + 2488], rax
                        .section         .rodata
.Lrkfn204:              .string          "$set_output"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn204]
                        lea              rsi, [rsp + 2480]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 720896
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2464], rax
                        mov              qword ptr [rsp + 2472], rdx
                        cmp              al, 104;                             je    n50_call_builtin_prolog_α
                                                                              jmp   n53_lit_string_α
n49_call_builtin_prolog_β:
                        mov              r11, 50;                             jmp   n50_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_prolog_α:
                        mov              r11, 51
                        mov              rax, qword ptr [rsp + 2240]
                        mov              qword ptr [rsp + 2400], rax
                        mov              rax, qword ptr [rsp + 2248]
                        mov              qword ptr [rsp + 2408], rax
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2392], rax
                        .section         .rodata
.Lrkfn206:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn206]
                        lea              rsi, [rsp + 2384]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 786432
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2376], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n51_lit_string_α
n50_call_builtin_prolog_β:
                        mov              r11, 51;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              r11, 52
                        mov              qword ptr [rsp + 2448], 2            # result
                        mov              dword ptr [rsp + 2452], 11
                        mov              rax, qword ptr [rip + .Lx207_0]
                        mov              qword ptr [rsp + 2456], rax;         jmp   n52_call_builtin_prolog_α
.Lx207_0:               .quad            .Lx207_0_s
.Lx207_0_s:             .string          "setout_inst"
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_prolog_α:
                        mov              r11, 53
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2432], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2440], rax
                        .section         .rodata
.Lrkfn209:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn209]
                        lea              rsi, [rsp + 2432]
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
                        mov              qword ptr [rsp + 2416], rax
                        mov              qword ptr [rsp + 2424], rdx
                        cmp              al, 104;                             je    n50_call_builtin_prolog_α
                                                                              jmp   n53_lit_string_α
n52_call_builtin_prolog_β:
                        mov              r11, 53;                             jmp   n50_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       mov              r11, 54
                        mov              qword ptr [rsp + 2192], 2            # result
                        mov              dword ptr [rsp + 2196], 0
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n54_call_builtin_prolog_α
.Lx210_0:               .quad            .Lx210_0_s
.Lx210_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_prolog_α:
                        mov              r11, 55
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2176], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2184], rax
                        .section         .rodata
.Lrkfn212:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn212]
                        lea              rsi, [rsp + 2176]
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
                        mov              qword ptr [rsp + 2160], rax
                        mov              qword ptr [rsp + 2168], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n55_lit_string_α
n54_call_builtin_prolog_β:
                        mov              r11, 55;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       mov              r11, 56
                        mov              qword ptr [rsp + 1968], 2            # result
                        mov              dword ptr [rsp + 1972], 5
                        mov              rax, qword ptr [rip + .Lx213_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n56_lit_string_α
.Lx213_0:               .quad            .Lx213_0_s
.Lx213_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:       mov              r11, 57
                        mov              qword ptr [rsp + 1856], 2            # result
                        mov              dword ptr [rsp + 1860], 12
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n57_lit_string_α
.Lx214_0:               .quad            .Lx214_0_s
.Lx214_0_s:             .string          "domain_error"
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              r11, 58
                        mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 15
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n58_var_ref_α
.Lx215_0:               .quad            .Lx215_0_s
.Lx215_0_s:             .string          "stream_or_alias"
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:          mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3792]
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_prolog_α:
                        mov              r11, 60
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1832], rax
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1816], rax
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1800], rax
                        lea              rdi, [rsp + 1792]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n60_var_ref_α
n59_call_builtin_prolog_β:
                        mov              r11, 60;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3808]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx;         jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_prolog_α:
                        mov              r11, 62
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1944], rax
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1912], rax
                        lea              rdi, [rsp + 1904]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n62_call_builtin_prolog_α
n61_call_builtin_prolog_β:
                        mov              r11, 62;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n62_call_builtin_prolog_α:
                        mov              r11, 63
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx222_102
                        mov              rax, qword ptr [rsp + 1984]
                        mov              rdx, qword ptr [rsp + 1992];         jmp   .Lx222_101
.Lx222_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx222_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx222_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx222_101
.Lx222_100:             lea              rdi, [rsp + 2000]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx222_101:             mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n63_lit_integer_α
n62_call_builtin_prolog_β:
                        mov              r11, 63;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_integer_α:      mov              r11, 64
                        mov              qword ptr [rsp + 2144], 3            # result
                        mov              rax, qword ptr [rip + .Lx223_0]
                        mov              qword ptr [rsp + 2152], rax;         jmp   n64_call_builtin_prolog_α
.Lx223_0:               .quad            123
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_prolog_α:
                        mov              r11, 65
                        mov              rax, qword ptr [rsp + 2144]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2152]
                        mov              qword ptr [rsp + 2136], rax
                        .section         .rodata
.Lrkfn225:              .string          "$set_output"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn225]
                        lea              rsi, [rsp + 2128]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 720896
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                        cmp              al, 104;                             je    n65_call_builtin_prolog_α
                                                                              jmp   n68_lit_string_α
n64_call_builtin_prolog_β:
                        mov              r11, 65;                             jmp   n65_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_prolog_α:
                        mov              r11, 66
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 2056], rax
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 2040], rax
                        .section         .rodata
.Lrkfn227:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn227]
                        lea              rsi, [rsp + 2032]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 786432
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n66_lit_string_α
n65_call_builtin_prolog_β:
                        mov              r11, 66;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              r11, 67
                        mov              qword ptr [rsp + 2096], 2            # result
                        mov              dword ptr [rsp + 2100], 13
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n67_call_builtin_prolog_α
.Lx228_0:               .quad            .Lx228_0_s
.Lx228_0_s:             .string          "setout_domain"
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_prolog_α:
                        mov              r11, 68
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2088], rax
                        .section         .rodata
.Lrkfn230:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rsp + 2080]
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
                        mov              qword ptr [rsp + 2064], rax
                        mov              qword ptr [rsp + 2072], rdx
                        cmp              al, 104;                             je    n65_call_builtin_prolog_α
                                                                              jmp   n68_lit_string_α
n67_call_builtin_prolog_β:
                        mov              r11, 68;                             jmp   n65_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       mov              r11, 69
                        mov              qword ptr [rsp + 1728], 2            # result
                        mov              dword ptr [rsp + 1732], 0
                        mov              rax, qword ptr [rip + .Lx231_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n69_call_builtin_prolog_α
.Lx231_0:               .quad            .Lx231_0_s
.Lx231_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n69_call_builtin_prolog_α:
                        mov              r11, 70
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1720], rax
                        .section         .rodata
.Lrkfn233:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn233]
                        lea              rsi, [rsp + 1712]
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
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n70_lit_string_α
n69_call_builtin_prolog_β:
                        mov              r11, 70;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_string_α:       mov              r11, 71
                        mov              qword ptr [rsp + 1504], 2            # result
                        mov              dword ptr [rsp + 1508], 5
                        mov              rax, qword ptr [rip + .Lx234_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n71_lit_string_α
.Lx234_0:               .quad            .Lx234_0_s
.Lx234_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_string_α:       mov              r11, 72
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 16
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n72_lit_string_α
.Lx235_0:               .quad            .Lx235_0_s
.Lx235_0_s:             .string          "permission_error"
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_string_α:       mov              r11, 73
                        mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 6
                        mov              rax, qword ptr [rip + .Lx236_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n73_lit_string_α
.Lx236_0:               .quad            .Lx236_0_s
.Lx236_0_s:             .string          "output"
#-----------------------------------------------------------------------------------------------------------------------
n73_lit_string_α:       mov              r11, 74
                        mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 6
                        mov              rax, qword ptr [rip + .Lx237_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n74_var_ref_α
.Lx237_0:               .quad            .Lx237_0_s
.Lx237_0_s:             .string          "stream"
#-----------------------------------------------------------------------------------------------------------------------
n74_var_ref_α:          mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3760]
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx;         jmp   n75_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n75_call_builtin_prolog_α:
                        mov              r11, 76
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1368], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1320], rax
                        lea              rdi, [rsp + 1312]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n76_var_ref_α
n75_call_builtin_prolog_β:
                        mov              r11, 76;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3776]
                        mov              qword ptr [rsp + 1408], rax
                        mov              qword ptr [rsp + 1416], rdx;         jmp   n77_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n77_call_builtin_prolog_α:
                        mov              r11, 78
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1480], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1448], rax
                        lea              rdi, [rsp + 1440]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n78_call_builtin_prolog_α
n77_call_builtin_prolog_β:
                        mov              r11, 78;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n78_call_builtin_prolog_α:
                        mov              r11, 79
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx244_102
                        mov              rax, qword ptr [rsp + 1520]
                        mov              rdx, qword ptr [rsp + 1528];         jmp   .Lx244_101
.Lx244_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx244_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx244_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx244_101
.Lx244_100:             lea              rdi, [rsp + 1536]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx244_101:             mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n79_lit_string_α
n78_call_builtin_prolog_β:
                        mov              r11, 79;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_string_α:       mov              r11, 80
                        mov              qword ptr [rsp + 1680], 2            # result
                        mov              dword ptr [rsp + 1684], 10
                        mov              rax, qword ptr [rip + .Lx245_0]
                        mov              qword ptr [rsp + 1688], rax;         jmp   n80_call_builtin_prolog_α
.Lx245_0:               .quad            .Lx245_0_s
.Lx245_0_s:             .string          "user_input"
#-----------------------------------------------------------------------------------------------------------------------
n80_call_builtin_prolog_α:
                        mov              r11, 81
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1672], rax
                        .section         .rodata
.Lrkfn247:              .string          "$set_output"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn247]
                        lea              rsi, [rsp + 1664]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 720896
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              al, 104;                             je    n81_call_builtin_prolog_α
                                                                              jmp   n84_lit_string_α
n80_call_builtin_prolog_β:
                        mov              r11, 81;                             jmp   n81_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_prolog_α:
                        mov              r11, 82
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1592], rax
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1576], rax
                        .section         .rodata
.Lrkfn249:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn249]
                        lea              rsi, [rsp + 1568]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 786432
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n82_lit_string_α
n81_call_builtin_prolog_β:
                        mov              r11, 82;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_string_α:       mov              r11, 83
                        mov              qword ptr [rsp + 1632], 2            # result
                        mov              dword ptr [rsp + 1636], 11
                        mov              rax, qword ptr [rip + .Lx250_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n83_call_builtin_prolog_α
.Lx250_0:               .quad            .Lx250_0_s
.Lx250_0_s:             .string          "setout_perm"
#-----------------------------------------------------------------------------------------------------------------------
n83_call_builtin_prolog_α:
                        mov              r11, 84
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1624], rax
                        .section         .rodata
.Lrkfn252:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn252]
                        lea              rsi, [rsp + 1616]
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
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              al, 104;                             je    n81_call_builtin_prolog_α
                                                                              jmp   n84_lit_string_α
n83_call_builtin_prolog_β:
                        mov              r11, 84;                             jmp   n81_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       mov              r11, 85
                        mov              qword ptr [rsp + 1232], 2            # result
                        mov              dword ptr [rsp + 1236], 0
                        mov              rax, qword ptr [rip + .Lx253_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n85_call_builtin_prolog_α
.Lx253_0:               .quad            .Lx253_0_s
.Lx253_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n85_call_builtin_prolog_α:
                        mov              r11, 86
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1224], rax
                        .section         .rodata
.Lrkfn255:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn255]
                        lea              rsi, [rsp + 1216]
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
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n86_lit_string_α
n85_call_builtin_prolog_β:
                        mov              r11, 86;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       mov              r11, 87
                        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 5
                        mov              rax, qword ptr [rip + .Lx256_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n87_lit_string_α
.Lx256_0:               .quad            .Lx256_0_s
.Lx256_0_s:             .string          "error"
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:       mov              r11, 88
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 16
                        mov              rax, qword ptr [rip + .Lx257_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n88_lit_string_α
.Lx257_0:               .quad            .Lx257_0_s
.Lx257_0_s:             .string          "permission_error"
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       mov              r11, 89
                        mov              qword ptr [rsp + 752], 2             # result
                        mov              dword ptr [rsp + 756], 5
                        mov              rax, qword ptr [rip + .Lx258_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n89_lit_string_α
.Lx258_0:               .quad            .Lx258_0_s
.Lx258_0_s:             .string          "input"
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       mov              r11, 90
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 6
                        mov              rax, qword ptr [rip + .Lx259_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n90_var_ref_α
.Lx259_0:               .quad            .Lx259_0_s
.Lx259_0_s:             .string          "stream"
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3728]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n91_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n91_call_builtin_prolog_α:
                        mov              r11, 92
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 824], rax
                        lea              rdi, [rsp + 816]
                        mov              esi, 4
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
                                                                              jmp   n92_var_ref_α
n91_call_builtin_prolog_β:
                        mov              r11, 92;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3744]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
                        mov              r11, 94
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 952], rax
                        lea              rdi, [rsp + 944]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n94_call_builtin_prolog_α
n93_call_builtin_prolog_β:
                        mov              r11, 94;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n94_call_builtin_prolog_α:
                        mov              r11, 95
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx266_102
                        mov              rax, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032];         jmp   .Lx266_101
.Lx266_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx266_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx266_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx266_101
.Lx266_100:             lea              rdi, [rsp + 1040]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx266_101:             mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n95_lit_string_α
n94_call_builtin_prolog_β:
                        mov              r11, 95;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:       mov              r11, 96
                        mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], 11
                        mov              rax, qword ptr [rip + .Lx267_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n96_call_builtin_prolog_α
.Lx267_0:               .quad            .Lx267_0_s
.Lx267_0_s:             .string          "user_output"
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_prolog_α:
                        mov              r11, 97
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1176], rax
                        .section         .rodata
.Lrkfn269:              .string          "$set_input"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn269]
                        lea              rsi, [rsp + 1168]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 655360
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n97_call_builtin_prolog_α
                                                                              jmp   n100_lit_string_α
n96_call_builtin_prolog_β:
                        mov              r11, 97;                             jmp   n97_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n97_call_builtin_prolog_α:
                        mov              r11, 98
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn271:              .string          "$catch_check"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn271]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 786432
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n98_lit_string_α
n97_call_builtin_prolog_β:
                        mov              r11, 98;                             jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       mov              r11, 99
                        mov              qword ptr [rsp + 1136], 2            # result
                        mov              dword ptr [rsp + 1140], 10
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n99_call_builtin_prolog_α
.Lx272_0:               .quad            .Lx272_0_s
.Lx272_0_s:             .string          "setin_perm"
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        mov              r11, 100
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1128], rax
                        .section         .rodata
.Lrkfn274:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn274]
                        lea              rsi, [rsp + 1120]
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
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n97_call_builtin_prolog_α
                                                                              jmp   n100_lit_string_α
n99_call_builtin_prolog_β:
                        mov              r11, 100;                            jmp   n97_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      mov              r11, 101
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 0
                        mov              rax, qword ptr [rip + .Lx275_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n101_call_builtin_prolog_α
.Lx275_0:               .quad            .Lx275_0_s
.Lx275_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n101_call_builtin_prolog_α:
                        mov              r11, 102
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 728], rax
                        .section         .rodata
.Lrkfn277:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn277]
                        lea              rsi, [rsp + 720]
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
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n102_lit_string_α
n101_call_builtin_prolog_β:
                        mov              r11, 102;                            jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      mov              r11, 103
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 10
                        mov              rax, qword ptr [rip + .Lx278_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n103_lit_string_α
.Lx278_0:               .quad            .Lx278_0_s
.Lx278_0_s:             .string          "user_error"
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 19
                        mov              rax, qword ptr [rip + .Lx279_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n104_call_builtin_prolog_α
.Lx279_0:               .quad            .Lx279_0_s
.Lx279_0_s:             .string          "this_goes_to_stderr"
#-----------------------------------------------------------------------------------------------------------------------
n104_call_builtin_prolog_α:
                        mov              r11, 105
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 648], rax
                        .section         .rodata
.Lrkfn281:              .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn281]
                        lea              rsi, [rsp + 640]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458752
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n105_lit_string_α
n104_call_builtin_prolog_β:
                        mov              r11, 105;                            jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      mov              r11, 106
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 10
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n106_call_builtin_prolog_α
.Lx282_0:               .quad            .Lx282_0_s
.Lx282_0_s:             .string          "user_error"
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_prolog_α:
                        mov              r11, 107
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 600], rax
                        .section         .rodata
.Lrkfn284:              .string          "$nl1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn284]
                        lea              rsi, [rsp + 592]
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
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n107_lit_string_α
n106_call_builtin_prolog_β:
                        mov              r11, 107;                            jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_string_α:      mov              r11, 108
                        mov              qword ptr [rsp + 560], 2             # result
                        mov              dword ptr [rsp + 564], 0
                        mov              rax, qword ptr [rip + .Lx285_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n108_call_builtin_prolog_α
.Lx285_0:               .quad            .Lx285_0_s
.Lx285_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_prolog_α:
                        mov              r11, 109
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn287:              .string          "$flush_output"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn287]
                        lea              rsi, [rsp + 544]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 851968
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n111_lit_string_α
                                                                              jmp   n109_lit_string_α
n108_call_builtin_prolog_β:
                        mov              r11, 109;                            jmp   n111_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_string_α:      mov              r11, 110
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 8
                        mov              rax, qword ptr [rip + .Lx288_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n110_call_builtin_prolog_α
.Lx288_0:               .quad            .Lx288_0_s
.Lx288_0_s:             .string          "flushed0"
#-----------------------------------------------------------------------------------------------------------------------
n110_call_builtin_prolog_α:
                        mov              r11, 111
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn290:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn290]
                        lea              rsi, [rsp + 448]
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
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n113_lit_string_α
n110_call_builtin_prolog_β:
                        mov              r11, 111;                            jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 11
                        mov              rax, qword ptr [rip + .Lx291_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n112_call_builtin_prolog_α
.Lx291_0:               .quad            .Lx291_0_s
.Lx291_0_s:             .string          "flush0_fail"
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_prolog_α:
                        mov              r11, 113
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn293:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn293]
                        lea              rsi, [rsp + 496]
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
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n113_lit_string_α
n112_call_builtin_prolog_β:
                        mov              r11, 113;                            jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n113_lit_string_α:      mov              r11, 114
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 0
                        mov              rax, qword ptr [rip + .Lx294_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n114_call_builtin_prolog_α
.Lx294_0:               .quad            .Lx294_0_s
.Lx294_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_prolog_α:
                        mov              r11, 115
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn296:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn296]
                        lea              rsi, [rsp + 400]
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
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n115_lit_string_α
n114_call_builtin_prolog_β:
                        mov              r11, 115;                            jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n115_lit_string_α:      mov              r11, 116
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 11
                        mov              rax, qword ptr [rip + .Lx297_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n116_call_builtin_prolog_α
.Lx297_0:               .quad            .Lx297_0_s
.Lx297_0_s:             .string          "user_output"
#-----------------------------------------------------------------------------------------------------------------------
n116_call_builtin_prolog_α:
                        mov              r11, 117
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 360], rax
                        .section         .rodata
.Lrkfn299:              .string          "$flush_output1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn299]
                        lea              rsi, [rsp + 352]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 917504
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n119_lit_string_α
                                                                              jmp   n117_lit_string_α
n116_call_builtin_prolog_β:
                        mov              r11, 117;                            jmp   n119_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 8
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n118_call_builtin_prolog_α
.Lx300_0:               .quad            .Lx300_0_s
.Lx300_0_s:             .string          "flushed1"
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_prolog_α:
                        mov              r11, 119
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn302:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn302]
                        lea              rsi, [rsp + 256]
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
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n121_lit_string_α
n118_call_builtin_prolog_β:
                        mov              r11, 119;                            jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_string_α:      mov              r11, 120
                        mov              qword ptr [rsp + 320], 2             # result
                        mov              dword ptr [rsp + 324], 11
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n120_call_builtin_prolog_α
.Lx303_0:               .quad            .Lx303_0_s
.Lx303_0_s:             .string          "flush1_fail"
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_prolog_α:
                        mov              r11, 121
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 312], rax
                        .section         .rodata
.Lrkfn305:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn305]
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
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n121_lit_string_α
n120_call_builtin_prolog_β:
                        mov              r11, 121;                            jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 0
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n122_call_builtin_prolog_α
.Lx306_0:               .quad            .Lx306_0_s
.Lx306_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n122_call_builtin_prolog_α:
                        mov              r11, 123
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn308:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn308]
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
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n123_lit_string_α
n122_call_builtin_prolog_β:
                        mov              r11, 123;                            jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n123_lit_string_α:      mov              r11, 124
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 4
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n124_call_builtin_prolog_α
.Lx309_0:               .quad            .Lx309_0_s
.Lx309_0_s:             .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_prolog_α:
                        mov              r11, 125
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn311:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn311]
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
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n125_lit_string_α
n124_call_builtin_prolog_β:
                        mov              r11, 125;                            jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_string_α:      mov              r11, 126
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx312_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n126_call_builtin_prolog_α
.Lx312_0:               .quad            .Lx312_0_s
.Lx312_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n126_call_builtin_prolog_α:
                        mov              r11, 127
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn314:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn314]
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
                        cmp              al, 104;                             je    n129_call_builtin_prolog_α
                                                                              jmp   n127_move_label_α
n126_call_builtin_prolog_β:
                        mov              r11, 127;                            jmp   n129_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n127_move_label_α:      mov              r11, 128
                        lea              rax, [rip + n129_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n128_disjunction_α:     mov              r11, 129
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
n128_disjunction_β:     mov              r11, 129;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n129_call_builtin_prolog_α:
                        mov              r11, 130
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
n129_call_builtin_prolog_β:
                        mov              r11, 130;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n128_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 3976]
                        add              rsp, 4000;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 3984]
                        add              rsp, 4000;                           jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
