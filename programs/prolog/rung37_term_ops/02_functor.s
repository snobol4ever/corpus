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
                        sub              rsp, 1496
                        mov              rdi, rsp
                        mov              ecx, 1496
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1488], rbp
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
                        mov              qword ptr [rbp + 1328], 1
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n2_lit_string_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 1216], 1
                        mov              rax, qword ptr [rip + .Lx50_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n3_lit_string_α
.Lx50_0:
                        .quad            .Lx50_0_s
.Lx50_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx51_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n4_op11_α
.Lx51_0:
                        .quad            .Lx51_0_s
.Lx51_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1304], rax
                        lea              rdi, [rbp + 1264]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n5_var_ref_α
n4_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n7_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n6_op11_α:
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
n6_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1472]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n8_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn59:               .string          "$functor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn59]
                        lea              rsi, [rbp + 1168]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n9_lit_string_α
n8_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n10_var_ref_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1456]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n11_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1472]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n13_op11_α
n12_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn67:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn67]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n14_lit_string_α
n13_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n15_op11_α
.Lx68_0:
                        .quad            .Lx68_0_s
.Lx68_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n15_op11_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 968], rax
                        .section         .rodata
.Lrkfn70:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn70]
                        lea              rsi, [rbp + 960]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n16_lit_string_α
n15_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n17_var_ref_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n18_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n19_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n19_op11_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        .section         .rodata
.Lrkfn77:               .string          "$functor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn77]
                        lea              rsi, [rbp + 848]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n20_lit_string_α
n19_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 816], 1
                        mov              rax, qword ptr [rip + .Lx78_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n21_var_ref_α
.Lx78_0:
                        .quad            .Lx78_0_s
.Lx78_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n22_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1440]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n23_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n24_op11_α
n23_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lrkfn85:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn85]
                        lea              rsi, [rbp + 688]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n25_lit_string_α
n24_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n26_op11_α
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 648], rax
                        .section         .rodata
.Lrkfn88:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rbp + 640]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n27_lit_integer_α
n26_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:
                        mov              qword ptr [rbp + 576], 6
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n28_var_ref_α
.Lx89_0:
                        .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n30_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_op11_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lrkfn95:               .string          "$functor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn95]
                        lea              rsi, [rbp + 528]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n31_lit_string_α
n30_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n32_var_ref_α
.Lx96_0:
                        .quad            .Lx96_0_s
.Lx96_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n34_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n35_op11_α
n34_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn103:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn103]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n36_lit_string_α
n35_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx104_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n37_op11_α
.Lx104_0:
                        .quad            .Lx104_0_s
.Lx104_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n37_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn106:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn106]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n38_var_ref_α
n37_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n39_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n40_lit_integer_α
.Lx109_0:
                        .quad            .Lx109_0_s
.Lx109_0_s:
                        .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx110_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n41_op11_α
.Lx110_0:
                        .quad            2
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
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn112:              .string          "$functor"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn112]
                        lea              rsi, [rbp + 208]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n42_var_α
n41_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n43_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn116:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn116]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n44_lit_string_α
n43_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n45_op11_α
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n45_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn119:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn119]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n6_op11_α
                                                                                        jmp   n46_move_label_α
n45_op11_β:
                                                                                        jmp   n6_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n46_move_label_α:
                        lea              rax, [rip + n6_op11_α]
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
                        mov              rbp, [rsp + 1488]
                        add              rsp, 1496
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1488]
                        add              rsp, 1496
                        ret
                        .section         .note.GNU-stack,"",@progbits
