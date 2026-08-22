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
                        sub              rsp, 1824
                        mov              qword ptr [rsp + 1800], rcx
                        mov              qword ptr [rsp + 1808], rdx
                        mov              qword ptr [rsp + 1816], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1792
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax;                            je    .Lx60_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx60_101
.Lx60_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx60_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx60_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx60_101
.Lx60_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx60_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 1760]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n2_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_real_α:          mov              qword ptr [rsp + 1648], 5            # result
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n3_call_builtin_prolog_α
.Lx63_0:                .quad            4615514078110652826
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1624], rax
                        .section         .rodata
.Lrkfn65:               .string          "$ax_trunc"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn65]
                        lea              rsi, [rsp + 1616]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_call_builtin_prolog_α
n3_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1576], rax
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1560], rax
                        lea              rdi, [rsp + 1552]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_var_α
n4_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n6_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1504], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1512], rax
                        .section         .rodata
.Lrkfn70:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn70]
                        lea              rsi, [rsp + 1504]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_lit_string_α
n6_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              qword ptr [rsp + 1472], 2            # result
                        mov              dword ptr [rsp + 1476], 0
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n8_call_builtin_prolog_α
.Lx71_0:                .quad            .Lx71_0_s
.Lx71_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1464], rax
                        .section         .rodata
.Lrkfn73:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn73]
                        lea              rsi, [rsp + 1456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_var_ref_α
n8_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 1744]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n10_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_real_α:         mov              qword ptr [rsp + 1424], 5            # result
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n11_call_builtin_prolog_α
.Lx76_0:                .quad            13838886114965428634
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1400], rax
                        .section         .rodata
.Lrkfn78:               .string          "$ax_trunc"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn78]
                        lea              rsi, [rsp + 1392]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_call_builtin_prolog_α
n11_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1336], rax
                        lea              rdi, [rsp + 1328]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n13_var_α
n12_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1288], rax
                        .section         .rodata
.Lrkfn83:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn83]
                        lea              rsi, [rsp + 1280]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_lit_string_α
n14_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 0
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n16_call_builtin_prolog_α
.Lx84_0:                .quad            .Lx84_0_s
.Lx84_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1240], rax
                        .section         .rodata
.Lrkfn86:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn86]
                        lea              rsi, [rsp + 1232]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_var_ref_α
n16_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1728]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n18_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_real_α:         mov              qword ptr [rsp + 1200], 5            # result
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n19_call_builtin_prolog_α
.Lx89_0:                .quad            4615063718147915776
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1176], rax
                        .section         .rodata
.Lrkfn91:               .string          "$ax_round"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn91]
                        lea              rsi, [rsp + 1168]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n20_call_builtin_prolog_α
n19_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax
                        lea              rdi, [rsp + 1104]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_var_α
n20_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n22_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1064], rax
                        .section         .rodata
.Lrkfn96:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn96]
                        lea              rsi, [rsp + 1056]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n23_lit_string_α
n22_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 0
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n24_call_builtin_prolog_α
.Lx97_0:                .quad            .Lx97_0_s
.Lx97_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1016], rax
                        .section         .rodata
.Lrkfn99:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn99]
                        lea              rsi, [rsp + 1008]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n25_var_ref_α
n24_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1712]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n26_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_real_α:         mov              qword ptr [rsp + 976], 5             # result
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n27_call_builtin_prolog_α
.Lx102_0:               .quad            4616752568008179712
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax
                        .section         .rodata
.Lrkfn104:              .string          "$ax_round"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn104]
                        lea              rsi, [rsp + 944]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_call_builtin_prolog_α
n27_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 888], rax
                        lea              rdi, [rsp + 880]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n29_var_α
n28_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 856], rax;          jmp   n30_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 840], rax
                        .section         .rodata
.Lrkfn109:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn109]
                        lea              rsi, [rsp + 832]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_lit_string_α
n30_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 0
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n32_call_builtin_prolog_α
.Lx110_0:               .quad            .Lx110_0_s
.Lx110_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn112:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn112]
                        lea              rsi, [rsp + 784]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n33_var_ref_α
n32_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1696]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n34_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_real_α:         mov              qword ptr [rsp + 752], 5             # result
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n35_call_builtin_prolog_α
.Lx115_0:               .quad            4614388178203810202
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        .section         .rodata
.Lrkfn117:              .string          "$ax_ceil"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn117]
                        lea              rsi, [rsp + 720]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n36_call_builtin_prolog_α
n35_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        lea              rdi, [rsp + 656]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n37_var_α
n36_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 632], rax;          jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 616], rax
                        .section         .rodata
.Lrkfn122:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn122]
                        lea              rsi, [rsp + 608]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n39_lit_string_α
n38_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 0
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n40_call_builtin_prolog_α
.Lx123_0:               .quad            .Lx123_0_s
.Lx123_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 568], rax
                        .section         .rodata
.Lrkfn125:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn125]
                        lea              rsi, [rsp + 560]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n41_var_ref_α
n40_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1680]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n42_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_real_α:         mov              qword ptr [rsp + 528], 5             # result
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n43_call_builtin_prolog_α
.Lx128_0:               .quad            4615514078110652826
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn130:              .string          "$ax_floor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn130]
                        lea              rsi, [rsp + 496]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n44_call_builtin_prolog_α
n43_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n45_var_α
n44_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 408], rax;          jmp   n46_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 392], rax
                        .section         .rodata
.Lrkfn135:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]
                        lea              rsi, [rsp + 384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n47_lit_string_α
n46_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 0
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n48_call_builtin_prolog_α
.Lx136_0:               .quad            .Lx136_0_s
.Lx136_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn138:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn138]
                        lea              rsi, [rsp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n49_var_ref_α
n48_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1664]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n50_lit_real_α
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_real_α:         mov              qword ptr [rsp + 304], 5             # result
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n51_call_builtin_prolog_α
.Lx141_0:               .quad            13837760215058586010
#-----------------------------------------------------------------------------------------------------------------------
n51_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn143:              .string          "$ax_floor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn143]
                        lea              rsi, [rsp + 272]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n52_call_builtin_prolog_α
n51_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 216], rax
                        lea              rdi, [rsp + 208]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n53_var_α
n52_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 184], rax;          jmp   n54_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn148:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn148]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n55_lit_string_α
n54_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n56_call_builtin_prolog_α
.Lx149_0:               .quad            .Lx149_0_s
.Lx149_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn151:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n59_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n57_move_label_α
n56_call_builtin_prolog_β:
                                                                              jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n57_move_label_α:       lea              rax, [rip + n59_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n58_disjunction_α:      mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n58_disjunction_β:                                                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_prolog_α:
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
n59_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n58_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1800]
                        add              rsp, 1824;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 1808]
                        add              rsp, 1824;                           jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
