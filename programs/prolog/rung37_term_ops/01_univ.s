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
                        sub              rsp, 1352
                        mov              rdi, rsp
                        mov              ecx, 1352
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1344], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx45_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx45_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx45_101
.Lx45_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx45_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n1_lit_string_α
n0_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx46_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n2_lit_string_α
.Lx46_0:
                        .quad            .Lx46_0_s
.Lx46_0_s:
                        .string          "foo"
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 1104], 1
                        mov              rax, qword ptr [rip + .Lx47_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n3_lit_string_α
.Lx47_0:
                        .quad            .Lx47_0_s
.Lx47_0_s:
                        .string          "a"
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 1120], 1
                        mov              rax, qword ptr [rip + .Lx48_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n4_lit_string_α
.Lx48_0:
                        .quad            .Lx48_0_s
.Lx48_0_s:
                        .string          "b"
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx49_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n5_op11_α
.Lx49_0:
                        .quad            .Lx49_0_s
.Lx49_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n5_op11_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1168]
                        mov              esi, 4
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n6_var_ref_α
n5_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n8_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n7_op11_α:
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
n7_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n8_op11_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lrkfn55:               .string          "$univ"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn55]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n9_var_α
n8_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n10_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_op11_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1032], rax
                        .section         .rodata
.Lrkfn59:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn59]
                        lea              rsi, [rbp + 1024]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n11_lit_string_α
n10_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:
                        mov              qword ptr [rbp + 992], 1
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n12_op11_α
.Lx60_0:
                        .quad            .Lx60_0_s
.Lx60_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lrkfn62:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn62]
                        lea              rsi, [rbp + 976]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n13_var_ref_α
n12_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n15_lit_string_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n16_lit_string_α
.Lx66_0:
                        .quad            .Lx66_0_s
.Lx66_0_s:
                        .string          "bar"
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n17_lit_integer_α
.Lx67_0:
                        .quad            .Lx67_0_s
.Lx67_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n18_lit_string_α
.Lx68_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              rax, qword ptr [rip + .Lx69_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n19_lit_integer_α
.Lx69_0:
                        .quad            .Lx69_0_s
.Lx69_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n20_lit_string_α
.Lx70_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n21_op11_α
.Lx71_0:
                        .quad            .Lx71_0_s
.Lx71_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n22_op11_α
n21_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 768]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n23_op11_α
n22_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n23_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 880]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n24_op11_α
n23_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 584], rax
                        .section         .rodata
.Lrkfn76:               .string          "$univ"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn76]
                        lea              rsi, [rbp + 560]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n25_var_α
n24_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn80:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn80]
                        lea              rsi, [rbp + 512]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n27_lit_string_α
n26_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n28_op11_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n28_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn83:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn83]
                        lea              rsi, [rbp + 464]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n29_lit_string_α
n28_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 416], 1
                        mov              rax, qword ptr [rip + .Lx84_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n30_var_ref_α
.Lx84_0:
                        .quad            .Lx84_0_s
.Lx84_0_s:
                        .string          "hello"
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n31_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn88:               .string          "$univ"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn88]
                        lea              rsi, [rbp + 384]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n32_var_α
n31_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n33_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n33_op11_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn92:               .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn92]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n34_lit_string_α
n33_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n35_op11_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n35_op11_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lrkfn95:               .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn95]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n36_lit_integer_α
n35_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx96_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n37_var_ref_α
.Lx96_0:
                        .quad            42
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n38_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        .section         .rodata
.Lrkfn100:              .string          "$univ"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn100]
                        lea              rsi, [rbp + 208]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n39_var_α
n38_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n40_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn104:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn104]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n41_lit_string_α
n40_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx105_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n42_op11_α
.Lx105_0:
                        .quad            .Lx105_0_s
.Lx105_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n42_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn107:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn107]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n7_op11_α
                                                                                        jmp   n43_move_label_α
n42_op11_β:
                                                                                        jmp   n7_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n43_move_label_α:
                        lea              rax, [rip + n7_op11_α]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n44_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n44_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n44_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1344]
                        add              rsp, 1352
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1344]
                        add              rsp, 1352
                        ret
                        .section         .note.GNU-stack,"",@progbits
