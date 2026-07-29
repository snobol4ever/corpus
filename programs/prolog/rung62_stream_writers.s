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
                        sub              rsp, 1448
                        mov              rdi, rsp
                        mov              ecx, 1448
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1440], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx48_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx48_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx48_101
.Lx48_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx48_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1_lit_string_α
n0_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n2_lit_string_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "user_output"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 1424], 1
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n3_op11_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "quoted atom"
#-----------------------------------------------------------------------------------------------------------------------
n3_op11_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax
                        .section         .rodata
.Lrkfn52:               .string          "$writeq2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn52]
                        lea              rsi, [rbp + 1376]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n4_lit_string_α
n3_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 1344], 1
                        mov              rax, qword ptr [rip + .Lx53_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n6_op11_α
.Lx53_0:
                        .quad            .Lx53_0_s
.Lx53_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
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
n5_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n6_op11_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lrkfn56:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn56]
                        lea              rsi, [rbp + 1328]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n7_lit_string_α
n6_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx57_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n8_lit_string_α
.Lx57_0:
                        .quad            .Lx57_0_s
.Lx57_0_s:
                        .string          "user_output"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              rax, qword ptr [rip + .Lx58_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n9_lit_string_α
.Lx58_0:
                        .quad            .Lx58_0_s
.Lx58_0_s:
                        .string          "~w=~d~n"
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              rax, qword ptr [rip + .Lx59_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n10_lit_string_α
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:
                        mov              qword ptr [rbp + 1200], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n11_lit_string_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n12_lit_integer_α
.Lx61_0:
                        .quad            .Lx61_0_s
.Lx61_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 6
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n13_lit_string_α
.Lx62_0:
                        .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n14_op11_α
.Lx63_0:
                        .quad            .Lx63_0_s
.Lx63_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n14_op11_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1120]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n15_op11_α
n14_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n16_op11_α
n15_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n16_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lrkfn67:               .string          "$format3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn67]
                        lea              rsi, [rbp + 992]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n17_lit_string_α
n16_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n18_lit_string_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          "user_output"
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n19_lit_string_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n20_op11_α
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n20_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n21_lit_string_α
n20_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n22_lit_string_α
.Lx72_0:
                        .quad            .Lx72_0_s
.Lx72_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n23_lit_string_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          "quoted"
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx74_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n24_op11_α
.Lx74_0:
                        .quad            .Lx74_0_s
.Lx74_0_s:
                        .string          "true"
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n25_lit_string_α
n24_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n26_op11_α
.Lx76_0:
                        .quad            .Lx76_0_s
.Lx76_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n27_op11_α
n26_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn79:               .string          "$write_term3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn79]
                        lea              rsi, [rbp + 608]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n28_lit_string_α
n27_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n29_op11_α
.Lx80_0:
                        .quad            .Lx80_0_s
.Lx80_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn82:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn82]
                        lea              rsi, [rbp + 560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n30_lit_string_α
n29_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n31_lit_string_α
.Lx83_0:
                        .quad            .Lx83_0_s
.Lx83_0_s:
                        .string          "user_error"
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 528], 1
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n32_op11_α
.Lx84_0:
                        .quad            .Lx84_0_s
.Lx84_0_s:
                        .string          "this_to_err"
#-----------------------------------------------------------------------------------------------------------------------
n32_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn86:               .string          "$writeq2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn86]
                        lea              rsi, [rbp + 480]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n33_lit_string_α
n32_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n34_op11_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "user_error"
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lrkfn89:               .string          "$nl1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn89]
                        lea              rsi, [rbp + 432]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n35_lit_string_α
n34_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx90_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n36_lit_string_α
.Lx90_0:
                        .quad            .Lx90_0_s
.Lx90_0_s:
                        .string          "user_error"
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx91_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n37_lit_string_α
.Lx91_0:
                        .quad            .Lx91_0_s
.Lx91_0_s:
                        .string          "~w~n"
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n38_lit_string_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n39_lit_string_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "err_fmt"
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n40_op11_α
.Lx94_0:
                        .quad            .Lx94_0_s
.Lx94_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n41_op11_α
n40_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn97:               .string          "$format3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn97]
                        lea              rsi, [rbp + 208]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n42_lit_string_α
n41_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx98_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n43_op11_α
.Lx98_0:
                        .quad            .Lx98_0_s
.Lx98_0_s:
                        .string          "done"
#-----------------------------------------------------------------------------------------------------------------------
n43_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn100:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn100]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n44_lit_string_α
n43_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n45_op11_α
.Lx101_0:
                        .quad            .Lx101_0_s
.Lx101_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n45_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn103:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n5_op11_α
                                                                                        jmp   n46_move_label_α
n45_op11_β:
                                                                                        jmp   n5_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_move_label_α:
                        lea              rax, [rip + n5_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n47_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n47_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n47_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1440]
                        add              rsp, 1448
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1440]
                        add              rsp, 1448
                        ret
                        .section         .note.GNU-stack,"",@progbits
