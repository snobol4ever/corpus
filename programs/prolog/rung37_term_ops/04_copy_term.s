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
                        sub              rsp, 1360
                        mov              qword ptr [rsp + 1336], rcx
                        mov              qword ptr [rsp + 1344], rdx
                        mov              qword ptr [rsp + 1352], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1328
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx44_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx44_101
.Lx44_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx44_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx44_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx44_101
.Lx44_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx44_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 1
                        mov              rax, qword ptr [rip + .Lx45_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n2_var_ref_α
.Lx45_0:                .quad            .Lx45_0_s
.Lx45_0_s:              .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1280]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n3_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1280]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n4_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              r11, 5
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1016], rax
                        lea              rdi, [rsp + 1008]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n43_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_lit_string_α
n4_call_builtin_prolog_β:
                        mov              r11, 5;                              jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              r11, 6
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 1
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n6_var_ref_α
.Lx51_0:                .quad            .Lx51_0_s
.Lx51_0_s:              .string          "f"
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1264]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n7_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              r11, 9
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1144], rax
                        lea              rdi, [rsp + 1136]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    n43_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_call_builtin_prolog_α
n8_call_builtin_prolog_β:
                        mov              r11, 9;                              jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              r11, 10
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 936], rax
                        .section         .rodata
.Lrkfn58:               .string          "$copy_term"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn58]
                        lea              rsi, [rsp + 928]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n43_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n10_var_ref_α
n9_call_builtin_prolog_β:
                        mov              r11, 10;                             jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1264]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n11_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              r11, 13
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn64:               .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn64]
                        lea              rsi, [rsp + 848]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n15_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n13_lit_string_α
n12_call_builtin_prolog_β:
                        mov              r11, 13;                             jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:       mov              r11, 14
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 6
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n14_call_builtin_prolog_α
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          "shared"
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              r11, 15
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 760], rax
                        .section         .rodata
.Lrkfn67:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn67]
                        lea              rsi, [rsp + 752]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n43_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_lit_string_α
n14_call_builtin_prolog_β:
                        mov              r11, 15;                             jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 10
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n16_call_builtin_prolog_α
.Lx68_0:                .quad            .Lx68_0_s
.Lx68_0_s:              .string          "not_shared"
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              r11, 17
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 808], rax
                        .section         .rodata
.Lrkfn70:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn70]
                        lea              rsi, [rsp + 800]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n43_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_lit_string_α
n16_call_builtin_prolog_β:
                        mov              r11, 17;                             jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 0
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n18_call_builtin_prolog_α
.Lx71_0:                .quad            .Lx71_0_s
.Lx71_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              r11, 19
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 712], rax
                        .section         .rodata
.Lrkfn73:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn73]
                        lea              rsi, [rsp + 704]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n43_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n19_var_ref_α
n18_call_builtin_prolog_β:
                        mov              r11, 19;                             jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              r11, 20
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1280]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n20_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       mov              r11, 21
                        mov              qword ptr [rsp + 672], 2             # result
                        mov              dword ptr [rsp + 676], 8
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n21_call_builtin_prolog_α
.Lx76_0:                .quad            .Lx76_0_s
.Lx76_0_s:              .string          "original"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              r11, 22
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        lea              rdi, [rsp + 624]
                        mov              rsi, qword ptr [rip + .Lx77_2];      jmp   .Lx77_3
.Lx77_2:                .quad            .Lx77_2_s
.Lx77_2_s:              .string          "original"
.Lx77_3:                mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n43_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n22_var_ref_α
n21_call_builtin_prolog_β:
                        mov              r11, 22;                             jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1264]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx;          jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rsp + 592], 2             # result
                        mov              dword ptr [rsp + 596], 8
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n24_call_builtin_prolog_α
.Lx80_0:                .quad            .Lx80_0_s
.Lx80_0_s:              .string          "original"
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              r11, 25
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 552], rax
                        .section         .rodata
.Lrkfn82:               .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn82]
                        lea              rsi, [rsp + 544]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n27_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n25_lit_string_α
n24_call_builtin_prolog_β:
                        mov              r11, 25;                             jmp   n27_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 7
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n26_call_builtin_prolog_α
.Lx83_0:                .quad            .Lx83_0_s
.Lx83_0_s:              .string          "aliased"
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              r11, 27
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 456], rax
                        .section         .rodata
.Lrkfn85:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn85]
                        lea              rsi, [rsp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n43_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n29_lit_string_α
n26_call_builtin_prolog_β:
                        mov              r11, 27;                             jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 11
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n28_call_builtin_prolog_α
.Lx86_0:                .quad            .Lx86_0_s
.Lx86_0_s:              .string          "independent"
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              r11, 29
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn88:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rsp + 496]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n43_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n29_lit_string_α
n28_call_builtin_prolog_β:
                        mov              r11, 29;                             jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              r11, 30
                        mov              qword ptr [rsp + 416], 2             # result
                        mov              dword ptr [rsp + 420], 0
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n30_call_builtin_prolog_α
.Lx89_0:                .quad            .Lx89_0_s
.Lx89_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              r11, 31
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 408], rax
                        .section         .rodata
.Lrkfn91:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rsp + 400]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n43_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_lit_string_α
n30_call_builtin_prolog_β:
                        mov              r11, 31;                             jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              r11, 32
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n32_var_ref_α
.Lx92_0:                .quad            .Lx92_0_s
.Lx92_0_s:              .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1248]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n34_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_prolog_α:
                        mov              r11, 35
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n43_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n35_var_ref_α
n34_call_builtin_prolog_β:
                        mov              r11, 35;                             jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1216]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n36_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_prolog_α:
                        mov              r11, 37
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn101:              .string          "$copy_term"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn101]
                        lea              rsi, [rsp + 208]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n43_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n37_var_α
n36_call_builtin_prolog_β:
                        mov              r11, 37;                             jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              mov              r11, 38
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 184], rax;          jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_prolog_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn105:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn105]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n43_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n39_lit_string_α
n38_call_builtin_prolog_β:
                        mov              r11, 39;                             jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              r11, 40
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n40_call_builtin_prolog_α
.Lx106_0:               .quad            .Lx106_0_s
.Lx106_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              r11, 41
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn108:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn108]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n43_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n41_move_label_α
n40_call_builtin_prolog_β:
                        mov              r11, 41;                             jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_move_label_α:       mov              r11, 42
                        lea              rax, [rip + n43_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n42_disjunction_α:      mov              r11, 43
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n42_disjunction_β:      mov              r11, 43;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_prolog_α:
                        mov              r11, 44
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
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   main_ω
n43_call_builtin_prolog_β:
                        mov              r11, 44;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n42_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1336]
                        add              rsp, 1360;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 1344]
                        add              rsp, 1360;                           jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
