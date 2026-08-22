                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__roman:
                        sub              rsp, 1552
                        mov              qword ptr [rsp + 1528], rcx
                        mov              qword ptr [rsp + 1536], rdx
                        mov              rdi, rsp
                        add              rdi, 1424
                        xor              eax, eax
                        mov              ecx, 64
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
roman_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rsp + 1216], 3            # result
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rsp + 1224], rax;         jmp   n1_lit_integer_α
.Lx64_0:                .quad            1000
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              r11, 2
                        mov              qword ptr [rsp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rsp + 1240], rax;         jmp   n2_lit_integer_α
.Lx65_0:                .quad            900
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n3_lit_integer_α
.Lx66_0:                .quad            500
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n4_lit_integer_α
.Lx67_0:                .quad            400
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 5
                        mov              qword ptr [rsp + 1280], 3            # result
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n5_lit_integer_α
.Lx68_0:                .quad            100
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              r11, 6
                        mov              qword ptr [rsp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n6_lit_integer_α
.Lx69_0:                .quad            90
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rsp + 1312], 3            # result
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n7_lit_integer_α
.Lx70_0:                .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rsp + 1328], 3            # result
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rsp + 1336], rax;         jmp   n8_lit_integer_α
.Lx71_0:                .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       mov              r11, 9
                        mov              qword ptr [rsp + 1344], 3            # result
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n9_lit_integer_α
.Lx72_0:                .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              r11, 10
                        mov              qword ptr [rsp + 1360], 3            # result
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n10_lit_integer_α
.Lx73_0:                .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rsp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rsp + 1384], rax;         jmp   n11_lit_integer_α
.Lx74_0:                .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rsp + 1392], 3            # result
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n12_lit_integer_α
.Lx75_0:                .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rsp + 1408], 3            # result
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n13_make_list_α
.Lx76_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n13_make_list_α:        mov              r11, 14
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1376]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1384]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1192], rax
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1208], rax
                        lea              rdi, [rsp + 1008]
                        mov              esi, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n14_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rsp + 992]
                        mov              rdx, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n15_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              r11, 16
                        mov              qword ptr [rsp + 784], 2             # result
                        mov              dword ptr [rsp + 788], 1
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rsp + 792], rax;          jmp   n16_lit_string_α
.Lx80_0:                .quad            .Lx80_0_s
.Lx80_0_s:              .string          "M"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rsp + 800], 2             # result
                        mov              dword ptr [rsp + 804], 2
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rsp + 808], rax;          jmp   n17_lit_string_α
.Lx81_0:                .quad            .Lx81_0_s
.Lx81_0_s:              .string          "CM"
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              r11, 18
                        mov              qword ptr [rsp + 816], 2             # result
                        mov              dword ptr [rsp + 820], 1
                        mov              rax, qword ptr [rip + .Lx82_0]
                        mov              qword ptr [rsp + 824], rax;          jmp   n18_lit_string_α
.Lx82_0:                .quad            .Lx82_0_s
.Lx82_0_s:              .string          "D"
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              r11, 19
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 2
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n19_lit_string_α
.Lx83_0:                .quad            .Lx83_0_s
.Lx83_0_s:              .string          "CD"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 20
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 1
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n20_lit_string_α
.Lx84_0:                .quad            .Lx84_0_s
.Lx84_0_s:              .string          "C"
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:       mov              r11, 21
                        mov              qword ptr [rsp + 864], 2             # result
                        mov              dword ptr [rsp + 868], 2
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n21_lit_string_α
.Lx85_0:                .quad            .Lx85_0_s
.Lx85_0_s:              .string          "XC"
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:       mov              r11, 22
                        mov              qword ptr [rsp + 880], 2             # result
                        mov              dword ptr [rsp + 884], 1
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rsp + 888], rax;          jmp   n22_lit_string_α
.Lx86_0:                .quad            .Lx86_0_s
.Lx86_0_s:              .string          "L"
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              r11, 23
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 2
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n23_lit_string_α
.Lx87_0:                .quad            .Lx87_0_s
.Lx87_0_s:              .string          "XL"
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rsp + 912], 2             # result
                        mov              dword ptr [rsp + 916], 1
                        mov              rax, qword ptr [rip + .Lx88_0]
                        mov              qword ptr [rsp + 920], rax;          jmp   n24_lit_string_α
.Lx88_0:                .quad            .Lx88_0_s
.Lx88_0_s:              .string          "X"
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       mov              r11, 25
                        mov              qword ptr [rsp + 928], 2             # result
                        mov              dword ptr [rsp + 932], 2
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rsp + 936], rax;          jmp   n25_lit_string_α
.Lx89_0:                .quad            .Lx89_0_s
.Lx89_0_s:              .string          "IX"
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:       mov              r11, 26
                        mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 1
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n26_lit_string_α
.Lx90_0:                .quad            .Lx90_0_s
.Lx90_0_s:              .string          "V"
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       mov              r11, 27
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 2
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n27_lit_string_α
.Lx91_0:                .quad            .Lx91_0_s
.Lx91_0_s:              .string          "IV"
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:       mov              r11, 28
                        mov              qword ptr [rsp + 976], 2             # result
                        mov              dword ptr [rsp + 980], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n28_make_list_α
.Lx92_0:                .quad            .Lx92_0_s
.Lx92_0_s:              .string          "I"
#-----------------------------------------------------------------------------------------------------------------------
n28_make_list_α:        mov              r11, 29
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 648], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 664], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 576]
                        mov              esi, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n29_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:           mov              r11, 30
                        mov              rax, qword ptr [rsp + 560]
                        mov              rdx, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n30_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       mov              r11, 31
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 0
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n31_assign_α
.Lx96_0:                .quad            .Lx96_0_s
.Lx96_0_s:              .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:           mov              r11, 32
                        mov              rax, qword ptr [rsp + 544]
                        mov              rdx, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n32_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      mov              r11, 33
                        mov              qword ptr [rsp + 96], 3              # result
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rsp + 104], rax;          jmp   n33_var_α
.Lx98_0:                .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 136], rax;          jmp   n34_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n34_unop_α:             mov              r11, 35
                        mov              rdi, qword ptr [rsp + 1456]
                        mov              rsi, qword ptr [rsp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx;          jmp   n35_to_α
#-----------------------------------------------------------------------------------------------------------------------
n35_to_α:               mov              r11, 36
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 96], 3
                        mov              qword ptr [rsp + 104], rax
                        mov              rdi, qword ptr [rsp + 112]
                        mov              rsi, qword ptr [rsp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              qword ptr [rsp + 112], 3
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 80], rax
.Lx103_0:               mov              rax, qword ptr [rsp + 80]
                        mov              rcx, qword ptr [rsp + 120]
                        cmp              rax, rcx;                            jg    n62_var_α
                        mov              qword ptr [rsp + 64], 3
                        mov              qword ptr [rsp + 72], rax;           jmp   n36_assign_α
n35_to_β:               mov              r11, 36
                        inc              qword ptr [rsp + 80];                jmp   .Lx103_0
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:           mov              r11, 37
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n37_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n37_bound_α:            mov              r11, 38
                        mov              qword ptr [rsp + 144], rsp;          jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              mov              r11, 39
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 216], rax;          jmp   n39_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1456]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n40_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:              mov              r11, 41
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 248], rax;          jmp   n41_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n41_subscript_α:        mov              r11, 42
                        mov              rdi, qword ptr [rsp + 224]
                        mov              rsi, qword ptr [rsp + 232]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n61_unmark_α
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n42_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n42_deref_α:            mov              r11, 43
                        mov              rdi, qword ptr [rsp + 256]
                        mov              rsi, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n61_unmark_α
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n43_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n43_binop_test_α:       mov              r11, 44
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 112;                             je    .Lx115_0
                        mov              eax, dword ptr [rsp + 272]
                        cmp              al, 112;                             je    .Lx115_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx115_2
                        mov              eax, dword ptr [rsp + 272]
                        cmp              al, 3;                               jne   .Lx115_2
.Lx115_1:               mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 280]
                        cmp              rax, rcx;                            jl    n61_unmark_α
                        mov              rcx, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 192], rcx
                        mov              rcx, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 200], rcx;          jmp   n44_var_α
.Lx115_0:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              r8d, 8
                        lea              r9, [rsp + 192]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            je    .Lx115_1
                        cmp              eax, 1;                              je    n61_unmark_α
                                                                              jmp   n44_var_α
.Lx115_2:               mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 272]
                        mov              rcx, qword ptr [rsp + 280]
                        mov              r8d, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        test             eax, eax;                            jz    n61_unmark_α
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 192], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 200], rax;          jmp   n44_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              mov              r11, 45
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 472], rax;          jmp   n45_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1472]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n46_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              mov              r11, 47
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 504], rax;          jmp   n47_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n47_subscript_α:        mov              r11, 48
                        mov              rdi, qword ptr [rsp + 480]
                        mov              rsi, qword ptr [rsp + 488]
                        mov              rdx, qword ptr [rsp + 496]
                        mov              rcx, qword ptr [rsp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n51_var_α
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n48_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n48_deref_α:            mov              r11, 49
                        mov              rdi, qword ptr [rsp + 512]
                        mov              rsi, qword ptr [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n51_var_α
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n49_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:            mov              r11, 50
                        mov              rdi, qword ptr [rsp + 1424]
                        mov              rsi, qword ptr [rsp + 1432]
                        mov              rdx, qword ptr [rsp + 528]
                        mov              rcx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n50_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              r11, 51
                        mov              rax, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n51_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              mov              r11, 52
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 376], rax;          jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1456]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              mov              r11, 54
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 408], rax;          jmp   n54_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n54_subscript_α:        mov              r11, 55
                        mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n38_var_α
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx;          jmp   n55_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n55_deref_α:            mov              r11, 56
                        mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        cmp              al, 104;                             je    n38_var_α
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n56_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:   mov              r11, 57
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 5;                               je    .Lx135_1
                        cmp              al, 3;                               jne   .Lx135_0
                        mov              eax, dword ptr [rsp + 432]
                        cmp              al, 3;                               jne   .Lx135_0
.Lx135_1:               mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 360], rax;          jmp   n57_coerce_numeric_α
.Lx135_0:               lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 432]
                        lea              rdx, [rsp + 352]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n57_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n57_coerce_numeric_α:   mov              r11, 58
                        mov              eax, dword ptr [rsp + 432]
                        cmp              al, 5;                               je    .Lx137_1
                        cmp              al, 3;                               jne   .Lx137_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lx137_0
.Lx137_1:               mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 344], rax;          jmp   n58_binop_α
.Lx137_0:               lea              rdi, [rsp + 432]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 336]
                        mov              rcx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n58_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:            mov              r11, 59
                        mov              eax, dword ptr [rsp + 352]
                        mov              ecx, dword ptr [rsp + 336]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lx138_2
                        mov              rax, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 344]
                        sub              rax, rdx
                        mov              qword ptr [rsp + 320], 3
                        mov              qword ptr [rsp + 328], rax;          jmp   .Lx138_7
.Lx138_2:               and              edx, 1;                              jz    .Lx138_0
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdi, qword ptr [rsp + 344]
                        cmp              al, 5;                               je    .Lx138_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lx138_4
.Lx138_3:               movq             xmm0, rsi
.Lx138_4:               cmp              cl, 5;                               je    .Lx138_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lx138_6
.Lx138_5:               movq             xmm1, rdi
.Lx138_6:               subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              qword ptr [rsp + 320], 5
                        mov              qword ptr [rsp + 328], rax
.Lx138_7:                                                                     jmp   n59_assign_α
.Lx138_0:               mov              rdi, qword ptr [rsp + 352]
                        mov              rsi, qword ptr [rsp + 360]
                        mov              rdx, qword ptr [rsp + 336]
                        mov              rcx, qword ptr [rsp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_sub@PLT
                        cmp              al, 104;                             je    n38_var_α
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48];     jmp   n59_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:           mov              r11, 60
                        mov              rax, qword ptr [rsp + 320]
                        mov              rdx, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n60_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n60_conjunction_α:      mov              r11, 61
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 296], rax;          jmp   n38_var_α
n60_conjunction_β:      mov              r11, 61;                             jmp   n38_var_α
#-----------------------------------------------------------------------------------------------------------------------
n61_unmark_α:           mov              r11, 62
                        mov              rsp, qword ptr [rsp + 144];          jmp   n35_to_β
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:              mov              r11, 63
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 40], rax;           jmp   n63_return_α
#-----------------------------------------------------------------------------------------------------------------------
n63_return_α:           mov              r11, 64
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx;            jmp   roman_γ
#-----------------------------------------------------------------------------------------------------------------------
roman_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
roman_β:
                                                                              jmp   roman_ω
#-----------------------------------------------------------------------------------------------------------------------
roman_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1528]
                        add              rsp, 1552;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
roman_ω:
                        mov              rcx, qword ptr [rsp + 1536]
                        add              rsp, 1552;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
roman_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        lea              rcx, [rip + .Lx146_2]
                        lea              rdx, [rip + .Lx146_3];               jmp   FN__roman
.Lx146_2:               pop              r11
                        pop              r11;                                 jmp   r11
.Lx146_3:               pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r11
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                                                                              jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 384
                        mov              qword ptr [rsp + 360], rcx
                        mov              qword ptr [rsp + 368], rdx
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:     sub              rsp, 16
                        mov              r11, 65
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx156_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n148_call_proc_staged_α
.Lx156_0:               .quad            1776
#-----------------------------------------------------------------------------------------------------------------------
n148_call_proc_staged_α:
                        sub              rsp, 16
                        mov              r11, 66
                        lea              rsi, [rsp + 16]                      # lit_integer
                        call             roman_dcα;                           jmp   .Lx158_2
.Lx158_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx158_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx158_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx158_240
                        add              rsp, 16;                             jmp   n150_lit_integer_α
.Lx158_240:                                                                   jmp   n149_call_builtin_icon_α
n148_call_proc_staged_β:
                        mov              r11, 66;                             jmp   n150_lit_integer_α
.Lx158_0:               .quad            .Lx158_0_s
.Lx158_0_s:             .string          "roman"
#-----------------------------------------------------------------------------------------------------------------------
n149_call_builtin_icon_α:
                        sub              rsp, 16
                        mov              r11, 67
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd160:            .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd160]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx159_240
                        add              rsp, 16;                             jmp   n150_lit_integer_α
.Lx159_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n150_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:     sub              rsp, 16
                        mov              r11, 68
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n151_call_proc_staged_α
.Lx161_0:               .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n151_call_proc_staged_α:
                        sub              rsp, 16
                        mov              r11, 69
                        lea              rsi, [rsp + 16]                      # lit_integer
                        call             roman_dcα;                           jmp   .Lx163_2
.Lx163_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx163_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx163_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx163_240
                        add              rsp, 16;                             jmp   n153_lit_integer_α
.Lx163_240:                                                                   jmp   n152_call_builtin_icon_α
n151_call_proc_staged_β:
                        mov              r11, 69;                             jmp   n153_lit_integer_α
.Lx163_0:               .quad            .Lx163_0_s
.Lx163_0_s:             .string          "roman"
#-----------------------------------------------------------------------------------------------------------------------
n152_call_builtin_icon_α:
                        sub              rsp, 16
                        mov              r11, 70
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd165:            .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd165]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx164_240
                        add              rsp, 16;                             jmp   n153_lit_integer_α
.Lx164_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_call_proc_staged_α
.Lx166_0:               .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n154_call_proc_staged_α:
                        sub              rsp, 16
                        mov              r11, 72
                        lea              rsi, [rsp + 16]                      # lit_integer
                        call             roman_dcα;                           jmp   .Lx168_2
.Lx168_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx168_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
.Lx168_29:              mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lx168_240
                        add              rsp, 16
                        add              rsp, 112;                            jmp   main_ω
.Lx168_240:                                                                   jmp   n155_call_builtin_icon_α
n154_call_proc_staged_β:
                        mov              r11, 72;                             jmp   main_ω
.Lx168_0:               .quad            .Lx168_0_s
.Lx168_0_s:             .string          "roman"
#-----------------------------------------------------------------------------------------------------------------------
n155_call_builtin_icon_α:
                        sub              rsp, 16
                        mov              r11, 73
                        sub              rsp, 16
                        mov              r8, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], r8
                        .section         .rodata
.Lrkfnzd170:            .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfnzd170]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        call             rt_call_arr@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lx169_240
                        add              rsp, 16
                        add              rsp, 128;                            jmp   main_ω
.Lx169_240:             mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 144;                            jmp   main_γ
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
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "roman"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__roman
                        .quad            roman_dcα
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1488
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
