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
                        sub              rsp, 1752
                        mov              rdi, rsp
                        mov              ecx, 1752
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1744], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_string_α:
                        mov              qword ptr [rbp + 1664], 1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n1_lit_integer_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "a. "
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:
                        mov              qword ptr [rbp + 1712], 6
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n2_lit_integer_α
.Lx66_0:
                        .quad            9223372036854775805
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 1728], 6
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n3_to_α
.Lx67_0:
                        .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n3_to_α:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1712], 6
                        mov              qword ptr [rbp + 1720], rax
                        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1728], 6
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1696], rax
.Lx69_0:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              rcx, qword ptr [rbp + 1736]
                        cmp              rax, rcx
                                                                                        jg    n5_lit_string_α
                        mov              qword ptr [rbp + 1680], 6
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n4_call_builtin_icon_α
n3_to_β:
                        inc              qword ptr [rbp + 1696]
                                                                                        jmp   .Lx69_0
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lrkfn71:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn71]
                        lea              rsi, [rbp + 1616]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n3_to_β
                                                                                        jmp   n3_to_β
n4_call_builtin_icon_β:
                                                                                        jmp   n3_to_β
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n6_lit_integer_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "b. "
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 1552], 6
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n7_lit_integer_α
.Lx73_0:
                        .quad            9223372036854775792
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 1568], 6
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n8_lit_integer_α
.Lx74_0:
                        .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rbp + 1584], 6
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n9_to_by_α
.Lx75_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n9_to_by_α:
                        mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1552], 6
                        mov              qword ptr [rbp + 1560], rax
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1568], 6
                        mov              qword ptr [rbp + 1576], rax
                        mov              rdi, qword ptr [rbp + 1584]
                        mov              rsi, qword ptr [rbp + 1592]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1584], 6
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1536], rax
.Lx77_0:
                        mov              rax, qword ptr [rbp + 1536]
                        mov              rcx, qword ptr [rbp + 1576]
                        mov              rdx, qword ptr [rbp + 1592]
                        cmp              rdx, 0
                                                                                        jl    .Lx77_1
                        cmp              rax, rcx
                                                                                        jg    n11_lit_string_α
                                                                                        jmp   .Lx77_2
.Lx77_1:
                        cmp              rax, rcx
                                                                                        jl    n11_lit_string_α
.Lx77_2:
                        mov              qword ptr [rbp + 1520], 6
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n10_call_builtin_icon_α
n9_to_by_β:
                        mov              rdx, qword ptr [rbp + 1592]
                        mov              rax, qword ptr [rbp + 1536]
                        add              rax, rdx
                        mov              qword ptr [rbp + 1536], rax
                                                                                        jmp   .Lx77_0
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn79:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn79]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    n9_to_by_β
                                                                                        jmp   n9_to_by_β
n10_call_builtin_icon_β:
                                                                                        jmp   n9_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n12_lit_integer_α
.Lx80_0:
                        .quad            .Lx80_0_s
.Lx80_0_s:
                        .string          "c. "
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 1392], 6
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n13_lit_integer_α
.Lx81_0:
                        .quad            9223372036854775794
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:
                        mov              qword ptr [rbp + 1408], 6
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n14_lit_integer_α
.Lx82_0:
                        .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 1424], 6
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n15_to_by_α
.Lx83_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n15_to_by_α:
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1392], 6
                        mov              qword ptr [rbp + 1400], rax
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1408], 6
                        mov              qword ptr [rbp + 1416], rax
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1424], 6
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1376], rax
.Lx85_0:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1416]
                        mov              rdx, qword ptr [rbp + 1432]
                        cmp              rdx, 0
                                                                                        jl    .Lx85_1
                        cmp              rax, rcx
                                                                                        jg    n17_lit_string_α
                                                                                        jmp   .Lx85_2
.Lx85_1:
                        cmp              rax, rcx
                                                                                        jl    n17_lit_string_α
.Lx85_2:
                        mov              qword ptr [rbp + 1360], 6
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n16_call_builtin_icon_α
n15_to_by_β:
                        mov              rdx, qword ptr [rbp + 1432]
                        mov              rax, qword ptr [rbp + 1376]
                        add              rax, rdx
                        mov              qword ptr [rbp + 1376], rax
                                                                                        jmp   .Lx85_0
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn87:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn87]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n15_to_by_β
                                                                                        jmp   n15_to_by_β
n16_call_builtin_icon_β:
                                                                                        jmp   n15_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n18_lit_integer_α
.Lx88_0:
                        .quad            .Lx88_0_s
.Lx88_0_s:
                        .string          "d. "
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 6
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n19_lit_integer_α
.Lx89_0:
                        .quad            9223372036854775796
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 1248], 6
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n20_lit_integer_α
.Lx90_0:
                        .quad            9223372036854775807
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 6
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n21_to_by_α
.Lx91_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n21_to_by_α:
                        mov              rdi, qword ptr [rbp + 1232]
                        mov              rsi, qword ptr [rbp + 1240]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1232], 6
                        mov              qword ptr [rbp + 1240], rax
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1248], 6
                        mov              qword ptr [rbp + 1256], rax
                        mov              rdi, qword ptr [rbp + 1264]
                        mov              rsi, qword ptr [rbp + 1272]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1264], 6
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1216], rax
.Lx93_0:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rcx, qword ptr [rbp + 1256]
                        mov              rdx, qword ptr [rbp + 1272]
                        cmp              rdx, 0
                                                                                        jl    .Lx93_1
                        cmp              rax, rcx
                                                                                        jg    n23_lit_string_α
                                                                                        jmp   .Lx93_2
.Lx93_1:
                        cmp              rax, rcx
                                                                                        jl    n23_lit_string_α
.Lx93_2:
                        mov              qword ptr [rbp + 1200], 6
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n22_call_builtin_icon_α
n21_to_by_β:
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              rax, qword ptr [rbp + 1216]
                        add              rax, rdx
                        mov              qword ptr [rbp + 1216], rax
                                                                                        jmp   .Lx93_0
#-----------------------------------------------------------------------------------------------------------------------
n22_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lrkfn95:               .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn95]
                        lea              rsi, [rbp + 1136]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 99
                                                                                        je    n21_to_by_β
                                                                                        jmp   n21_to_by_β
n22_call_builtin_icon_β:
                                                                                        jmp   n21_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n24_lit_integer_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "e. "
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx97_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n25_lit_integer_α
.Lx97_0:
                        .quad            9223372036854775811
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 6
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n26_lit_integer_α
.Lx98_0:
                        .quad            9223372036854775809
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 6
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n27_to_by_α
.Lx99_0:
                        .quad            18446744073709551615
#-----------------------------------------------------------------------------------------------------------------------
n27_to_by_α:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1072], 6
                        mov              qword ptr [rbp + 1080], rax
                        mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1088], 6
                        mov              qword ptr [rbp + 1096], rax
                        mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 1104], 6
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1056], rax
.Lx101_0:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1112]
                        cmp              rdx, 0
                                                                                        jl    .Lx101_1
                        cmp              rax, rcx
                                                                                        jg    n29_lit_string_α
                                                                                        jmp   .Lx101_2
.Lx101_1:
                        cmp              rax, rcx
                                                                                        jl    n29_lit_string_α
.Lx101_2:
                        mov              qword ptr [rbp + 1040], 6
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n28_call_builtin_icon_α
n27_to_by_β:
                        mov              rdx, qword ptr [rbp + 1112]
                        mov              rax, qword ptr [rbp + 1056]
                        add              rax, rdx
                        mov              qword ptr [rbp + 1056], rax
                                                                                        jmp   .Lx101_0
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lrkfn103:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]
                        lea              rsi, [rbp + 976]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n27_to_by_β
                                                                                        jmp   n27_to_by_β
n28_call_builtin_icon_β:
                                                                                        jmp   n27_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n30_lit_integer_α
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          "f. "
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 912], 6
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n31_lit_integer_α
.Lx105_0:
                        .quad            9223372036854775824
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        mov              qword ptr [rbp + 928], 6
                        mov              rax, qword ptr [rip + .Lx106_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n32_lit_integer_α
.Lx106_0:
                        .quad            9223372036854775809
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:
                        mov              qword ptr [rbp + 944], 6
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n33_to_by_α
.Lx107_0:
                        .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n33_to_by_α:
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 912], 6
                        mov              qword ptr [rbp + 920], rax
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 928], 6
                        mov              qword ptr [rbp + 936], rax
                        mov              rdi, qword ptr [rbp + 944]
                        mov              rsi, qword ptr [rbp + 952]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 944], 6
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 896], rax
.Lx109_0:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 952]
                        cmp              rdx, 0
                                                                                        jl    .Lx109_1
                        cmp              rax, rcx
                                                                                        jg    n35_lit_string_α
                                                                                        jmp   .Lx109_2
.Lx109_1:
                        cmp              rax, rcx
                                                                                        jl    n35_lit_string_α
.Lx109_2:
                        mov              qword ptr [rbp + 880], 6
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n34_call_builtin_icon_α
n33_to_by_β:
                        mov              rdx, qword ptr [rbp + 952]
                        mov              rax, qword ptr [rbp + 896]
                        add              rax, rdx
                        mov              qword ptr [rbp + 896], rax
                                                                                        jmp   .Lx109_0
#-----------------------------------------------------------------------------------------------------------------------
n34_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        .section         .rodata
.Lrkfn111:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn111]
                        lea              rsi, [rbp + 816]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n33_to_by_β
                                                                                        jmp   n33_to_by_β
n34_call_builtin_icon_β:
                                                                                        jmp   n33_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 704], 1
                        mov              rax, qword ptr [rip + .Lx112_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n36_lit_integer_α
.Lx112_0:
                        .quad            .Lx112_0_s
.Lx112_0_s:
                        .string          "g. "
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n37_lit_integer_α
.Lx113_0:
                        .quad            9223372036854775822
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:
                        mov              qword ptr [rbp + 768], 6
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n38_lit_integer_α
.Lx114_0:
                        .quad            9223372036854775809
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx115_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n39_to_by_α
.Lx115_0:
                        .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n39_to_by_α:
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 752], 6
                        mov              qword ptr [rbp + 760], rax
                        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 768], 6
                        mov              qword ptr [rbp + 776], rax
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 784], 6
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 736], rax
.Lx117_0:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 792]
                        cmp              rdx, 0
                                                                                        jl    .Lx117_1
                        cmp              rax, rcx
                                                                                        jg    n41_lit_string_α
                                                                                        jmp   .Lx117_2
.Lx117_1:
                        cmp              rax, rcx
                                                                                        jl    n41_lit_string_α
.Lx117_2:
                        mov              qword ptr [rbp + 720], 6
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n40_call_builtin_icon_α
n39_to_by_β:
                        mov              rdx, qword ptr [rbp + 792]
                        mov              rax, qword ptr [rbp + 736]
                        add              rax, rdx
                        mov              qword ptr [rbp + 736], rax
                                                                                        jmp   .Lx117_0
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lrkfn119:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rbp + 656]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n39_to_by_β
                                                                                        jmp   n39_to_by_β
n40_call_builtin_icon_β:
                                                                                        jmp   n39_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n42_lit_integer_α
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "h. "
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        mov              qword ptr [rbp + 592], 6
                        mov              rax, qword ptr [rip + .Lx121_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n43_lit_integer_α
.Lx121_0:
                        .quad            9223372036854775820
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, qword ptr [rip + .Lx122_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n44_lit_integer_α
.Lx122_0:
                        .quad            9223372036854775809
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx123_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n45_to_by_α
.Lx123_0:
                        .quad            18446744073709551611
#-----------------------------------------------------------------------------------------------------------------------
n45_to_by_α:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 592], 6
                        mov              qword ptr [rbp + 600], rax
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 608], 6
                        mov              qword ptr [rbp + 616], rax
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 624], 6
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 576], rax
.Lx125_0:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 632]
                        cmp              rdx, 0
                                                                                        jl    .Lx125_1
                        cmp              rax, rcx
                                                                                        jg    n47_lit_string_α
                                                                                        jmp   .Lx125_2
.Lx125_1:
                        cmp              rax, rcx
                                                                                        jl    n47_lit_string_α
.Lx125_2:
                        mov              qword ptr [rbp + 560], 6
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n46_call_builtin_icon_α
n45_to_by_β:
                        mov              rdx, qword ptr [rbp + 632]
                        mov              rax, qword ptr [rbp + 576]
                        add              rax, rdx
                        mov              qword ptr [rbp + 576], rax
                                                                                        jmp   .Lx125_0
#-----------------------------------------------------------------------------------------------------------------------
n46_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn127:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn127]
                        lea              rsi, [rbp + 496]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n45_to_by_β
                                                                                        jmp   n45_to_by_β
n46_call_builtin_icon_β:
                                                                                        jmp   n45_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n48_lit_integer_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "i. "
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n49_lit_integer_α
.Lx129_0:
                        .quad            9223372002495037440
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n50_lit_integer_α
.Lx130_0:
                        .quad            9223372032559808512
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n51_to_by_α
.Lx131_0:
                        .quad            4294967296
#-----------------------------------------------------------------------------------------------------------------------
n51_to_by_α:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 432], 6
                        mov              qword ptr [rbp + 440], rax
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 448], 6
                        mov              qword ptr [rbp + 456], rax
                        mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 464], 6
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 416], rax
.Lx133_0:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 472]
                        cmp              rdx, 0
                                                                                        jl    .Lx133_1
                        cmp              rax, rcx
                                                                                        jg    n53_lit_string_α
                                                                                        jmp   .Lx133_2
.Lx133_1:
                        cmp              rax, rcx
                                                                                        jl    n53_lit_string_α
.Lx133_2:
                        mov              qword ptr [rbp + 400], 6
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n52_call_builtin_icon_α
n51_to_by_β:
                        mov              rdx, qword ptr [rbp + 472]
                        mov              rax, qword ptr [rbp + 416]
                        add              rax, rdx
                        mov              qword ptr [rbp + 416], rax
                                                                                        jmp   .Lx133_0
#-----------------------------------------------------------------------------------------------------------------------
n52_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn135:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn135]
                        lea              rsi, [rbp + 336]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n51_to_by_β
                                                                                        jmp   n51_to_by_β
n52_call_builtin_icon_β:
                                                                                        jmp   n51_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n54_lit_integer_α
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "j. "
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n55_lit_integer_α
.Lx137_0:
                        .quad            10376293541461622785
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n56_lit_integer_α
.Lx138_0:
                        .quad            8070450532247928831
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:
                        mov              qword ptr [rbp + 304], 6
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n57_to_by_α
.Lx139_0:
                        .quad            2690150177415976277
#-----------------------------------------------------------------------------------------------------------------------
n57_to_by_α:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 272], 6
                        mov              qword ptr [rbp + 280], rax
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 288], 6
                        mov              qword ptr [rbp + 296], rax
                        mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 304], 6
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 256], rax
.Lx141_0:
                        mov              rax, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 312]
                        cmp              rdx, 0
                                                                                        jl    .Lx141_1
                        cmp              rax, rcx
                                                                                        jg    n59_lit_string_α
                                                                                        jmp   .Lx141_2
.Lx141_1:
                        cmp              rax, rcx
                                                                                        jl    n59_lit_string_α
.Lx141_2:
                        mov              qword ptr [rbp + 240], 6
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n58_call_builtin_icon_α
n57_to_by_β:
                        mov              rdx, qword ptr [rbp + 312]
                        mov              rax, qword ptr [rbp + 256]
                        add              rax, rdx
                        mov              qword ptr [rbp + 256], rax
                                                                                        jmp   .Lx141_0
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn143:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn143]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n57_to_by_β
                                                                                        jmp   n57_to_by_β
n58_call_builtin_icon_β:
                                                                                        jmp   n57_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:
                        mov              qword ptr [rbp + 64], 1
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n60_lit_integer_α
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
                        .string          "k. "
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:
                        mov              qword ptr [rbp + 112], 6
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n61_lit_integer_α
.Lx145_0:
                        .quad            8070450532247928831
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:
                        mov              qword ptr [rbp + 128], 6
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n62_lit_integer_α
.Lx146_0:
                        .quad            10376293541461622785
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx147_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n63_to_by_α
.Lx147_0:
                        .quad            15756593896293575339
#-----------------------------------------------------------------------------------------------------------------------
n63_to_by_α:
                        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 112], 6
                        mov              qword ptr [rbp + 120], rax
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 128], 6
                        mov              qword ptr [rbp + 136], rax
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 144], 6
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 96], rax
.Lx149_0:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 152]
                        cmp              rdx, 0
                                                                                        jl    .Lx149_1
                        cmp              rax, rcx
                                                                                        jg    main_ω
                                                                                        jmp   .Lx149_2
.Lx149_1:
                        cmp              rax, rcx
                                                                                        jl    main_ω
.Lx149_2:
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n64_call_builtin_icon_α
n63_to_by_β:
                        mov              rdx, qword ptr [rbp + 152]
                        mov              rax, qword ptr [rbp + 96]
                        add              rax, rdx
                        mov              qword ptr [rbp + 96], rax
                                                                                        jmp   .Lx149_0
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn151:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn151]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 99
                                                                                        je    n63_to_by_β
                                                                                        jmp   n63_to_by_β
n64_call_builtin_icon_β:
                                                                                        jmp   n63_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1744]
                        add              rsp, 1752
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1744]
                        add              rsp, 1752
                        ret
                        .section         .note.GNU-stack,"",@progbits
