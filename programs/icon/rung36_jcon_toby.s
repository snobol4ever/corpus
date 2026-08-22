                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 1792
                        mov              qword ptr [rsp + 1768], rcx
                        mov              qword ptr [rsp + 1776], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:        mov              qword ptr [rsp + 1664], 2            # result
                        mov              dword ptr [rsp + 1668], 3
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 1672], rax;         jmp   n1_lit_integer_α
.Lx65_0:                .quad            .Lx65_0_s
.Lx65_0_s:              .string          "a. "
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              qword ptr [rsp + 1712], 3            # result
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 1720], rax;         jmp   n2_lit_integer_α
.Lx66_0:                .quad            9223372036854775805
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              qword ptr [rsp + 1728], 3            # result
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n3_to_α
.Lx67_0:                .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n3_to_α:                mov              rdi, qword ptr [rsp + 1712]
                        mov              rsi, qword ptr [rsp + 1720]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1712], 3
                        mov              qword ptr [rsp + 1720], rax
                        mov              rdi, qword ptr [rsp + 1728]
                        mov              rsi, qword ptr [rsp + 1736]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1728], 3
                        mov              qword ptr [rsp + 1736], rax
                        mov              rax, qword ptr [rsp + 1720]
                        mov              qword ptr [rsp + 1696], rax
.Lx69_0:                mov              rax, qword ptr [rsp + 1696]
                        mov              rcx, qword ptr [rsp + 1736]
                        cmp              rax, rcx;                            jg    n5_lit_string_α
                        mov              qword ptr [rsp + 1680], 3
                        mov              qword ptr [rsp + 1688], rax;         jmp   n4_call_builtin_icon_α
n3_to_β:                inc              qword ptr [rsp + 1696];              jmp   .Lx69_0
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α: mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1640], rax
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1624], rax
                        .section         .rodata
.Lrkfn71:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn71]
                        lea              rsi, [rsp + 1616]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx
                        cmp              al, 104;                             je    n3_to_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n3_to_β
n4_call_builtin_icon_β:                                                       jmp   n3_to_β
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:        mov              qword ptr [rsp + 1504], 2            # result
                        mov              dword ptr [rsp + 1508], 3
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n6_lit_integer_α
.Lx72_0:                .quad            .Lx72_0_s
.Lx72_0_s:              .string          "b. "
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              qword ptr [rsp + 1552], 3            # result
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n7_lit_integer_α
.Lx73_0:                .quad            9223372036854775792
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              qword ptr [rsp + 1568], 3            # result
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n8_lit_integer_α
.Lx74_0:                .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       mov              qword ptr [rsp + 1584], 3            # result
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 1592], rax;         jmp   n9_to_by_α
.Lx75_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n9_to_by_α:             mov              rdi, qword ptr [rsp + 1552]
                        mov              rsi, qword ptr [rsp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1552], 3
                        mov              qword ptr [rsp + 1560], rax
                        mov              rdi, qword ptr [rsp + 1568]
                        mov              rsi, qword ptr [rsp + 1576]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1568], 3
                        mov              qword ptr [rsp + 1576], rax
                        mov              rdi, qword ptr [rsp + 1584]
                        mov              rsi, qword ptr [rsp + 1592]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1584], 3
                        mov              qword ptr [rsp + 1592], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1536], rax
.Lx77_0:                mov              rax, qword ptr [rsp + 1536]
                        mov              rcx, qword ptr [rsp + 1576]
                        mov              rdx, qword ptr [rsp + 1592]
                        cmp              rdx, 0;                              jl    .Lx77_1
                        cmp              rax, rcx;                            jg    n11_lit_string_α
                                                                              jmp   .Lx77_2
.Lx77_1:                cmp              rax, rcx;                            jl    n11_lit_string_α
.Lx77_2:                mov              qword ptr [rsp + 1520], 3
                        mov              qword ptr [rsp + 1528], rax;         jmp   n10_call_builtin_icon_α
n9_to_by_β:             mov              rdx, qword ptr [rsp + 1592]
                        mov              rax, qword ptr [rsp + 1536]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1536], rax;         jmp   .Lx77_0
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1480], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1464], rax
                        .section         .rodata
.Lrkfn79:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn79]
                        lea              rsi, [rsp + 1456]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              al, 104;                             je    n9_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n9_to_by_β
n10_call_builtin_icon_β:
                                                                              jmp   n9_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              qword ptr [rsp + 1344], 2            # result
                        mov              dword ptr [rsp + 1348], 3
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n12_lit_integer_α
.Lx80_0:                .quad            .Lx80_0_s
.Lx80_0_s:              .string          "c. "
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              qword ptr [rsp + 1392], 3            # result
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n13_lit_integer_α
.Lx81_0:                .quad            9223372036854775794
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              qword ptr [rsp + 1408], 3            # result
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n14_lit_integer_α
.Lx82_0:                .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      mov              qword ptr [rsp + 1424], 3            # result
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n15_to_by_α
.Lx83_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n15_to_by_α:            mov              rdi, qword ptr [rsp + 1392]
                        mov              rsi, qword ptr [rsp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1392], 3
                        mov              qword ptr [rsp + 1400], rax
                        mov              rdi, qword ptr [rsp + 1408]
                        mov              rsi, qword ptr [rsp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1408], 3
                        mov              qword ptr [rsp + 1416], rax
                        mov              rdi, qword ptr [rsp + 1424]
                        mov              rsi, qword ptr [rsp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1424], 3
                        mov              qword ptr [rsp + 1432], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1376], rax
.Lx85_0:                mov              rax, qword ptr [rsp + 1376]
                        mov              rcx, qword ptr [rsp + 1416]
                        mov              rdx, qword ptr [rsp + 1432]
                        cmp              rdx, 0;                              jl    .Lx85_1
                        cmp              rax, rcx;                            jg    n17_lit_string_α
                                                                              jmp   .Lx85_2
.Lx85_1:                cmp              rax, rcx;                            jl    n17_lit_string_α
.Lx85_2:                mov              qword ptr [rsp + 1360], 3
                        mov              qword ptr [rsp + 1368], rax;         jmp   n16_call_builtin_icon_α
n15_to_by_β:            mov              rdx, qword ptr [rsp + 1432]
                        mov              rax, qword ptr [rsp + 1376]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1376], rax;         jmp   .Lx85_0
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1304], rax
                        .section         .rodata
.Lrkfn87:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn87]
                        lea              rsi, [rsp + 1296]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    n15_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n15_to_by_β
n16_call_builtin_icon_β:
                                                                              jmp   n15_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], 3
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n18_lit_integer_α
.Lx88_0:                .quad            .Lx88_0_s
.Lx88_0_s:              .string          "d. "
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      mov              qword ptr [rsp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n19_lit_integer_α
.Lx89_0:                .quad            9223372036854775796
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              qword ptr [rsp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n20_lit_integer_α
.Lx90_0:                .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              qword ptr [rsp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n21_to_by_α
.Lx91_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n21_to_by_α:            mov              rdi, qword ptr [rsp + 1232]
                        mov              rsi, qword ptr [rsp + 1240]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1232], 3
                        mov              qword ptr [rsp + 1240], rax
                        mov              rdi, qword ptr [rsp + 1248]
                        mov              rsi, qword ptr [rsp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1248], 3
                        mov              qword ptr [rsp + 1256], rax
                        mov              rdi, qword ptr [rsp + 1264]
                        mov              rsi, qword ptr [rsp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1264], 3
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1216], rax
.Lx93_0:                mov              rax, qword ptr [rsp + 1216]
                        mov              rcx, qword ptr [rsp + 1256]
                        mov              rdx, qword ptr [rsp + 1272]
                        cmp              rdx, 0;                              jl    .Lx93_1
                        cmp              rax, rcx;                            jg    n23_lit_string_α
                                                                              jmp   .Lx93_2
.Lx93_1:                cmp              rax, rcx;                            jl    n23_lit_string_α
.Lx93_2:                mov              qword ptr [rsp + 1200], 3
                        mov              qword ptr [rsp + 1208], rax;         jmp   n22_call_builtin_icon_α
n21_to_by_β:            mov              rdx, qword ptr [rsp + 1272]
                        mov              rax, qword ptr [rsp + 1216]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1216], rax;         jmp   .Lx93_0
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1144], rax
                        .section         .rodata
.Lrkfn95:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn95]
                        lea              rsi, [rsp + 1136]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx
                        cmp              al, 104;                             je    n21_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n21_to_by_β
n22_call_builtin_icon_β:
                                                                              jmp   n21_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              qword ptr [rsp + 1024], 2            # result
                        mov              dword ptr [rsp + 1028], 3
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 1032], rax;         jmp   n24_lit_integer_α
.Lx96_0:                .quad            .Lx96_0_s
.Lx96_0_s:              .string          "e. "
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              qword ptr [rsp + 1072], 3            # result
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n25_lit_integer_α
.Lx97_0:                .quad            9223372036854775811
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      mov              qword ptr [rsp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n26_lit_integer_α
.Lx98_0:                .quad            9223372036854775809
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              qword ptr [rsp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n27_to_by_α
.Lx99_0:                .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n27_to_by_α:            mov              rdi, qword ptr [rsp + 1072]
                        mov              rsi, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1072], 3
                        mov              qword ptr [rsp + 1080], rax
                        mov              rdi, qword ptr [rsp + 1088]
                        mov              rsi, qword ptr [rsp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1088], 3
                        mov              qword ptr [rsp + 1096], rax
                        mov              rdi, qword ptr [rsp + 1104]
                        mov              rsi, qword ptr [rsp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 1104], 3
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1056], rax
.Lx101_0:               mov              rax, qword ptr [rsp + 1056]
                        mov              rcx, qword ptr [rsp + 1096]
                        mov              rdx, qword ptr [rsp + 1112]
                        cmp              rdx, 0;                              jl    .Lx101_1
                        cmp              rax, rcx;                            jg    n29_lit_string_α
                                                                              jmp   .Lx101_2
.Lx101_1:               cmp              rax, rcx;                            jl    n29_lit_string_α
.Lx101_2:               mov              qword ptr [rsp + 1040], 3
                        mov              qword ptr [rsp + 1048], rax;         jmp   n28_call_builtin_icon_α
n27_to_by_β:            mov              rdx, qword ptr [rsp + 1112]
                        mov              rax, qword ptr [rsp + 1056]
                        add              rax, rdx
                        mov              qword ptr [rsp + 1056], rax;         jmp   .Lx101_0
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1000], rax
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 984], rax
                        .section         .rodata
.Lrkfn103:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]
                        lea              rsi, [rsp + 976]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx
                        cmp              al, 104;                             je    n27_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n27_to_by_β
n28_call_builtin_icon_β:
                                                                              jmp   n27_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 3
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n30_lit_integer_α
.Lx104_0:               .quad            .Lx104_0_s
.Lx104_0_s:             .string          "f. "
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              qword ptr [rsp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n31_lit_integer_α
.Lx105_0:               .quad            9223372036854775824
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      mov              qword ptr [rsp + 928], 3             # result
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n32_lit_integer_α
.Lx106_0:               .quad            9223372036854775809
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      mov              qword ptr [rsp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n33_to_by_α
.Lx107_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n33_to_by_α:            mov              rdi, qword ptr [rsp + 912]
                        mov              rsi, qword ptr [rsp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 912], 3
                        mov              qword ptr [rsp + 920], rax
                        mov              rdi, qword ptr [rsp + 928]
                        mov              rsi, qword ptr [rsp + 936]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 928], 3
                        mov              qword ptr [rsp + 936], rax
                        mov              rdi, qword ptr [rsp + 944]
                        mov              rsi, qword ptr [rsp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 944], 3
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 896], rax
.Lx109_0:               mov              rax, qword ptr [rsp + 896]
                        mov              rcx, qword ptr [rsp + 936]
                        mov              rdx, qword ptr [rsp + 952]
                        cmp              rdx, 0;                              jl    .Lx109_1
                        cmp              rax, rcx;                            jg    n35_lit_string_α
                                                                              jmp   .Lx109_2
.Lx109_1:               cmp              rax, rcx;                            jl    n35_lit_string_α
.Lx109_2:               mov              qword ptr [rsp + 880], 3
                        mov              qword ptr [rsp + 888], rax;          jmp   n34_call_builtin_icon_α
n33_to_by_β:            mov              rdx, qword ptr [rsp + 952]
                        mov              rax, qword ptr [rsp + 896]
                        add              rax, rdx
                        mov              qword ptr [rsp + 896], rax;          jmp   .Lx109_0
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 824], rax
                        .section         .rodata
.Lrkfn111:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn111]
                        lea              rsi, [rsp + 816]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n33_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n33_to_by_β
n34_call_builtin_icon_β:
                                                                              jmp   n33_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:       mov              qword ptr [rsp + 704], 2             # result
                        mov              dword ptr [rsp + 708], 3
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rsp + 712], rax;          jmp   n36_lit_integer_α
.Lx112_0:               .quad            .Lx112_0_s
.Lx112_0_s:             .string          "g. "
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n37_lit_integer_α
.Lx113_0:               .quad            9223372036854775822
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      mov              qword ptr [rsp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n38_lit_integer_α
.Lx114_0:               .quad            9223372036854775809
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      mov              qword ptr [rsp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n39_to_by_α
.Lx115_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n39_to_by_α:            mov              rdi, qword ptr [rsp + 752]
                        mov              rsi, qword ptr [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 752], 3
                        mov              qword ptr [rsp + 760], rax
                        mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 768], 3
                        mov              qword ptr [rsp + 776], rax
                        mov              rdi, qword ptr [rsp + 784]
                        mov              rsi, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 784], 3
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 736], rax
.Lx117_0:               mov              rax, qword ptr [rsp + 736]
                        mov              rcx, qword ptr [rsp + 776]
                        mov              rdx, qword ptr [rsp + 792]
                        cmp              rdx, 0;                              jl    .Lx117_1
                        cmp              rax, rcx;                            jg    n41_lit_string_α
                                                                              jmp   .Lx117_2
.Lx117_1:               cmp              rax, rcx;                            jl    n41_lit_string_α
.Lx117_2:               mov              qword ptr [rsp + 720], 3
                        mov              qword ptr [rsp + 728], rax;          jmp   n40_call_builtin_icon_α
n39_to_by_β:            mov              rdx, qword ptr [rsp + 792]
                        mov              rax, qword ptr [rsp + 736]
                        add              rax, rdx
                        mov              qword ptr [rsp + 736], rax;          jmp   .Lx117_0
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 664], rax
                        .section         .rodata
.Lrkfn119:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rsp + 656]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n39_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n39_to_by_β
n40_call_builtin_icon_β:
                                                                              jmp   n39_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:       mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 3
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n42_lit_integer_α
.Lx120_0:               .quad            .Lx120_0_s
.Lx120_0_s:             .string          "h. "
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      mov              qword ptr [rsp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rsp + 600], rax;          jmp   n43_lit_integer_α
.Lx121_0:               .quad            9223372036854775820
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:      mov              qword ptr [rsp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n44_lit_integer_α
.Lx122_0:               .quad            9223372036854775809
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      mov              qword ptr [rsp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n45_to_by_α
.Lx123_0:               .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n45_to_by_α:            mov              rdi, qword ptr [rsp + 592]
                        mov              rsi, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 592], 3
                        mov              qword ptr [rsp + 600], rax
                        mov              rdi, qword ptr [rsp + 608]
                        mov              rsi, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 608], 3
                        mov              qword ptr [rsp + 616], rax
                        mov              rdi, qword ptr [rsp + 624]
                        mov              rsi, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 624], 3
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 600]
                        mov              qword ptr [rsp + 576], rax
.Lx125_0:               mov              rax, qword ptr [rsp + 576]
                        mov              rcx, qword ptr [rsp + 616]
                        mov              rdx, qword ptr [rsp + 632]
                        cmp              rdx, 0;                              jl    .Lx125_1
                        cmp              rax, rcx;                            jg    n47_lit_string_α
                                                                              jmp   .Lx125_2
.Lx125_1:               cmp              rax, rcx;                            jl    n47_lit_string_α
.Lx125_2:               mov              qword ptr [rsp + 560], 3
                        mov              qword ptr [rsp + 568], rax;          jmp   n46_call_builtin_icon_α
n45_to_by_β:            mov              rdx, qword ptr [rsp + 632]
                        mov              rax, qword ptr [rsp + 576]
                        add              rax, rdx
                        mov              qword ptr [rsp + 576], rax;          jmp   .Lx125_0
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax
                        .section         .rodata
.Lrkfn127:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]
                        lea              rsi, [rsp + 496]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n45_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n45_to_by_β
n46_call_builtin_icon_β:
                                                                              jmp   n45_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 3
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n48_lit_integer_α
.Lx128_0:               .quad            .Lx128_0_s
.Lx128_0_s:             .string          "i. "
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n49_lit_integer_α
.Lx129_0:               .quad            9223372002495037440
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      mov              qword ptr [rsp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rsp + 456], rax;          jmp   n50_lit_integer_α
.Lx130_0:               .quad            9223372032559808512
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n51_to_by_α
.Lx131_0:               .quad            4294967296
#-----------------------------------------------------------------------------------------------------------------------
n51_to_by_α:            mov              rdi, qword ptr [rsp + 432]
                        mov              rsi, qword ptr [rsp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 432], 3
                        mov              qword ptr [rsp + 440], rax
                        mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 448], 3
                        mov              qword ptr [rsp + 456], rax
                        mov              rdi, qword ptr [rsp + 464]
                        mov              rsi, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 464], 3
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 416], rax
.Lx133_0:               mov              rax, qword ptr [rsp + 416]
                        mov              rcx, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 472]
                        cmp              rdx, 0;                              jl    .Lx133_1
                        cmp              rax, rcx;                            jg    n53_lit_string_α
                                                                              jmp   .Lx133_2
.Lx133_1:               cmp              rax, rcx;                            jl    n53_lit_string_α
.Lx133_2:               mov              qword ptr [rsp + 400], 3
                        mov              qword ptr [rsp + 408], rax;          jmp   n52_call_builtin_icon_α
n51_to_by_β:            mov              rdx, qword ptr [rsp + 472]
                        mov              rax, qword ptr [rsp + 416]
                        add              rax, rdx
                        mov              qword ptr [rsp + 416], rax;          jmp   .Lx133_0
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn135:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]
                        lea              rsi, [rsp + 336]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n51_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n51_to_by_β
n52_call_builtin_icon_β:
                                                                              jmp   n51_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 3
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n54_lit_integer_α
.Lx136_0:               .quad            .Lx136_0_s
.Lx136_0_s:             .string          "j. "
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n55_lit_integer_α
.Lx137_0:               .quad            10376293541461622785
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:      mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n56_lit_integer_α
.Lx138_0:               .quad            8070450532247928831
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:      mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n57_to_by_α
.Lx139_0:               .quad            2690150177415976277
#-----------------------------------------------------------------------------------------------------------------------
n57_to_by_α:            mov              rdi, qword ptr [rsp + 272]
                        mov              rsi, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 272], 3
                        mov              qword ptr [rsp + 280], rax
                        mov              rdi, qword ptr [rsp + 288]
                        mov              rsi, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 288], 3
                        mov              qword ptr [rsp + 296], rax
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 304], 3
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 256], rax
.Lx141_0:               mov              rax, qword ptr [rsp + 256]
                        mov              rcx, qword ptr [rsp + 296]
                        mov              rdx, qword ptr [rsp + 312]
                        cmp              rdx, 0;                              jl    .Lx141_1
                        cmp              rax, rcx;                            jg    n59_lit_string_α
                                                                              jmp   .Lx141_2
.Lx141_1:               cmp              rax, rcx;                            jl    n59_lit_string_α
.Lx141_2:               mov              qword ptr [rsp + 240], 3
                        mov              qword ptr [rsp + 248], rax;          jmp   n58_call_builtin_icon_α
n57_to_by_β:            mov              rdx, qword ptr [rsp + 312]
                        mov              rax, qword ptr [rsp + 256]
                        add              rax, rdx
                        mov              qword ptr [rsp + 256], rax;          jmp   .Lx141_0
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 200], rax
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 184], rax
                        .section         .rodata
.Lrkfn143:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn143]
                        lea              rsi, [rsp + 176]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n57_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n57_to_by_β
n58_call_builtin_icon_β:
                                                                              jmp   n57_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              qword ptr [rsp + 64], 2              # result
                        mov              dword ptr [rsp + 68], 3
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 72], rax;           jmp   n60_lit_integer_α
.Lx144_0:               .quad            .Lx144_0_s
.Lx144_0_s:             .string          "k. "
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:      mov              qword ptr [rsp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rsp + 120], rax;          jmp   n61_lit_integer_α
.Lx145_0:               .quad            8070450532247928831
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      mov              qword ptr [rsp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n62_lit_integer_α
.Lx146_0:               .quad            10376293541461622785
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:      mov              qword ptr [rsp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rsp + 152], rax;          jmp   n63_to_by_α
.Lx147_0:               .quad            15756593896293575339
#-----------------------------------------------------------------------------------------------------------------------
n63_to_by_α:            mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax
                        mov              rdi, qword ptr [rsp + 128]
                        mov              rsi, qword ptr [rsp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 128], 3
                        mov              qword ptr [rsp + 136], rax
                        mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 144], 3
                        mov              qword ptr [rsp + 152], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 96], rax
.Lx149_0:               mov              rax, qword ptr [rsp + 96]
                        mov              rcx, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 152]
                        cmp              rdx, 0;                              jl    .Lx149_1
                        cmp              rax, rcx;                            jg    main_ω
                                                                              jmp   .Lx149_2
.Lx149_1:               cmp              rax, rcx;                            jl    main_ω
.Lx149_2:               mov              qword ptr [rsp + 80], 3
                        mov              qword ptr [rsp + 88], rax;           jmp   n64_call_builtin_icon_α
n63_to_by_β:            mov              rdx, qword ptr [rsp + 152]
                        mov              rax, qword ptr [rsp + 96]
                        add              rax, rdx
                        mov              qword ptr [rsp + 96], rax;           jmp   .Lx149_0
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lrkfn151:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             je    n63_to_by_β
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n63_to_by_β
n64_call_builtin_icon_β:
                                                                              jmp   n63_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        and              rsp, -16
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
