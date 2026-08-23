                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        .section         .rodata
.Lopn0:                 .string          "~"
.Lopt0:                 .string          "fy"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lopn0]
                        mov              esi, 200
                        lea              rdx, [rip + .Lopt0]
                        call             prolog_op_table_add@PLT
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
                        sub              rsp, 1776
                        mov              qword ptr [rsp + 1752], rcx
                        mov              qword ptr [rsp + 1760], rdx
                        mov              qword ptr [rsp + 1768], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1744
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
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
                        test             rax, rax;                            je    .Lx56_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx56_101
.Lx56_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx56_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx56_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx56_101
.Lx56_100:              lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx56_101:              mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1_lit_string_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 1
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n2_lit_string_α
.Lx57_0:                .quad            .Lx57_0_s
.Lx57_0_s:              .string          "~"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rsp + 1440], 2            # result
                        mov              dword ptr [rsp + 1444], 1
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rsp + 1448], rax;         jmp   n3_lit_string_α
.Lx58_0:                .quad            .Lx58_0_s
.Lx58_0_s:              .string          "~"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 4
                        mov              qword ptr [rsp + 1360], 2            # result
                        mov              dword ptr [rsp + 1364], 1
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n4_call_builtin_prolog_α
.Lx59_0:                .quad            .Lx59_0_s
.Lx59_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              r11, 5
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1416], rax
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1400], rax
                        lea              rdi, [rsp + 1392]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n5_call_builtin_prolog_α
n4_call_builtin_prolog_β:
                        mov              r11, 5;                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n5_call_builtin_prolog_α:
                        mov              r11, 6
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1496], rax
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1480], rax
                        lea              rdi, [rsp + 1472]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n14_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n6_lit_string_α
n5_call_builtin_prolog_β:
                        mov              r11, 6;                              jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_string_α:        mov              r11, 7
                        mov              qword ptr [rsp + 1696], 2            # result
                        mov              dword ptr [rsp + 1700], 1
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rsp + 1704], rax;         jmp   n7_lit_string_α
.Lx62_0:                .quad            .Lx62_0_s
.Lx62_0_s:              .string          "~"
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rsp + 1616], 2            # result
                        mov              dword ptr [rsp + 1620], 1
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n8_lit_string_α
.Lx63_0:                .quad            .Lx63_0_s
.Lx63_0_s:              .string          "~"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rsp + 1536], 2            # result
                        mov              dword ptr [rsp + 1540], 1
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n9_call_builtin_prolog_α
.Lx64_0:                .quad            .Lx64_0_s
.Lx64_0_s:              .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              r11, 10
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
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n10_call_builtin_prolog_α
n9_call_builtin_prolog_β:
                        mov              r11, 10;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              r11, 11
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1672], rax
                        mov              rax, qword ptr [rsp + 1696]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1704]
                        mov              qword ptr [rsp + 1656], rax
                        lea              rdi, [rsp + 1648]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx
                        cmp              al, 104;                             je    n14_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n11_call_builtin_prolog_α
n10_call_builtin_prolog_β:
                        mov              r11, 11;                             jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              r11, 12
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1336], rax
                        .section         .rodata
.Lrkfn68:               .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn68]
                        lea              rsi, [rsp + 1328]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    n14_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n12_lit_string_α
n11_call_builtin_prolog_β:
                        mov              r11, 12;                             jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_string_α:       mov              r11, 13
                        mov              qword ptr [rsp + 1248], 2            # result
                        mov              dword ptr [rsp + 1252], 3
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n13_call_builtin_prolog_α
.Lx69_0:                .quad            .Lx69_0_s
.Lx69_0_s:              .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              r11, 14
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1240], rax
                        .section         .rodata
.Lrkfn71:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn71]
                        lea              rsi, [rsp + 1232]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    n55_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_lit_string_α
n13_call_builtin_prolog_β:
                        mov              r11, 14;                             jmp   n55_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:       mov              r11, 15
                        mov              qword ptr [rsp + 1296], 2            # result
                        mov              dword ptr [rsp + 1300], 2
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n15_call_builtin_prolog_α
.Lx72_0:                .quad            .Lx72_0_s
.Lx72_0_s:              .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              r11, 16
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1288], rax
                        .section         .rodata
.Lrkfn74:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn74]
                        lea              rsi, [rsp + 1280]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n55_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n16_lit_string_α
n15_call_builtin_prolog_β:
                        mov              r11, 16;                             jmp   n55_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rsp + 1200], 2            # result
                        mov              dword ptr [rsp + 1204], 0
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n17_call_builtin_prolog_α
.Lx75_0:                .quad            .Lx75_0_s
.Lx75_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              r11, 18
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1192], rax
                        .section         .rodata
.Lrkfn77:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn77]
                        lea              rsi, [rsp + 1184]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n55_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n18_var_ref_α
n17_call_builtin_prolog_β:
                        mov              r11, 18;                             jmp   n55_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1712]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n19_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 1
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n20_lit_string_α
.Lx80_0:                .quad            .Lx80_0_s
.Lx80_0_s:              .string          "~"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       mov              r11, 21
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 3
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n21_call_builtin_prolog_α
.Lx81_0:                .quad            .Lx81_0_s
.Lx81_0_s:              .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              r11, 22
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1112], rax
                        lea              rdi, [rsp + 1104]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    n30_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n22_call_builtin_prolog_α
n21_call_builtin_prolog_β:
                        mov              r11, 22;                             jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_prolog_α:
                        mov              r11, 23
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1032], rax
                        lea              rdi, [rsp + 1024]
                        lea              r8, [rsp + 1024]
.Lx83_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx83_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx83_41
                        cmp              esi, 1;                              jne   .Lx83_55
                        mov              r8, rax;                             jmp   .Lx83_40
.Lx83_55:               cmp              esi, 2;                              jne   .Lx83_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx83_41
                        mov              r8, rax;                             jmp   .Lx83_40
.Lx83_56:               cmp              al, 72;                              jne   .Lx83_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx83_41
                        cmp              rax, r8;                             je    .Lx83_41
                        mov              r8, rax;                             jmp   .Lx83_40
.Lx83_41:               lea              r9, [rsp + 1040]
.Lx83_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx83_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx83_43
                        cmp              esi, 1;                              jne   .Lx83_57
                        mov              r9, rax;                             jmp   .Lx83_42
.Lx83_57:               cmp              esi, 2;                              jne   .Lx83_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx83_43
                        mov              r9, rax;                             jmp   .Lx83_42
.Lx83_58:               cmp              al, 72;                              jne   .Lx83_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx83_43
                        cmp              rax, r9;                             je    .Lx83_43
                        mov              r9, rax;                             jmp   .Lx83_42
.Lx83_43:               cmp              r8, r9;                              je    .Lx83_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx83_44
                        cmp              al, 104;                             je    .Lx83_44
                        cmp              al, 72;                              jne   .Lx83_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx83_44
                                                                              jmp   .Lx83_45
.Lx83_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx83_53
                        cmp              al, 104;                             je    .Lx83_53
                        cmp              al, 72;                              jne   .Lx83_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx83_53
                                                                              jmp   .Lx83_46
.Lx83_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx83_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx83_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx83_51
.Lx83_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx83_47
                        cmp              al, 104;                             je    .Lx83_47
                        cmp              al, 72;                              jne   .Lx83_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx83_47
                                                                              jmp   .Lx83_48
.Lx83_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx83_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx83_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx83_51
.Lx83_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx83_49
                        cmp              dl, 80;                              je    .Lx83_53
                                                                              jmp   .Lx83_52
.Lx83_49:               cmp              dl, 80;                              je    .Lx83_52
                        cmp              cl, 5;                               je    .Lx83_53
                        cmp              dl, 5;                               je    .Lx83_53
                        cmp              cl, 3;                               jne   .Lx83_50
                        cmp              dl, 3;                               jne   .Lx83_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx83_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx83_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx83_51
                                                                              jmp   .Lx83_52
.Lx83_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx83_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx83_53
.Lx83_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx83_54
.Lx83_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx83_54
.Lx83_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx83_54:               mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              al, 104;                             je    n30_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n23_var_ref_α
n22_call_builtin_prolog_β:
                        mov              r11, 23;                             jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1712]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n24_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       mov              r11, 25
                        mov              qword ptr [rsp + 992], 2             # result
                        mov              dword ptr [rsp + 996], 1
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 1000], rax;         jmp   n25_lit_string_α
.Lx86_0:                .quad            .Lx86_0_s
.Lx86_0_s:              .string          "~"
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 3
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n26_call_builtin_prolog_α
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              r11, 27
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 952], rax
                        lea              rdi, [rsp + 944]
                        mov              esi, 2
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
                        cmp              al, 104;                             je    n30_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n27_call_builtin_prolog_α
n26_call_builtin_prolog_β:
                        mov              r11, 27;                             jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
                        mov              r11, 28
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 888], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax
                        .section         .rodata
.Lrkfn90:               .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn90]
                        lea              rsi, [rsp + 864]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx
                        cmp              al, 104;                             je    n30_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n28_lit_string_α
n27_call_builtin_prolog_β:
                        mov              r11, 28;                             jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:       mov              r11, 29
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 3
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n29_call_builtin_prolog_α
.Lx91_0:                .quad            .Lx91_0_s
.Lx91_0_s:              .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_prolog_α:
                        mov              r11, 30
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 776], rax
                        .section         .rodata
.Lrkfn93:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn93]
                        lea              rsi, [rsp + 768]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n55_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_lit_string_α
n29_call_builtin_prolog_β:
                        mov              r11, 30;                             jmp   n55_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       mov              r11, 31
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 2
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n31_call_builtin_prolog_α
.Lx94_0:                .quad            .Lx94_0_s
.Lx94_0_s:              .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              r11, 32
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn96:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn96]
                        lea              rsi, [rsp + 816]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n55_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n32_lit_string_α
n31_call_builtin_prolog_β:
                        mov              r11, 32;                             jmp   n55_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 0
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n33_call_builtin_prolog_α
.Lx97_0:                .quad            .Lx97_0_s
.Lx97_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_prolog_α:
                        mov              r11, 34
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 728], rax
                        .section         .rodata
.Lrkfn99:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn99]
                        lea              rsi, [rsp + 720]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx
                        cmp              al, 104;                             je    n55_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n34_lit_string_α
n33_call_builtin_prolog_β:
                        mov              r11, 34;                             jmp   n55_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 1
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n35_lit_string_α
.Lx100_0:               .quad            .Lx100_0_s
.Lx100_0_s:             .string          "~"
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              r11, 36
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 1
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n36_lit_string_α
.Lx101_0:               .quad            .Lx101_0_s
.Lx101_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 1
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n37_lit_string_α
.Lx102_0:               .quad            .Lx102_0_s
.Lx102_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:       mov              r11, 38
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 1
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n38_call_builtin_prolog_α
.Lx103_0:               .quad            .Lx103_0_s
.Lx103_0_s:             .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n38_call_builtin_prolog_α:
                        mov              r11, 39
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n39_call_builtin_prolog_α
n38_call_builtin_prolog_β:
                        mov              r11, 39;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_prolog_α:
                        mov              r11, 40
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    n49_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n40_lit_string_α
n39_call_builtin_prolog_β:
                        mov              r11, 40;                             jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              r11, 41
                        mov              qword ptr [rsp + 688], 2             # result
                        mov              dword ptr [rsp + 692], 1
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 696], rax;          jmp   n41_lit_string_α
.Lx106_0:               .quad            .Lx106_0_s
.Lx106_0_s:             .string          "~"
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       mov              r11, 42
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 1
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n42_lit_string_α
.Lx107_0:               .quad            .Lx107_0_s
.Lx107_0_s:             .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              r11, 43
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 1
                        mov              rax, qword ptr [rip + .Lx108_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n43_lit_string_α
.Lx108_0:               .quad            .Lx108_0_s
.Lx108_0_s:             .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_string_α:       mov              r11, 44
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 1
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n44_call_builtin_prolog_α
.Lx109_0:               .quad            .Lx109_0_s
.Lx109_0_s:             .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              r11, 45
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 552], rax
                        lea              rdi, [rsp + 544]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    main_ω
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n45_call_builtin_prolog_α
n44_call_builtin_prolog_β:
                        mov              r11, 45;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_prolog_α:
                        mov              r11, 46
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 648], rax
                        lea              rdi, [rsp + 640]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n49_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n46_call_builtin_prolog_α
n45_call_builtin_prolog_β:
                        mov              r11, 46;                             jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_prolog_α:
                        mov              r11, 47
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 280], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 264], rax
                        .section         .rodata
.Lrkfn113:              .string          "$atop_eq"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn113]
                        lea              rsi, [rsp + 256]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n49_lit_string_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n47_lit_string_α
n46_call_builtin_prolog_β:
                        mov              r11, 47;                             jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       mov              r11, 48
                        mov              qword ptr [rsp + 176], 2             # result
                        mov              dword ptr [rsp + 180], 3
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 184], rax;          jmp   n48_call_builtin_prolog_α
.Lx114_0:               .quad            .Lx114_0_s
.Lx114_0_s:             .string          "yes"
#-----------------------------------------------------------------------------------------------------------------------
n48_call_builtin_prolog_α:
                        mov              r11, 49
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn116:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn116]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n55_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n51_lit_string_α
n48_call_builtin_prolog_β:
                        mov              r11, 49;                             jmp   n55_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              r11, 50
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 2
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n50_call_builtin_prolog_α
.Lx117_0:               .quad            .Lx117_0_s
.Lx117_0_s:             .string          "no"
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_prolog_α:
                        mov              r11, 51
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax
                        .section         .rodata
.Lrkfn119:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rsp + 208]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n55_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n51_lit_string_α
n50_call_builtin_prolog_β:
                        mov              r11, 51;                             jmp   n55_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              r11, 52
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n52_call_builtin_prolog_α
.Lx120_0:               .quad            .Lx120_0_s
.Lx120_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_prolog_α:
                        mov              r11, 53
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn122:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn122]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n55_call_builtin_prolog_α
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n53_move_label_α
n52_call_builtin_prolog_β:
                        mov              r11, 53;                             jmp   n55_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n53_move_label_α:       mov              r11, 54
                        lea              rax, [rip + n55_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n54_disjunction_α:      mov              r11, 55
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
n54_disjunction_β:      mov              r11, 55;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_prolog_α:
                        mov              r11, 56
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_ω
n55_call_builtin_prolog_β:
                        mov              r11, 56;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n54_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1752]
                        add              rsp, 1776;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 1760]
                        add              rsp, 1776;                           jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
