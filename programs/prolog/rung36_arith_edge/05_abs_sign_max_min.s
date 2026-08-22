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
                        sub              rsp, 1888
                        mov              qword ptr [rsp + 1864], rcx
                        mov              qword ptr [rsp + 1872], rdx
                        mov              qword ptr [rsp + 1880], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1856
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
                        test             rax, rax;                            je    .Lx62_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx62_101
.Lx62_102:              lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax;                            jne   .Lx62_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2;                              je    .Lx62_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx62_101
.Lx62_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
.Lx62_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 1824]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx;         jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              qword ptr [rsp + 1712], 3            # result
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n3_call_builtin_prolog_α
.Lx65_0:                .quad            18446744073709551609
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1712]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1688], rax
                        .section         .rodata
.Lrkfn67:               .string          "$ax_abs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn67]
                        lea              rsi, [rsp + 1680]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n4_call_builtin_prolog_α
n3_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1640], rax
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1624], rax
                        lea              rdi, [rsp + 1616]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n5_var_α
n4_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n6_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1576], rax
                        .section         .rodata
.Lrkfn72:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]
                        lea              rsi, [rsp + 1568]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n7_lit_string_α
n6_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 0
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n8_call_builtin_prolog_α
.Lx73_0:                .quad            .Lx73_0_s
.Lx73_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1528], rax
                        .section         .rodata
.Lrkfn75:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn75]
                        lea              rsi, [rsp + 1520]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_var_ref_α
n8_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rsp + 1808]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n10_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              qword ptr [rsp + 1488], 3            # result
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rsp + 1496], rax;         jmp   n11_call_builtin_prolog_α
.Lx78_0:                .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1464], rax
                        .section         .rodata
.Lrkfn80:               .string          "$ax_abs"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn80]
                        lea              rsi, [rsp + 1456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n12_call_builtin_prolog_α
n11_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1416], rax
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1400], rax
                        lea              rdi, [rsp + 1392]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n13_var_α
n12_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              rax, qword ptr [rsp + 1808]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1816]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1352], rax
                        .section         .rodata
.Lrkfn85:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn85]
                        lea              rsi, [rsp + 1344]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_lit_string_α
n14_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              qword ptr [rsp + 1312], 2            # result
                        mov              dword ptr [rsp + 1316], 0
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n16_call_builtin_prolog_α
.Lx86_0:                .quad            .Lx86_0_s
.Lx86_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1304], rax
                        .section         .rodata
.Lrkfn88:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rsp + 1296]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n17_var_ref_α
n16_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1792]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx;         jmp   n18_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      mov              qword ptr [rsp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n19_call_builtin_prolog_α
.Lx91_0:                .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1240], rax
                        .section         .rodata
.Lrkfn93:               .string          "$ax_sign"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn93]
                        lea              rsi, [rsp + 1232]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n20_call_builtin_prolog_α
n19_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1176], rax
                        lea              rdi, [rsp + 1168]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_var_α
n20_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n22_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1128], rax
                        .section         .rodata
.Lrkfn98:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn98]
                        lea              rsi, [rsp + 1120]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n23_lit_string_α
n22_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              qword ptr [rsp + 1088], 2            # result
                        mov              dword ptr [rsp + 1092], 0
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n24_call_builtin_prolog_α
.Lx99_0:                .quad            .Lx99_0_s
.Lx99_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1080], rax
                        .section         .rodata
.Lrkfn101:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn101]
                        lea              rsi, [rsp + 1072]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n25_var_ref_α
n24_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1776]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n26_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              qword ptr [rsp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n27_call_builtin_prolog_α
.Lx104_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax
                        .section         .rodata
.Lrkfn106:              .string          "$ax_sign"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn106]
                        lea              rsi, [rsp + 1008]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n28_call_builtin_prolog_α
n27_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax
                        lea              rdi, [rsp + 944]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n29_var_α
n28_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 920], rax;          jmp   n30_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 904], rax
                        .section         .rodata
.Lrkfn111:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn111]
                        lea              rsi, [rsp + 896]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n31_lit_string_α
n30_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:       mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 0
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n32_call_builtin_prolog_α
.Lx112_0:               .quad            .Lx112_0_s
.Lx112_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 856], rax
                        .section         .rodata
.Lrkfn114:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn114]
                        lea              rsi, [rsp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n33_var_ref_α
n32_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1760]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n34_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      mov              qword ptr [rsp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n35_call_builtin_prolog_α
.Lx117_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        .section         .rodata
.Lrkfn119:              .string          "$ax_sign"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rsp + 784]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n36_call_builtin_prolog_α
n35_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        lea              rdi, [rsp + 720]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n37_var_α
n36_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 696], rax;          jmp   n38_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 680], rax
                        .section         .rodata
.Lrkfn124:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn124]
                        lea              rsi, [rsp + 672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n39_lit_string_α
n38_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              qword ptr [rsp + 640], 2             # result
                        mov              dword ptr [rsp + 644], 0
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n40_call_builtin_prolog_α
.Lx125_0:               .quad            .Lx125_0_s
.Lx125_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 632], rax
                        .section         .rodata
.Lrkfn127:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]
                        lea              rsi, [rsp + 624]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n41_var_ref_α
n40_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1744]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx;          jmp   n42_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      mov              qword ptr [rsp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n43_lit_integer_α
.Lx130_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:      mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n44_call_builtin_prolog_α
.Lx131_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 592]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 552], rax
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn133:              .string          "$ax_max"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn133]
                        lea              rsi, [rsp + 528]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n45_call_builtin_prolog_α
n44_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        lea              rdi, [rsp + 464]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n46_var_α
n45_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 440], rax;          jmp   n47_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 424], rax
                        .section         .rodata
.Lrkfn138:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn138]
                        lea              rsi, [rsp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n48_lit_string_α
n47_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 0
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n49_call_builtin_prolog_α
.Lx139_0:               .quad            .Lx139_0_s
.Lx139_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 376], rax
                        .section         .rodata
.Lrkfn141:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn141]
                        lea              rsi, [rsp + 368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n50_var_ref_α
n49_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rsp + 1728]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n51_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:      mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n52_lit_integer_α
.Lx144_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n53_call_builtin_prolog_α
.Lx145_0:               .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n53_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 280], rax
                        .section         .rodata
.Lrkfn147:              .string          "$ax_min"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn147]
                        lea              rsi, [rsp + 272]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n54_call_builtin_prolog_α
n53_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_prolog_α:
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
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n55_var_α
n54_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 184], rax;          jmp   n56_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn152:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn152]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n57_lit_string_α
n56_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx153_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n58_call_builtin_prolog_α
.Lx153_0:               .quad            .Lx153_0_s
.Lx153_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_prolog_α:
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn155:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn155]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n61_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n59_move_label_α
n58_call_builtin_prolog_β:
                                                                              jmp   n61_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_move_label_α:       lea              rax, [rip + n61_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n60_disjunction_α:      mov              qword ptr [rip + rtccb+40], r8
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n60_disjunction_β:                                                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_prolog_α:
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
n61_call_builtin_prolog_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n60_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1864]
                        add              rsp, 1888;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 1872]
                        add              rsp, 1888;                           jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
