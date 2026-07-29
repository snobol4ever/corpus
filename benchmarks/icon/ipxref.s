                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_addword_α
proc_addword_α:
                        .global          proc_addword_α
                        .global          proc_addword_β
                        .global          proc_addword_γ
                        .global          proc_addword_ω
                        sub              rsp, 1456
                        mov              [rsp + 1432], rcx
                        mov              [rsp + 1440], rdx
                        mov              [rsp + 1448], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1424
                        mov              edx, 1424
                        call             rt_jmp_frame_lexprep2@PLT
proc_addword_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_disjunction_α:
                        mov              qword ptr [rbp + 64], 0
                        mov              qword ptr [rbp + 72], 0
                        mov              dword ptr [rbp + 80], 0
                                                                                        jmp   n1_disjunction_α
n0_disjunction_as:
                        mov              eax, dword ptr [rbp + 80]
                        cmp              eax, 0
                                                                                        jne   .Lx67_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   proc_addword_ω
.Lx67_0:
                                                                                        jmp   proc_addword_ω
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 80]
                                                                                        jmp   n2_disjunction_β
n0_disjunction_af:
                        add              dword ptr [rbp + 80], 1
                        mov              eax, dword ptr [rbp + 80]
                                                                                        jmp   proc_addword_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:
                        mov              qword ptr [rbp + 1264], 0
                        mov              qword ptr [rbp + 1272], 0
                        mov              dword ptr [rbp + 1280], 0
                                                                                        jmp   n5_var_α
n1_disjunction_as:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 0
                                                                                        jne   .Lx69_0
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n4_var_ref_α
.Lx69_0:
                        cmp              eax, 1
                                                                                        jne   .Lx69_1
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n4_var_ref_α
.Lx69_1:
                                                                                        jmp   n4_var_ref_α
n1_disjunction_β:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 0
                                                                                        je    n1_disjunction_af
                                                                                        jmp   n1_disjunction_af
n1_disjunction_af:
                        add              dword ptr [rbp + 1280], 1
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 1
                                                                                        je    n6_var_α
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n2_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n9_disjunction_α
n2_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx71_0
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n3_conjunction_α
.Lx71_0:
                        cmp              eax, 1
                                                                                        jne   .Lx71_1
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n3_conjunction_α
.Lx71_1:
                                                                                        jmp   n3_conjunction_α
n2_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        je    proc_addword_ω
                                                                                        jmp   proc_addword_ω
n2_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 1
                                                                                        je    n10_var_ref_α
                                                                                        jmp   proc_addword_ω
#-----------------------------------------------------------------------------------------------------------------------
n3_conjunction_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n0_disjunction_as
n3_conjunction_β:
                                                                                        jmp   proc_addword_ω
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052352
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n13_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n14_var_α
n5_var_β:
                                                                                        jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [1879052416]
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n8_unop_test_α
n6_var_β:
                                                                                        jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn8:            .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn8]
                        lea              rsi, [rbp + 1312]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n1_disjunction_af
                                                                                        jmp   n1_disjunction_as
n7_call_builtin_icon_β:
                                                                                        jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n8_unop_test_α:
                        mov              eax, dword ptr [rbp + 1408]
                        cmp              eax, 99
                                                                                        je    n1_disjunction_af
                        cmp              eax, 0
                                                                                        je    n1_disjunction_af
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n1_disjunction_as
n8_unop_test_β:
                                                                                        jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n9_disjunction_α:
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                        mov              dword ptr [rbp + 544], 0
                                                                                        jmp   n16_var_ref_α
n9_disjunction_as:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 0
                                                                                        jne   .Lx80_0
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n15_var_ref_α
.Lx80_0:
                        cmp              eax, 1
                                                                                        jne   .Lx80_1
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n15_var_ref_α
.Lx80_1:
                                                                                        jmp   n15_var_ref_α
n9_disjunction_β:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 0
                                                                                        je    n9_disjunction_af
                                                                                        jmp   n18_iterate_β
n9_disjunction_af:
                        add              dword ptr [rbp + 544], 1
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 1
                                                                                        je    n17_var_α
                                                                                        jmp   n2_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052352
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n21_var_α
n10_var_ref_β:
                                                                                        jmp   n27_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n11_conjunction_α:
                                                                                        jmp   n2_disjunction_as
n11_conjunction_β:
                                                                                        jmp   proc_addword_ω
#-----------------------------------------------------------------------------------------------------------------------
n12_conjunction_α:
                                                                                        jmp   n2_disjunction_as
n12_conjunction_β:
                                                                                        jmp   proc_addword_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n22_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n7_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052352
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052352
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n24_var_α
n16_var_ref_β:
                                                                                        jmp   n9_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n25_var_α
n17_var_β:
                                                                                        jmp   n9_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n18_iterate_α:
                        mov              qword ptr [rbp + 720], 0
.Lx96_0:
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 720]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              rax, 99
                                                                                        je    n9_disjunction_af
                                                                                        jmp   n20_binop_test_α
n18_iterate_β:
                        inc              qword ptr [rbp + 720]
                                                                                        jmp   .Lx96_0
#-----------------------------------------------------------------------------------------------------------------------
n19_unop_test_α:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 99
                                                                                        je    n9_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n9_disjunction_af
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                                                                                        jmp   n9_disjunction_as
n19_unop_test_β:
                                                                                        jmp   n9_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_test_α:
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n18_iterate_β
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n9_disjunction_as
n20_binop_test_β:
                                                                                        jmp   n18_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n26_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n22_subscript_α:
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 1168]
                        mov              rcx, qword ptr [rbp + 1176]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n2_disjunction_α
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n28_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n29_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n31_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n32_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n26_subscript_α:
                        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n27_var_ref_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n33_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052352
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n28_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 99
                                                                                        je    n2_disjunction_α
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n2_disjunction_α
                        cmp              eax, 0
                                                                                        jne   n2_disjunction_α
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n35_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n29_subscript_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n30_var_ref_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n36_var_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052352
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_subscript_α:
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n9_disjunction_af
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n38_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_unop_test_α:
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 99
                                                                                        je    n9_disjunction_af
                        cmp              eax, 0
                                                                                        je    n9_disjunction_af
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n18_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx00001_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n39_subscript_α
.Lx00001_0:
                        .quad            .Lx00001_0_s
.Lx00001_0_s:
                        .string          "global"
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n40_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn120:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn120]
                        lea              rsi, [rbp + 1248]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 99
                                                                                        je    n2_disjunction_α
                                                                                        jmp   n41_assign_var_α
n35_call_builtin_icon_β:
                                                                                        jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n42_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n43_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx00002_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n44_subscript_α
.Lx00002_0:
                        .quad            .Lx00002_0_s
.Lx00002_0_s:
                        .string          "global"
#-----------------------------------------------------------------------------------------------------------------------
n39_subscript_α:
                        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 1008]
                        mov              rcx, qword ptr [rbp + 1016]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n27_var_ref_α
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n45_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n40_subscript_α:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_addword_ω
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n46_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1232]
                        mov              rcx, qword ptr [rbp + 1240]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n2_disjunction_α
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n2_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n42_subscript_α:
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n30_var_ref_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n47_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_addword_ω
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n48_var_α
#-----------------------------------------------------------------------------------------------------------------------
n44_subscript_α:
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n9_disjunction_af
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n49_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n45_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 99
                                                                                        je    n27_var_ref_α
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n27_var_ref_α
                        cmp              eax, 0
                                                                                        jne   n27_var_ref_α
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n50_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              rax, qword ptr [rip + .Lx00003_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n51_subscript_α
.Lx00003_0:
                        .quad            .Lx00003_0_s
.Lx00003_0_s:
                        .string          "global"
#-----------------------------------------------------------------------------------------------------------------------
n47_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 99
                                                                                        je    n30_var_ref_α
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n30_var_ref_α
                        cmp              eax, 0
                                                                                        jne   n30_var_ref_α
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n52_var_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n53_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n49_deref_α:
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n9_disjunction_af
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n19_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n54_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n51_subscript_α:
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_addword_ω
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n55_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n56_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_subscript_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_addword_ω
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n57_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx00004_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n58_make_list_α
.Lx00004_0:
                        .quad            .Lx00004_0_s
.Lx00004_0_s:
                        .string          "global"
#-----------------------------------------------------------------------------------------------------------------------
n55_deref_α:
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    proc_addword_ω
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n59_var_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n60_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n57_deref_α:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    proc_addword_ω
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n61_var_α
#-----------------------------------------------------------------------------------------------------------------------
n58_make_list_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1088]
                        mov              esi, 2
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n62_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n63_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n60_make_list_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 2
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n64_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n65_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n27_var_ref_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n27_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n63_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lrkfn159:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn159]
                        lea              rsi, [rbp + 800]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    proc_addword_ω
                                                                                        jmp   n12_conjunction_α
n63_call_builtin_icon_β:
                                                                                        jmp   proc_addword_ω
#-----------------------------------------------------------------------------------------------------------------------
n64_assign_var_α:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 456]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n30_var_ref_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn162:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn162]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    proc_addword_ω
                                                                                        jmp   n11_conjunction_α
n65_call_builtin_icon_β:
                                                                                        jmp   proc_addword_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_addword_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_addword_β:
                                                                                        jmp   proc_addword_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_addword_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1432]
                        lea              rsp, [rbp + 1456]
                        mov              rbp, [rbp + 1448]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_addword_ω:
                        mov              rax, [rbp + 1440]
                        lea              rsp, [rbp + 1456]
                        mov              rbp, [rbp + 1448]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_addword_dcα:
                        pop              r11
                        sub              rsp, 1472
                        mov              qword ptr [rsp + 1448], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1424], r11
                        lea              rax, [rip + .Lx00005_2]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rax, [rip + .Lx00005_3]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp
                        mov              esi, 1424
                        mov              edx, 1424
                        mov              ecx, 3
                        mov              r8d, 3
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_addword_α_body
.Lx00005_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1456
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00005_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1456
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_getword_α
proc_getword_α:
                        .global          proc_getword_α
                        .global          proc_getword_β
                        .global          proc_getword_γ
                        .global          proc_getword_ω
                        sub              rsp, 2928
                        mov              [rsp + 2904], rcx
                        mov              [rsp + 2912], rdx
                        mov              [rsp + 2920], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2864
                        mov              edx, 2896
                        call             rt_jmp_frame_lexprep2@PLT
proc_getword_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00006_disjunction_α:
                        mov              qword ptr [rbp + 2720], 0
                        mov              qword ptr [rbp + 2728], 0
                        mov              dword ptr [rbp + 2736], 0
                                                                                        jmp   n00007_var_ref_α
n00006_disjunction_as:
                        mov              eax, dword ptr [rbp + 2736]
                        cmp              eax, 0
                                                                                        jne   .Lx00008_0
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n00009_disjunction_α
.Lx00008_0:
                                                                                        jmp   n00009_disjunction_α
n00006_disjunction_β:
                        mov              eax, dword ptr [rbp + 2736]
                                                                                        jmp   n00009_disjunction_α
n00006_disjunction_af:
                        add              dword ptr [rbp + 2736], 1
                        mov              eax, dword ptr [rbp + 2736]
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00009_disjunction_α:
                        mov              qword ptr [rbp + 2560], 0
                        mov              qword ptr [rbp + 2568], 0
                        mov              dword ptr [rbp + 2576], 0
                                                                                        jmp   n00010_var_α
n00009_disjunction_as:
                        mov              eax, dword ptr [rbp + 2576]
                        cmp              eax, 0
                                                                                        jne   .Lx00011_0
                                                                                        jmp   n00012_disjunction_α
.Lx00011_0:
                                                                                        jmp   n00012_disjunction_α
n00009_disjunction_β:
                        mov              eax, dword ptr [rbp + 2576]
                                                                                        jmp   n00012_disjunction_α
n00009_disjunction_af:
                        add              dword ptr [rbp + 2576], 1
                        mov              eax, dword ptr [rbp + 2576]
                                                                                        jmp   n00012_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00007_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052592
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                                                                                        jmp   n00013_nulltest_var_α
n00007_var_ref_β:
                                                                                        jmp   n00006_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00014_assign_α:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              rdx, qword ptr [rbp + 2776]
                        mov              qword ptr [1879052576], rax
                        mov              qword ptr [1879052584], rdx
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   n00006_disjunction_as
n00014_assign_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00012_disjunction_α:
                        mov              qword ptr [rbp + 2144], 0
                        mov              qword ptr [rbp + 2152], 0
                        mov              dword ptr [rbp + 2160], 0
                                                                                        jmp   n00015_disjunction_α
n00012_disjunction_as:
                        mov              eax, dword ptr [rbp + 2160]
                        cmp              eax, 0
                                                                                        jne   .Lx00016_0
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n00017_disjunction_α
.Lx00016_0:
                                                                                        jmp   n00017_disjunction_α
n00012_disjunction_β:
                        mov              eax, dword ptr [rbp + 2160]
                                                                                        jmp   n00018_disjunction_β
n00012_disjunction_af:
                        add              dword ptr [rbp + 2160], 1
                        mov              eax, dword ptr [rbp + 2160]
                                                                                        jmp   n00017_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00010_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n00019_unop_α
n00010_var_β:
                                                                                        jmp   n00009_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00013_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2800]
                        cmp              eax, 99
                                                                                        je    n00006_disjunction_af
                        mov              rdi, qword ptr [rbp + 2800]
                        mov              rsi, qword ptr [rbp + 2808]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00006_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00006_disjunction_af
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n00020_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00017_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n00021_var_α
n00017_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx00022_0
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00023_conjunction_α
.Lx00022_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00022_1
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00023_conjunction_α
.Lx00022_1:
                                                                                        jmp   n00023_conjunction_α
n00017_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    n00024_disjunction_β
                                                                                        jmp   n00009_disjunction_α
n00017_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n00025_var_α
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00015_disjunction_α:
                        mov              qword ptr [rbp + 2384], 0
                        mov              qword ptr [rbp + 2392], 0
                        mov              dword ptr [rbp + 2400], 0
                                                                                        jmp   n00026_var_α
n00015_disjunction_as:
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 0
                                                                                        jne   .Lx00027_0
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n00018_disjunction_α
.Lx00027_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00027_1
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n00018_disjunction_α
.Lx00027_1:
                                                                                        jmp   n00018_disjunction_α
n00015_disjunction_β:
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 0
                                                                                        je    n00015_disjunction_af
                                                                                        jmp   n00015_disjunction_af
n00015_disjunction_af:
                        add              dword ptr [rbp + 2400], 1
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 1
                                                                                        je    n00028_var_α
                                                                                        jmp   n00012_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00018_disjunction_α:
                        mov              qword ptr [rbp + 2176], 0
                        mov              qword ptr [rbp + 2184], 0
                        mov              dword ptr [rbp + 2192], 0
                                                                                        jmp   n00029_var_α
n00018_disjunction_as:
                        mov              eax, dword ptr [rbp + 2192]
                        cmp              eax, 0
                                                                                        jne   .Lx00030_0
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n00012_disjunction_as
.Lx00030_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00030_1
                                                                                        jmp   n00012_disjunction_as
.Lx00030_1:
                                                                                        jmp   n00012_disjunction_as
n00018_disjunction_β:
                        mov              eax, dword ptr [rbp + 2192]
                        cmp              eax, 0
                                                                                        je    n00017_disjunction_α
                                                                                        jmp   n00017_disjunction_α
n00018_disjunction_af:
                        add              dword ptr [rbp + 2192], 1
                        mov              eax, dword ptr [rbp + 2192]
                        cmp              eax, 1
                                                                                        je    proc_getword_ω
                                                                                        jmp   n00017_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00019_unop_α:
                        mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00031_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00020_lit_integer_α:
                        mov              qword ptr [rbp + 2848], 6
                        mov              rax, qword ptr [rip + .Lx00032_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n00033_assign_var_α
.Lx00032_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00023_conjunction_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n00009_disjunction_α
n00023_conjunction_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00021_var_α:
                        mov              rax, qword ptr [1879052576]
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n00034_var_α
n00021_var_β:
                                                                                        jmp   n00017_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00024_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n00035_var_ref_α
n00024_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx00036_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00037_conjunction_α
.Lx00036_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00036_1
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00037_conjunction_α
.Lx00036_1:
                                                                                        jmp   n00037_conjunction_α
n00024_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n00038_disjunction_β
                                                                                        jmp   n00039_disjunction_β
n00024_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n00039_disjunction_α
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00025_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n00040_unop_α
n00025_var_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00037_conjunction_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00017_disjunction_as
n00037_conjunction_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00041_assign_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n00017_disjunction_as
n00041_assign_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00026_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n00042_unop_test_α
n00026_var_β:
                                                                                        jmp   n00015_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00028_var_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n00043_var_α
n00028_var_β:
                                                                                        jmp   n00015_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00042_unop_test_α:
                        mov              eax, dword ptr [rbp + 2432]
                        cmp              eax, 99
                                                                                        je    n00015_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00015_disjunction_af
                        mov              qword ptr [rbp + 2416], 0
                        mov              qword ptr [rbp + 2424], 0
                                                                                        jmp   n00015_disjunction_as
n00042_unop_test_β:
                                                                                        jmp   n00015_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00044_binop_test_α:
                        mov              eax, dword ptr [rbp + 2464]
                        cmp              eax, 100
                                                                                        je    .Lx00045_0
                        mov              eax, dword ptr [rbp + 2480]
                        cmp              eax, 100
                                                                                        je    .Lx00045_0
                        mov              eax, dword ptr [rbp + 2464]
                        cmp              eax, 6
                                                                                        jne   .Lx00045_2
                        mov              eax, dword ptr [rbp + 2480]
                        cmp              eax, 6
                                                                                        jne   .Lx00045_2
.Lx00045_1:
                        mov              rax, qword ptr [rbp + 2472]
                        mov              rcx, qword ptr [rbp + 2488]
                        cmp              rax, rcx
                                                                                        jne   n00015_disjunction_af
                        mov              rcx, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2448], rcx
                        mov              rcx, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2456], rcx
                                                                                        jmp   n00015_disjunction_as
.Lx00045_0:
                        mov              rdi, qword ptr [rbp + 2464]
                        mov              rsi, qword ptr [rbp + 2472]
                        mov              rdx, qword ptr [rbp + 2480]
                        mov              rcx, qword ptr [rbp + 2488]
                        mov              r8d, 9
                        lea              r9, [rbp + 2448]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00045_1
                        cmp              eax, 1
                                                                                        je    n00015_disjunction_af
                                                                                        jmp   n00015_disjunction_as
.Lx00045_2:
                        mov              rdi, qword ptr [rbp + 2464]
                        mov              rsi, qword ptr [rbp + 2472]
                        mov              rdx, qword ptr [rbp + 2480]
                        mov              rcx, qword ptr [rbp + 2488]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00015_disjunction_af
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n00015_disjunction_as
n00044_binop_test_β:
                                                                                        jmp   n00015_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00029_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n00046_call_builtin_icon_α
n00029_var_β:
                                                                                        jmp   n00018_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00047_conjunction_α:
                                                                                        jmp   n00018_disjunction_as
n00047_conjunction_β:
                                                                                        jmp   n00017_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00031_lit_integer_α:
                        mov              qword ptr [rbp + 2704], 6
                        mov              rax, qword ptr [rip + .Lx00048_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n00049_binop_test_α
.Lx00048_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00033_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2816]
                        mov              rsi, qword ptr [rbp + 2824]
                        mov              rdx, qword ptr [rbp + 2848]
                        mov              rcx, qword ptr [rbp + 2856]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00006_disjunction_af
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                                                                                        jmp   n00050_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00034_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n00051_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00035_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052496
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n00052_var_α
n00035_var_ref_β:
                                                                                        jmp   n00024_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00038_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n00053_var_α
n00038_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00054_0
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00024_disjunction_as
.Lx00054_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00054_1
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00024_disjunction_as
.Lx00054_1:
                                                                                        jmp   n00024_disjunction_as
n00038_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        je    n00055_conjunction_β
                                                                                        jmp   n00009_disjunction_α
n00038_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 1
                                                                                        je    n00056_var_α
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00039_disjunction_α:
                        mov              qword ptr [rbp + 1264], 0
                        mov              qword ptr [rbp + 1272], 0
                        mov              dword ptr [rbp + 1280], 0
                                                                                        jmp   n00057_var_ref_α
n00039_disjunction_as:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 0
                                                                                        jne   .Lx00058_0
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00024_disjunction_as
.Lx00058_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00058_1
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00024_disjunction_as
.Lx00058_1:
                                                                                        jmp   n00024_disjunction_as
n00039_disjunction_β:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 0
                                                                                        je    n00009_disjunction_α
                                                                                        jmp   n00059_disjunction_β
n00039_disjunction_af:
                        add              dword ptr [rbp + 1280], 1
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 1
                                                                                        je    n00059_disjunction_α
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00040_unop_α:
                        mov              rdi, qword ptr [rbp + 2112]
                        mov              rsi, qword ptr [rbp + 2120]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n00060_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00043_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n00061_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00046_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2344], rax
                        .section         .rodata
.Lrkfn367:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn367]
                        lea              rsi, [rbp + 2336]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    n00018_disjunction_af
                                                                                        jmp   n00062_assign_α
n00046_call_builtin_icon_β:
                                                                                        jmp   n00018_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00049_binop_test_α:
                        mov              eax, dword ptr [rbp + 2672]
                        cmp              eax, 100
                                                                                        je    .Lx00063_0
                        mov              eax, dword ptr [rbp + 2704]
                        cmp              eax, 100
                                                                                        je    .Lx00063_0
                        mov              eax, dword ptr [rbp + 2672]
                        cmp              eax, 6
                                                                                        jne   .Lx00063_2
                        mov              eax, dword ptr [rbp + 2704]
                        cmp              eax, 6
                                                                                        jne   .Lx00063_2
.Lx00063_1:
                        mov              rax, qword ptr [rbp + 2680]
                        mov              rcx, qword ptr [rbp + 2712]
                        cmp              rax, rcx
                                                                                        jle   n00009_disjunction_af
                        mov              rcx, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2656], rcx
                        mov              rcx, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2664], rcx
                                                                                        jmp   n00064_var_α
.Lx00063_0:
                        mov              rdi, qword ptr [rbp + 2672]
                        mov              rsi, qword ptr [rbp + 2680]
                        mov              rdx, qword ptr [rbp + 2704]
                        mov              rcx, qword ptr [rbp + 2712]
                        mov              r8d, 7
                        lea              r9, [rbp + 2656]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00063_1
                        cmp              eax, 1
                                                                                        je    n00009_disjunction_af
                                                                                        jmp   n00064_var_α
.Lx00063_2:
                        mov              rdi, qword ptr [rbp + 2672]
                        mov              rsi, qword ptr [rbp + 2680]
                        mov              rdx, qword ptr [rbp + 2704]
                        mov              rcx, qword ptr [rbp + 2712]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00009_disjunction_af
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n00064_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00050_lit_charset_α:
                        mov              qword ptr [rbp + 2784], 1
                        mov              dword ptr [rbp + 2788], -1
                        mov              rax, qword ptr [rip + .Lx00065_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n00066_unop_α
.Lx00065_0:
                        .quad            .Lx00065_0_s
.Lx00065_0_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00051_var_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n00067_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00052_var_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n00068_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00053_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n00069_unop_test_α
n00053_var_β:
                                                                                        jmp   n00038_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00055_conjunction_α:
                                                                                        jmp   n00038_disjunction_as
n00055_conjunction_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00056_var_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n00070_lit_integer_α
n00056_var_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00071_assign_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n00038_disjunction_as
n00071_assign_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00057_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052496
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n00072_var_α
n00057_var_ref_β:
                                                                                        jmp   n00039_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00059_disjunction_α:
                        mov              qword ptr [rbp + 1488], 0
                        mov              qword ptr [rbp + 1496], 0
                        mov              dword ptr [rbp + 1504], 0
                                                                                        jmp   n00073_var_α
n00059_disjunction_as:
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 0
                                                                                        jne   .Lx00074_0
                                                                                        jmp   n00039_disjunction_as
.Lx00074_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00074_1
                                                                                        jmp   n00039_disjunction_as
.Lx00074_1:
                                                                                        jmp   n00039_disjunction_as
n00059_disjunction_β:
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 0
                                                                                        je    n00009_disjunction_α
                                                                                        jmp   n00009_disjunction_α
n00059_disjunction_af:
                        add              dword ptr [rbp + 1504], 1
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 1
                                                                                        je    n00075_var_α
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00076_assign_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n00039_disjunction_as
n00076_assign_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00060_lit_integer_α:
                        mov              qword ptr [rbp + 2128], 6
                        mov              rax, qword ptr [rip + .Lx00077_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n00078_op75_α
.Lx00077_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00061_unop_α:
                        mov              rdi, qword ptr [rbp + 2528]
                        mov              rsi, qword ptr [rbp + 2536]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n00079_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00062_assign_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n00080_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00064_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n00081_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00066_unop_α:
                        mov              rdi, qword ptr [rbp + 2784]
                        mov              rsi, qword ptr [rbp + 2792]
                        call             rt_cset_compl@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                                                                                        jmp   n00014_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00067_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1976], rax
                        mov              qword ptr [rbp + 1984], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx00082_60:
                        .section         .rodata
.Lbynamegenfn116:       .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn116]
                        lea              rsi, [rbp + 1936]
                        mov              edx, 3
                        lea              rcx, [rbp + 1984]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 99
                                                                                        je    n00017_disjunction_af
                                                                                        jmp   n00083_assign_α
n00067_call_builtin_gen_β:
                                                                                        jmp   .Lx00082_60
#-----------------------------------------------------------------------------------------------------------------------
n00068_subscript_α:
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              rsi, qword ptr [rbp + 1144]
                        mov              rdx, qword ptr [rbp + 1152]
                        mov              rcx, qword ptr [rbp + 1160]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00024_disjunction_af
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n00084_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00069_unop_test_α:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 99
                                                                                        je    n00038_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00038_disjunction_af
                        mov              qword ptr [rbp + 1008], 0
                        mov              qword ptr [rbp + 1016], 0
                                                                                        jmp   n00085_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00070_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 6
                        mov              rax, qword ptr [rip + .Lx00086_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n00087_op75_α
.Lx00086_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00072_var_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n00088_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00073_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n00089_var_α
n00073_var_β:
                                                                                        jmp   n00059_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00075_var_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n00090_lit_integer_α
n00075_var_β:
                                                                                        jmp   n00091_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00092_conjunction_α:
                                                                                        jmp   n00059_disjunction_as
n00092_conjunction_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00078_op75_α:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 7
                                                                                        je    .Lx00093_1
                        cmp              eax, 6
                                                                                        jne   .Lx00093_0
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              eax, 6
                                                                                        jne   .Lx00093_0
.Lx00093_1:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n00094_binop_α
.Lx00093_0:
                        lea              rdi, [rbp + 2096]
                        lea              rsi, [rbp + 2128]
                        lea              rdx, [rbp + 2080]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00094_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00079_lit_integer_α:
                        mov              qword ptr [rbp + 2544], 6
                        mov              rax, qword ptr [rip + .Lx00095_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n00096_op75_α
.Lx00095_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00080_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx00097_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n00098_assign_α
.Lx00097_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00081_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2616], rax
                        .section         .rodata
.Lrkfn399:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn399]
                        lea              rsi, [rbp + 2608]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              eax, 99
                                                                                        je    proc_getword_ω
                                                                                        jmp   n00099_return_α
n00081_call_builtin_icon_β:
                                                                                        jmp   proc_getword_ω
#-----------------------------------------------------------------------------------------------------------------------
n00083_assign_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n00100_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00084_deref_α:
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00024_disjunction_af
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n00101_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00085_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052496
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n00102_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00087_op75_α:
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 7
                                                                                        je    .Lx00103_1
                        cmp              eax, 6
                                                                                        jne   .Lx00103_0
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 6
                                                                                        jne   .Lx00103_0
.Lx00103_1:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n00104_binop_α
.Lx00103_0:
                        lea              rdi, [rbp + 1088]
                        lea              rsi, [rbp + 1104]
                        lea              rdx, [rbp + 1072]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00104_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00088_subscript_α:
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              rdx, qword ptr [rbp + 1424]
                        mov              rcx, qword ptr [rbp + 1432]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00039_disjunction_af
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n00105_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00089_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n00106_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00090_lit_integer_α:
                        mov              qword ptr [rbp + 1888], 6
                        mov              rax, qword ptr [rip + .Lx00107_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00108_op75_α
.Lx00107_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00091_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052496
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n00109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00094_binop_α:
                        mov              eax, dword ptr [rbp + 2080]
                        cmp              eax, 6
                                                                                        jne   .Lx00110_0
                        mov              rax, qword ptr [rbp + 2088]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 2064], 6
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n00041_assign_α
.Lx00110_0:
                        mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              rdx, qword ptr [rbp + 2128]
                        mov              rcx, qword ptr [rbp + 2136]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00009_disjunction_α
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n00041_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00096_op75_α:
                        mov              eax, dword ptr [rbp + 2512]
                        cmp              eax, 7
                                                                                        je    .Lx00111_1
                        cmp              eax, 6
                                                                                        jne   .Lx00111_0
                        mov              eax, dword ptr [rbp + 2544]
                        cmp              eax, 6
                                                                                        jne   .Lx00111_0
.Lx00111_1:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n00112_binop_α
.Lx00111_0:
                        lea              rdi, [rbp + 2512]
                        lea              rsi, [rbp + 2544]
                        lea              rdx, [rbp + 2496]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00112_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00098_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n00113_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00099_return_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              rdx, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_getword_γ
#-----------------------------------------------------------------------------------------------------------------------
n00100_var_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n00114_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00101_disjunction_α:
                        mov              qword ptr [rbp + 1200], 0
                        mov              qword ptr [rbp + 1208], 0
                        mov              dword ptr [rbp + 1216], 0
                                                                                        jmp   n00115_lit_string_α
n00101_disjunction_as:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 0
                                                                                        jne   .Lx00116_0
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n00117_binop_test_α
.Lx00116_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00116_1
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n00117_binop_test_α
.Lx00116_1:
                                                                                        jmp   n00117_binop_test_α
n00101_disjunction_β:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 0
                                                                                        je    n00101_disjunction_af
                                                                                        jmp   n00101_disjunction_af
n00101_disjunction_af:
                        add              dword ptr [rbp + 1216], 1
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 1
                                                                                        je    n00118_lit_string_α
                                                                                        jmp   n00024_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00102_var_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n00119_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00104_binop_α:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 6
                                                                                        jne   .Lx00120_0
                        mov              rax, qword ptr [rbp + 1080]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1056], 6
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n00071_assign_α
.Lx00120_0:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00009_disjunction_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n00071_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00105_deref_α:
                        mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00039_disjunction_af
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n00121_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00106_var_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n00122_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00108_op75_α:
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 7
                                                                                        je    .Lx00123_1
                        cmp              eax, 6
                                                                                        jne   .Lx00123_0
                        mov              eax, dword ptr [rbp + 1888]
                        cmp              eax, 6
                                                                                        jne   .Lx00123_0
.Lx00123_1:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n00124_binop_α
.Lx00123_0:
                        lea              rdi, [rbp + 1872]
                        lea              rsi, [rbp + 1888]
                        lea              rdx, [rbp + 1856]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00124_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00109_var_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n00125_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00112_binop_α:
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 6
                                                                                        jne   .Lx00126_0
                        mov              rax, qword ptr [rbp + 2504]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 2480], 6
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n00044_binop_test_α
.Lx00126_0:
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              rsi, qword ptr [rbp + 2504]
                        mov              rdx, qword ptr [rbp + 2544]
                        mov              rcx, qword ptr [rbp + 2552]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00015_disjunction_af
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n00044_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00113_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n00127_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00114_assign_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   n00024_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00117_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1200]
                        mov              rcx, qword ptr [rbp + 1208]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00101_disjunction_β
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n00038_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00115_lit_string_α:
                        mov              qword ptr [rbp + 1232], 1
                        mov              rax, qword ptr [rip + .Lx00128_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n00101_disjunction_as
n00115_lit_string_β:
                                                                                        jmp   n00101_disjunction_af
.Lx00128_0:
                        .quad            .Lx00128_0_s
.Lx00128_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n00118_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx00129_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n00101_disjunction_as
n00118_lit_string_β:
                                                                                        jmp   n00101_disjunction_af
.Lx00129_0:
                        .quad            .Lx00129_0_s
.Lx00129_0_s:
                        .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n00119_subscript_α:
                        mov              rdi, qword ptr [rbp + 944]
                        mov              rsi, qword ptr [rbp + 952]
                        mov              rdx, qword ptr [rbp + 960]
                        mov              rcx, qword ptr [rbp + 968]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00130_var_α
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n00131_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00130_var_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n00132_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00121_lit_string_α:
                        mov              qword ptr [rbp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx00133_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n00134_binop_test_α
.Lx00133_0:
                        .quad            .Lx00133_0_s
.Lx00133_0_s:
                        .string          "#"
#-----------------------------------------------------------------------------------------------------------------------
n00122_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn157:          .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn157]
                        lea              rsi, [rbp + 1600]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n00059_disjunction_af
                                                                                        jmp   n00135_assign_α
n00122_call_builtin_icon_β:
                                                                                        jmp   n00059_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00124_binop_α:
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 6
                                                                                        jne   .Lx00136_0
                        mov              rax, qword ptr [rbp + 1864]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1840], 6
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n00137_assign_α
.Lx00136_0:
                        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, qword ptr [rbp + 1888]
                        mov              rcx, qword ptr [rbp + 1896]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00091_var_ref_α
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n00137_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00125_lit_integer_α:
                        mov              qword ptr [rbp + 1792], 6
                        mov              rax, qword ptr [rip + .Lx00138_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00139_op75_α
.Lx00138_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00127_lit_integer_α:
                        mov              qword ptr [rbp + 2288], 6
                        mov              rax, qword ptr [rip + .Lx00140_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n00141_op75_α
.Lx00140_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00131_deref_α:
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00130_var_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n00142_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00132_lit_integer_α:
                        mov              qword ptr [rbp + 928], 6
                        mov              rax, qword ptr [rip + .Lx00143_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n00144_op75_α
.Lx00143_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00145_disjunction_α:
                        mov              qword ptr [rbp + 160], 0
                        mov              qword ptr [rbp + 168], 0
                        mov              dword ptr [rbp + 176], 0
                                                                                        jmp   n00146_var_α
n00145_disjunction_as:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 0
                                                                                        jne   .Lx00147_0
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00145_disjunction_α
.Lx00147_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00147_1
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00145_disjunction_α
.Lx00147_1:
                                                                                        jmp   n00145_disjunction_α
n00145_disjunction_β:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 0
                                                                                        je    n00148_disjunction_β
                                                                                        jmp   n00149_disjunction_β
n00145_disjunction_af:
                        add              dword ptr [rbp + 176], 1
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 1
                                                                                        je    n00150_lit_integer_α
                                                                                        jmp   n00145_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00134_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1456]
                        mov              rsi, qword ptr [rbp + 1464]
                        mov              rdx, qword ptr [rbp + 1472]
                        mov              rcx, qword ptr [rbp + 1480]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00039_disjunction_af
                        mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n00151_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00135_assign_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              rdx, qword ptr [rbp + 1592]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n00152_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00137_assign_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n00091_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00139_op75_α:
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 7
                                                                                        je    .Lx00153_1
                        cmp              eax, 6
                                                                                        jne   .Lx00153_0
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 6
                                                                                        jne   .Lx00153_0
.Lx00153_1:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n00154_binop_α
.Lx00153_0:
                        lea              rdi, [rbp + 1776]
                        lea              rsi, [rbp + 1792]
                        lea              rdx, [rbp + 1760]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00154_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00141_op75_α:
                        mov              eax, dword ptr [rbp + 2272]
                        cmp              eax, 7
                                                                                        je    .Lx00155_1
                        cmp              eax, 6
                                                                                        jne   .Lx00155_0
                        mov              eax, dword ptr [rbp + 2288]
                        cmp              eax, 6
                                                                                        jne   .Lx00155_0
.Lx00155_1:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n00156_binop_α
.Lx00155_0:
                        lea              rdi, [rbp + 2272]
                        lea              rsi, [rbp + 2288]
                        lea              rdx, [rbp + 2256]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00156_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00142_assign_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                                                                                        jmp   n00130_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00144_op75_α:
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 7
                                                                                        je    .Lx00157_1
                        cmp              eax, 6
                                                                                        jne   .Lx00157_0
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 6
                                                                                        jne   .Lx00157_0
.Lx00157_1:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n00158_binop_α
.Lx00157_0:
                        lea              rdi, [rbp + 912]
                        lea              rsi, [rbp + 928]
                        lea              rdx, [rbp + 896]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00158_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00146_var_α:
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00159_lit_charset_α
n00146_var_β:
                                                                                        jmp   n00145_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00148_disjunction_α:
                        mov              qword ptr [rbp + 192], 0
                        mov              qword ptr [rbp + 200], 0
                        mov              dword ptr [rbp + 208], 0
                                                                                        jmp   n00160_var_ref_α
n00148_disjunction_as:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 0
                                                                                        jne   .Lx00161_0
                                                                                        jmp   n00145_disjunction_as
.Lx00161_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00161_1
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00145_disjunction_as
.Lx00161_1:
                                                                                        jmp   n00145_disjunction_as
n00148_disjunction_β:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 0
                                                                                        je    n00145_disjunction_α
                                                                                        jmp   n00145_disjunction_α
n00148_disjunction_af:
                        add              dword ptr [rbp + 208], 1
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 1
                                                                                        je    n00162_var_α
                                                                                        jmp   n00145_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00150_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx00163_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n00164_assign_α
n00150_lit_integer_β:
                        add              rsp, 16
                                                                                        jmp   n00165_var_α
.Lx00163_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00149_disjunction_α:
                        mov              qword ptr [rbp + 704], 0
                        mov              qword ptr [rbp + 712], 0
                        mov              dword ptr [rbp + 720], 0
                                                                                        jmp   n00166_var_α
n00149_disjunction_as:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 0
                                                                                        jne   .Lx00167_0
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n00168_assign_α
.Lx00167_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00167_1
                                                                                        jmp   n00168_assign_α
.Lx00167_1:
                                                                                        jmp   n00168_assign_α
n00149_disjunction_β:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 0
                                                                                        je    n00149_disjunction_af
                                                                                        jmp   n00149_disjunction_af
n00149_disjunction_af:
                        add              dword ptr [rbp + 720], 1
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 1
                                                                                        je    proc_getword_ω
                                                                                        jmp   n00145_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00169_conjunction_α:
                                                                                        jmp   n00145_disjunction_as
n00169_conjunction_β:
                                                                                        jmp   n00145_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00151_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n00170_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00152_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n00171_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00154_binop_α:
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 6
                                                                                        jne   .Lx00172_0
                        mov              rax, qword ptr [rbp + 1768]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1744], 6
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n00173_subscript_α
.Lx00172_0:
                        mov              rdi, qword ptr [rbp + 1760]
                        mov              rsi, qword ptr [rbp + 1768]
                        mov              rdx, qword ptr [rbp + 1792]
                        mov              rcx, qword ptr [rbp + 1800]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    proc_getword_ω
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00173_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00156_binop_α:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 6
                                                                                        jne   .Lx00174_0
                        mov              rax, qword ptr [rbp + 2264]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 2240], 6
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n00175_assign_α
.Lx00174_0:
                        mov              rdi, qword ptr [rbp + 2256]
                        mov              rsi, qword ptr [rbp + 2264]
                        mov              rdx, qword ptr [rbp + 2288]
                        mov              rcx, qword ptr [rbp + 2296]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00017_disjunction_α
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n00175_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00158_binop_α:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 6
                                                                                        jne   .Lx00176_0
                        mov              rax, qword ptr [rbp + 904]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 880], 6
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n00177_assign_α
.Lx00176_0:
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              rdx, qword ptr [rbp + 928]
                        mov              rcx, qword ptr [rbp + 936]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00145_disjunction_α
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n00177_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00159_lit_charset_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              dword ptr [rbp + 612], -1
                        mov              rax, qword ptr [rip + .Lx00178_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00179_binop_α
.Lx00178_0:
                        .quad            .Lx00178_0_s
.Lx00178_0_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n00160_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052496
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n00180_var_α
n00160_var_ref_β:
                                                                                        jmp   n00148_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00162_var_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n00181_lit_integer_α
n00162_var_β:
                                                                                        jmp   n00145_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00182_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n00148_disjunction_as
n00182_assign_β:
                                                                                        jmp   n00145_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00164_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n00165_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00168_assign_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n00169_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00166_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00183_call_builtin_icon_α
n00166_var_β:
                                                                                        jmp   n00149_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00183_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn475:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn475]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n00149_disjunction_af
                                                                                        jmp   n00149_disjunction_as
n00183_call_builtin_icon_β:
                                                                                        jmp   n00149_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00170_unop_α:
                        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n00184_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00171_var_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n00185_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00173_subscript_α:
                        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
                        mov              rdx, qword ptr [rbp + 1744]
                        mov              rcx, qword ptr [rbp + 1752]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_getword_ω
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n00186_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00175_assign_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n00047_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00177_assign_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n00145_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00179_binop_α:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    n00145_disjunction_af
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n00187_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00180_var_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00188_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00181_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx00189_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00190_op75_α
.Lx00189_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00165_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n00191_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00184_lit_integer_α:
                        mov              qword ptr [rbp + 1376], 6
                        mov              rax, qword ptr [rip + .Lx00192_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n00193_op75_α
.Lx00192_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00185_var_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n00194_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00186_deref_α:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    proc_getword_ω
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n00195_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00187_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n00196_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00188_lit_integer_α:
                        mov              qword ptr [rbp + 304], 6
                        mov              rax, qword ptr [rip + .Lx00197_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n00198_op75_α
.Lx00197_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00190_op75_α:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 7
                                                                                        je    .Lx00199_1
                        cmp              eax, 6
                                                                                        jne   .Lx00199_0
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 6
                                                                                        jne   .Lx00199_0
.Lx00199_1:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00200_binop_α
.Lx00199_0:
                        lea              rdi, [rbp + 416]
                        lea              rsi, [rbp + 432]
                        lea              rdx, [rbp + 400]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00200_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00191_lit_integer_α:
                        mov              qword ptr [rbp + 848], 6
                        mov              rax, qword ptr [rip + .Lx00201_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00202_op75_α
.Lx00201_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00193_op75_α:
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 7
                                                                                        je    .Lx00203_1
                        cmp              eax, 6
                                                                                        jne   .Lx00203_0
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 6
                                                                                        jne   .Lx00203_0
.Lx00203_1:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n00204_binop_α
.Lx00203_0:
                        lea              rdi, [rbp + 1344]
                        lea              rsi, [rbp + 1376]
                        lea              rdx, [rbp + 1328]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00204_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00194_subscript_α:
                        mov              rdi, qword ptr [rbp + 1536]
                        mov              rsi, qword ptr [rbp + 1544]
                        mov              rdx, qword ptr [rbp + 1552]
                        mov              rcx, qword ptr [rbp + 1560]
                        mov              r8, qword ptr [rbp + 1568]
                        mov              r9, qword ptr [rbp + 1576]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    proc_getword_ω
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n00205_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00195_return_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_getword_γ
#-----------------------------------------------------------------------------------------------------------------------
n00196_var_α:
                        mov              rax, qword ptr [1879052560]
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n00206_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00198_op75_α:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 7
                                                                                        je    .Lx00207_1
                        cmp              eax, 6
                                                                                        jne   .Lx00207_0
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 6
                                                                                        jne   .Lx00207_0
.Lx00207_1:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00208_binop_α
.Lx00207_0:
                        lea              rdi, [rbp + 288]
                        lea              rsi, [rbp + 304]
                        lea              rdx, [rbp + 272]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00208_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00200_binop_α:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 6
                                                                                        jne   .Lx00209_0
                        mov              rax, qword ptr [rbp + 408]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 384], 6
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00182_assign_α
.Lx00209_0:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00145_disjunction_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00182_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00202_op75_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 7
                                                                                        je    .Lx00210_1
                        cmp              eax, 6
                                                                                        jne   .Lx00210_0
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 6
                                                                                        jne   .Lx00210_0
.Lx00210_1:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n00211_binop_α
.Lx00210_0:
                        lea              rdi, [rbp + 832]
                        lea              rsi, [rbp + 848]
                        lea              rdx, [rbp + 816]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00211_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00204_binop_α:
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 6
                                                                                        jne   .Lx00212_0
                        mov              rax, qword ptr [rbp + 1336]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1312], 6
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n00076_assign_α
.Lx00212_0:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1384]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00009_disjunction_α
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n00076_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00205_return_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              rdx, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_getword_γ
#-----------------------------------------------------------------------------------------------------------------------
n00206_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 552], rax
                        mov              qword ptr [rbp + 560], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx00213_60:
                        .section         .rodata
.Lbynamegenfn214:       .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn214]
                        lea              rsi, [rbp + 512]
                        mov              edx, 3
                        lea              rcx, [rbp + 560]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n00145_disjunction_af
                                                                                        jmp   n00214_lit_integer_α
n00206_call_builtin_gen_β:
                                                                                        jmp   .Lx00213_60
#-----------------------------------------------------------------------------------------------------------------------
n00208_binop_α:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 6
                                                                                        jne   .Lx00215_0
                        mov              rax, qword ptr [rbp + 280]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 256], 6
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00216_subscript_α
.Lx00215_0:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n00148_disjunction_af
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00216_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00211_binop_α:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 6
                                                                                        jne   .Lx00217_0
                        mov              rax, qword ptr [rbp + 824]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 800], 6
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00218_assign_α
.Lx00217_0:
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00149_disjunction_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n00218_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00214_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx00219_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00220_op75_α
.Lx00219_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00216_subscript_α:
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00148_disjunction_af
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n00221_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00218_assign_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n00149_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00220_op75_α:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 7
                                                                                        je    .Lx00222_1
                        cmp              eax, 6
                                                                                        jne   .Lx00222_0
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 6
                                                                                        jne   .Lx00222_0
.Lx00222_1:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00223_binop_α
.Lx00222_0:
                        lea              rdi, [rbp + 496]
                        lea              rsi, [rbp + 656]
                        lea              rdx, [rbp + 480]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00223_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00221_deref_α:
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00148_disjunction_af
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n00224_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00223_binop_α:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 6
                                                                                        jne   .Lx00225_0
                        mov              rax, qword ptr [rbp + 488]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 464], 6
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00226_assign_α
.Lx00225_0:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00145_disjunction_af
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n00226_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00224_var_α:
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n00227_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00226_assign_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [1879052560], rax
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n00148_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00227_binop_test_α:
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 2864]
                        mov              rcx, qword ptr [rbp + 2872]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00148_disjunction_af
                        mov              rdi, qword ptr [rbp + 2864]
                        mov              rsi, qword ptr [rbp + 2872]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00055_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_getword_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_getword_β:
                                                                                        jmp   proc_getword_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_getword_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2904]
                        lea              rsp, [rbp + 2928]
                        mov              rbp, [rbp + 2920]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_getword_ω:
                        mov              rax, [rbp + 2912]
                        lea              rsp, [rbp + 2928]
                        mov              rbp, [rbp + 2920]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_getword_dcα:
                        pop              r11
                        sub              rsp, 2944
                        mov              qword ptr [rsp + 2920], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2896], r11
                        lea              rax, [rip + .Lx00228_2]
                        mov              qword ptr [rbp + 2904], rax
                        lea              rax, [rip + .Lx00228_3]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rdi, rbp
                        mov              esi, 2864
                        mov              edx, 2896
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_getword_α_body
.Lx00228_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2928
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00228_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2928
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_format_α
proc_format_α:
                        .global          proc_format_α
                        .global          proc_format_β
                        .global          proc_format_γ
                        .global          proc_format_ω
                        sub              rsp, 2352
                        mov              [rsp + 2328], rcx
                        mov              [rsp + 2336], rdx
                        mov              [rsp + 2344], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2192
                        mov              edx, 2320
                        call             rt_jmp_frame_lexprep2@PLT
proc_format_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00229_disjunction_α:
                        mov              qword ptr [rbp + 1824], 0
                        mov              qword ptr [rbp + 1832], 0
                        mov              dword ptr [rbp + 1840], 0
                                                                                        jmp   n00230_var_ref_α
n00229_disjunction_as:
                        mov              eax, dword ptr [rbp + 1840]
                        cmp              eax, 0
                                                                                        jne   .Lx00231_0
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1832], rax
                                                                                        jmp   n00232_make_list_α
.Lx00231_0:
                                                                                        jmp   n00232_make_list_α
n00229_disjunction_β:
                        mov              eax, dword ptr [rbp + 1840]
                                                                                        jmp   n00233_disjunction_β
n00229_disjunction_af:
                        add              dword ptr [rbp + 1840], 1
                        mov              eax, dword ptr [rbp + 1840]
                                                                                        jmp   n00232_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00232_make_list_α:
                        lea              rdi, [rbp + 1824]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n00234_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00230_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052608
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n00235_nulltest_var_α
n00230_var_ref_β:
                                                                                        jmp   n00229_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00233_disjunction_α:
                        mov              qword ptr [rbp + 1888], 0
                        mov              qword ptr [rbp + 1896], 0
                        mov              dword ptr [rbp + 1904], 0
                                                                                        jmp   n00236_var_α
n00233_disjunction_as:
                        mov              eax, dword ptr [rbp + 1904]
                        cmp              eax, 0
                                                                                        jne   .Lx00237_0
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00238_assign_α
.Lx00237_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00237_1
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00238_assign_α
.Lx00237_1:
                                                                                        jmp   n00238_assign_α
n00233_disjunction_β:
                        mov              eax, dword ptr [rbp + 1904]
                        cmp              eax, 0
                                                                                        je    n00233_disjunction_af
                                                                                        jmp   n00233_disjunction_af
n00233_disjunction_af:
                        add              dword ptr [rbp + 1904], 1
                        mov              eax, dword ptr [rbp + 1904]
                        cmp              eax, 1
                                                                                        je    n00239_lit_integer_α
                                                                                        jmp   n00232_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00240_conjunction_α:
                                                                                        jmp   n00229_disjunction_as
n00240_conjunction_β:
                                                                                        jmp   n00232_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00234_assign_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   n00241_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00235_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              eax, 99
                                                                                        je    n00229_disjunction_af
                        mov              rdi, qword ptr [rbp + 2128]
                        mov              rsi, qword ptr [rbp + 2136]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00229_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00229_disjunction_af
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n00242_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00238_assign_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              rdx, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n00240_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00236_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n00243_unop_test_α
n00236_var_β:
                                                                                        jmp   n00233_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00239_lit_integer_α:
                        mov              qword ptr [rbp + 1952], 6
                        mov              rax, qword ptr [rip + .Lx00244_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n00233_disjunction_as
n00239_lit_integer_β:
                                                                                        jmp   n00233_disjunction_af
.Lx00244_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n00243_unop_test_α:
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 99
                                                                                        je    n00233_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00233_disjunction_af
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n00233_disjunction_as
n00243_unop_test_β:
                                                                                        jmp   n00233_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00241_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00245_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00242_lit_integer_α:
                        mov              qword ptr [rbp + 2176], 6
                        mov              rax, qword ptr [rip + .Lx00246_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n00247_assign_var_α
.Lx00246_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00245_assign_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n00248_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00248_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00249_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00247_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2144]
                        mov              rsi, qword ptr [rbp + 2152]
                        mov              rdx, qword ptr [rbp + 2176]
                        mov              rcx, qword ptr [rbp + 2184]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00229_disjunction_af
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n00250_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00249_iterate_α:
                        mov              qword ptr [rbp + 240], 0
.Lx00251_0:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 240]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              rax, 99
                                                                                        je    n00252_var_α
                                                                                        jmp   n00253_assign_α
n00249_iterate_β:
                        inc              qword ptr [rbp + 240]
                                                                                        jmp   .Lx00251_0
#-----------------------------------------------------------------------------------------------------------------------
n00252_var_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00254_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00250_disjunction_α:
                        mov              qword ptr [rbp + 2048], 0
                        mov              qword ptr [rbp + 2056], 0
                        mov              dword ptr [rbp + 2064], 0
                                                                                        jmp   n00255_var_α
n00250_disjunction_as:
                        mov              eax, dword ptr [rbp + 2064]
                        cmp              eax, 0
                                                                                        jne   .Lx00256_0
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n00257_assign_α
.Lx00256_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00256_1
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n00257_assign_α
.Lx00256_1:
                                                                                        jmp   n00257_assign_α
n00250_disjunction_β:
                        mov              eax, dword ptr [rbp + 2064]
                        cmp              eax, 0
                                                                                        je    n00250_disjunction_af
                                                                                        jmp   n00250_disjunction_af
n00250_disjunction_af:
                        add              dword ptr [rbp + 2064], 1
                        mov              eax, dword ptr [rbp + 2064]
                        cmp              eax, 1
                                                                                        je    n00258_lit_integer_α
                                                                                        jmp   n00259_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00253_assign_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n00260_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00254_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn665:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn665]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00261_var_α
                                                                                        jmp   n00262_assign_α
n00254_call_builtin_icon_β:
                                                                                        jmp   n00261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00261_var_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00263_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00257_assign_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n00259_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00255_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n00264_unop_test_α
n00255_var_β:
                                                                                        jmp   n00250_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00258_lit_integer_α:
                        mov              qword ptr [rbp + 2112], 6
                        mov              rax, qword ptr [rip + .Lx00265_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n00250_disjunction_as
n00258_lit_integer_β:
                                                                                        jmp   n00250_disjunction_af
.Lx00265_0:
                        .quad            80
#-----------------------------------------------------------------------------------------------------------------------
n00264_unop_test_α:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 99
                                                                                        je    n00250_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00250_disjunction_af
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n00250_disjunction_as
n00264_unop_test_β:
                                                                                        jmp   n00250_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00260_bound_α:
                        mov              qword ptr [rbp + 272], rsp
                                                                                        jmp   n00266_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00262_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   n00261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00263_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx00267_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00268_call_builtin_icon_α
.Lx00267_0:
                        .quad            .Lx00267_0_s
.Lx00267_0_s:
                        .string          "variable\tprocedure\t\tline numbers\n"
#-----------------------------------------------------------------------------------------------------------------------
n00269_var_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00270_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00259_disjunction_α:
                        mov              qword ptr [rbp + 1968], 0
                        mov              qword ptr [rbp + 1976], 0
                        mov              dword ptr [rbp + 1984], 0
                                                                                        jmp   n00271_var_α
n00259_disjunction_as:
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 0
                                                                                        jne   .Lx00272_0
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n00273_assign_α
.Lx00272_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00272_1
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n00273_assign_α
.Lx00272_1:
                                                                                        jmp   n00273_assign_α
n00259_disjunction_β:
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 0
                                                                                        je    n00259_disjunction_af
                                                                                        jmp   n00259_disjunction_af
n00259_disjunction_af:
                        add              dword ptr [rbp + 1984], 1
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 1
                                                                                        je    n00274_lit_integer_α
                                                                                        jmp   n00233_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00266_var_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n00275_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00268_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn683:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn683]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n00269_var_α
                                                                                        jmp   n00269_var_α
n00268_call_builtin_icon_β:
                                                                                        jmp   n00269_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00270_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_format_γ
#-----------------------------------------------------------------------------------------------------------------------
n00273_assign_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              rdx, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n00233_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00271_var_α:
                        mov              rax, qword ptr [1879052448]
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n00276_unop_test_α
n00271_var_β:
                                                                                        jmp   n00259_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00274_lit_integer_α:
                        mov              qword ptr [rbp + 2032], 6
                        mov              rax, qword ptr [rip + .Lx00277_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n00259_disjunction_as
n00274_lit_integer_β:
                                                                                        jmp   n00259_disjunction_af
.Lx00277_0:
                        .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n00276_unop_test_α:
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 99
                                                                                        je    n00259_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00259_disjunction_af
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n00259_disjunction_as
n00276_unop_test_β:
                                                                                        jmp   n00259_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00275_iterate_α:
                        mov              qword ptr [rbp + 336], 0
.Lx00278_0:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 336]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              rax, 99
                                                                                        je    n00279_unmark_α
                                                                                        jmp   n00280_assign_α
n00275_iterate_β:
                        inc              qword ptr [rbp + 336]
                                                                                        jmp   .Lx00278_0
#-----------------------------------------------------------------------------------------------------------------------
n00279_unmark_α:
                        mov              rsp, qword ptr [rbp + 272]
                                                                                        jmp   n00249_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00280_assign_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n00281_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00281_bound_α:
                        mov              qword ptr [rbp + 368], rsp
                                                                                        jmp   n00282_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00282_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n00283_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00283_lit_integer_α:
                        mov              qword ptr [rbp + 1488], 6
                        mov              rax, qword ptr [rip + .Lx00284_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n00285_subscript_α
.Lx00284_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00285_subscript_α:
                        mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        mov              rdx, qword ptr [rbp + 1488]
                        mov              rcx, qword ptr [rbp + 1496]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00286_var_α
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n00287_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00287_deref_α:
                        mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00286_var_α
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n00288_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00286_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00289_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00288_lit_integer_α:
                        mov              qword ptr [rbp + 1536], 6
                        mov              rax, qword ptr [rip + .Lx00290_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n00291_lit_string_α
.Lx00290_0:
                        .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n00289_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n00292_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00293_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n00294_var_α
n00293_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx00295_0
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00296_var_α
.Lx00295_0:
                                                                                        jmp   n00296_var_α
n00293_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                                                                                        jmp   n00296_var_α
n00293_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                                                                                        jmp   n00296_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00291_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx00297_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n00298_call_builtin_icon_α
.Lx00297_0:
                        .quad            .Lx00297_0_s
.Lx00297_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00292_lit_integer_α:
                        mov              qword ptr [rbp + 880], 6
                        mov              rax, qword ptr [rip + .Lx00299_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n00300_var_α
.Lx00299_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00296_var_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n00301_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00294_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n00302_var_α
n00294_var_β:
                                                                                        jmp   n00293_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00303_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n00293_disjunction_as
n00303_assign_β:
                                                                                        jmp   n00296_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00298_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1448], rax
                        .section         .rodata
.Lrkfn716:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn716]
                        lea              rsi, [rbp + 1408]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n00286_var_α
                                                                                        jmp   n00304_var_ref_α
n00298_call_builtin_icon_β:
                                                                                        jmp   n00286_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00300_var_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n00305_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00301_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n00306_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00307_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00308_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00302_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n00309_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00304_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n00310_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00305_unop_α:
                        mov              rdi, qword ptr [rbp + 2224]
                        mov              rsi, qword ptr [rbp + 2232]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n00311_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00306_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn729:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn729]
                        lea              rsi, [rbp + 480]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n00307_var_α
                                                                                        jmp   n00307_var_α
n00306_call_builtin_icon_β:
                                                                                        jmp   n00307_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00308_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n00312_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00313_unmark_α:
                        mov              rsp, qword ptr [rbp + 368]
                                                                                        jmp   n00275_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00309_binop_test_α:
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 100
                                                                                        je    .Lx00314_0
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 100
                                                                                        je    .Lx00314_0
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 6
                                                                                        jne   .Lx00314_2
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 6
                                                                                        jne   .Lx00314_2
.Lx00314_1:
                        mov              rax, qword ptr [rbp + 2248]
                        mov              rcx, qword ptr [rbp + 2264]
                        cmp              rax, rcx
                                                                                        jne   n00293_disjunction_af
                        mov              rcx, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 672], rcx
                        mov              rcx, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 680], rcx
                                                                                        jmp   n00315_var_α
.Lx00314_0:
                        mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        mov              rdx, qword ptr [rbp + 2256]
                        mov              rcx, qword ptr [rbp + 2264]
                        mov              r8d, 9
                        lea              r9, [rbp + 672]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00314_1
                        cmp              eax, 1
                                                                                        je    n00293_disjunction_af
                                                                                        jmp   n00315_var_α
.Lx00314_2:
                        mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        mov              rdx, qword ptr [rbp + 2256]
                        mov              rcx, qword ptr [rbp + 2264]
                        mov              r8d, 9
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00293_disjunction_af
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00315_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00310_lit_integer_α:
                        mov              qword ptr [rbp + 1664], 6
                        mov              rax, qword ptr [rip + .Lx00316_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n00317_subscript_α
.Lx00316_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00311_to_α:
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 880], 6
                        mov              qword ptr [rbp + 888], rax
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 896], 6
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 864], rax
.Lx00318_0:
                        mov              rax, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 904]
                        cmp              rax, rcx
                                                                                        jg    n00293_disjunction_α
                        mov              qword ptr [rbp + 848], 6
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00319_subscript_α
n00311_to_β:
                        inc              qword ptr [rbp + 864]
                                                                                        jmp   .Lx00318_0
#-----------------------------------------------------------------------------------------------------------------------
n00312_conjunction_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00313_unmark_α
n00312_conjunction_β:
                                                                                        jmp   n00313_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00315_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00320_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00317_subscript_α:
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              rdx, qword ptr [rbp + 1664]
                        mov              rcx, qword ptr [rbp + 1672]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00286_var_α
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n00321_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00319_subscript_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00311_to_β
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n00322_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00320_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx00323_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00324_lit_integer_α
.Lx00323_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00321_deref_α:
                        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00286_var_α
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n00325_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00322_deref_α:
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00311_to_β
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n00326_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00324_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx00327_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00328_subscript_α
.Lx00327_0:
                        .quad            18446744073709551610
#-----------------------------------------------------------------------------------------------------------------------
n00325_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n00329_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00326_var_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00330_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00328_subscript_α:
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        mov              r8, qword ptr [rbp + 656]
                        mov              r9, qword ptr [rbp + 664]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n00296_var_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00303_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00329_lit_integer_α:
                        mov              qword ptr [rbp + 1760], 6
                        mov              rax, qword ptr [rip + .Lx00331_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n00332_op75_α
.Lx00331_0:
                        .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n00330_lit_string_α:
                        mov              qword ptr [rbp + 976], 1
                        mov              rax, qword ptr [rip + .Lx00333_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n00334_call_builtin_icon_α
.Lx00333_0:
                        .quad            .Lx00333_0_s
.Lx00333_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00332_op75_α:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 7
                                                                                        je    .Lx00335_1
                        cmp              eax, 6
                                                                                        jne   .Lx00335_0
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 6
                                                                                        jne   .Lx00335_0
.Lx00335_1:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n00336_binop_α
.Lx00335_0:
                        lea              rdi, [rbp + 2256]
                        lea              rsi, [rbp + 1760]
                        lea              rdx, [rbp + 1728]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00336_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00334_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn756:              .string          "center"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn756]
                        lea              rsi, [rbp + 768]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n00311_to_β
                                                                                        jmp   n00337_binop_α
n00334_call_builtin_icon_β:
                                                                                        jmp   n00311_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00336_binop_α:
                        mov              eax, dword ptr [rbp + 1728]
                        cmp              eax, 6
                                                                                        jne   .Lx00338_0
                        mov              rax, qword ptr [rbp + 1736]
                        mov              rcx, 16
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1712], 6
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n00339_lit_string_α
.Lx00338_0:
                        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
                        mov              rdx, qword ptr [rbp + 1760]
                        mov              rcx, qword ptr [rbp + 1768]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n00286_var_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n00339_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00337_binop_α:
                        mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n00340_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00339_lit_string_α:
                        mov              qword ptr [rbp + 1776], 1
                        mov              rax, qword ptr [rip + .Lx00341_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n00342_call_builtin_icon_α
.Lx00341_0:
                        .quad            .Lx00341_0_s
.Lx00341_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00340_assign_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n00343_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00342_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1624], rax
                        .section         .rodata
.Lrkfn762:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn762]
                        lea              rsi, [rbp + 1584]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 99
                                                                                        je    n00286_var_α
                                                                                        jmp   n00344_binop_α
n00342_call_builtin_icon_β:
                                                                                        jmp   n00286_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00343_bound_α:
                        mov              qword ptr [rbp + 992], rsp
                                                                                        jmp   n00345_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00344_binop_α:
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              rdx, qword ptr [rbp + 1568]
                        mov              rcx, qword ptr [rbp + 1576]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n00346_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00345_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00347_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00346_assign_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n00286_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00347_var_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n00348_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n00349_disjunction_α:
                        mov              qword ptr [rbp + 1056], 0
                        mov              qword ptr [rbp + 1064], 0
                        mov              dword ptr [rbp + 1072], 0
                                                                                        jmp   n00350_var_α
n00349_disjunction_as:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 0
                                                                                        jne   .Lx00351_0
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n00352_conjunction_α
.Lx00351_0:
                                                                                        jmp   n00352_conjunction_α
n00349_disjunction_β:
                        mov              eax, dword ptr [rbp + 1072]
                                                                                        jmp   n00353_unmark_α
n00349_disjunction_af:
                        add              dword ptr [rbp + 1072], 1
                        mov              eax, dword ptr [rbp + 1072]
                                                                                        jmp   n00353_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00348_op75_α:
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 7
                                                                                        je    .Lx00354_1
                        cmp              eax, 6
                                                                                        jne   .Lx00354_0
                        mov              eax, dword ptr [rbp + 2288]
                        cmp              eax, 6
                                                                                        jne   .Lx00354_0
.Lx00354_1:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n00355_op75_α
.Lx00354_0:
                        lea              rdi, [rbp + 2240]
                        lea              rsi, [rbp + 2288]
                        lea              rdx, [rbp + 1328]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00355_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n00352_conjunction_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n00353_unmark_α
n00352_conjunction_β:
                                                                                        jmp   n00353_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00350_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n00356_var_α
n00350_var_β:
                                                                                        jmp   n00349_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00357_conjunction_α:
                                                                                        jmp   n00349_disjunction_as
n00357_conjunction_β:
                                                                                        jmp   n00353_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00355_op75_α:
                        mov              eax, dword ptr [rbp + 2288]
                        cmp              eax, 7
                                                                                        je    .Lx00358_1
                        cmp              eax, 6
                                                                                        jne   .Lx00358_0
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 6
                                                                                        jne   .Lx00358_0
.Lx00358_1:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n00359_binop_α
.Lx00358_0:
                        lea              rdi, [rbp + 2288]
                        lea              rsi, [rbp + 2240]
                        lea              rdx, [rbp + 1312]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00359_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00353_unmark_α:
                        mov              rsp, qword ptr [rbp + 992]
                                                                                        jmp   n00311_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00356_var_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00360_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00359_binop_α:
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 6
                                                                                        jne   .Lx00361_0
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 6
                                                                                        jne   .Lx00361_0
                        mov              rax, qword ptr [rbp + 1336]
                        mov              rcx, qword ptr [rbp + 1320]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1296], 6
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n00362_assign_α
.Lx00361_0:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00349_disjunction_α
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n00362_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00360_var_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n00363_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n00362_assign_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n00349_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00363_op75_α:
                        mov              eax, dword ptr [rbp + 2304]
                        cmp              eax, 7
                                                                                        je    .Lx00364_1
                        cmp              eax, 6
                                                                                        jne   .Lx00364_0
                        mov              eax, dword ptr [rbp + 2288]
                        cmp              eax, 6
                                                                                        jne   .Lx00364_0
.Lx00364_1:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n00365_op75_α
.Lx00364_0:
                        lea              rdi, [rbp + 2304]
                        lea              rsi, [rbp + 2288]
                        lea              rdx, [rbp + 1248]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00365_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n00365_op75_α:
                        mov              eax, dword ptr [rbp + 2288]
                        cmp              eax, 7
                                                                                        je    .Lx00366_1
                        cmp              eax, 6
                                                                                        jne   .Lx00366_0
                        mov              eax, dword ptr [rbp + 2304]
                        cmp              eax, 6
                                                                                        jne   .Lx00366_0
.Lx00366_1:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n00367_binop_α
.Lx00366_0:
                        lea              rdi, [rbp + 2288]
                        lea              rsi, [rbp + 2304]
                        lea              rdx, [rbp + 1232]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00367_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00367_binop_α:
                        mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 6
                                                                                        jne   .Lx00368_0
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 6
                                                                                        jne   .Lx00368_0
                        mov              rax, qword ptr [rbp + 1256]
                        mov              rcx, qword ptr [rbp + 1240]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1216], 6
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n00369_binop_test_α
.Lx00368_0:
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              rdx, qword ptr [rbp + 1232]
                        mov              rcx, qword ptr [rbp + 1240]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n00349_disjunction_af
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n00369_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00369_binop_test_α:
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 100
                                                                                        je    .Lx00370_0
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 100
                                                                                        je    .Lx00370_0
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 6
                                                                                        jne   .Lx00370_2
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 6
                                                                                        jne   .Lx00370_2
.Lx00370_1:
                        mov              rax, qword ptr [rbp + 2248]
                        mov              rcx, qword ptr [rbp + 1224]
                        cmp              rax, rcx
                                                                                        jl    n00349_disjunction_af
                        mov              rcx, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rcx
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rcx
                                                                                        jmp   n00371_var_α
.Lx00370_0:
                        mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        mov              rdx, qword ptr [rbp + 1216]
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              r8d, 8
                        lea              r9, [rbp + 1184]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00370_1
                        cmp              eax, 1
                                                                                        je    n00349_disjunction_af
                                                                                        jmp   n00371_var_α
.Lx00370_2:
                        mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        mov              rdx, qword ptr [rbp + 1216]
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              r8d, 8
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00349_disjunction_af
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n00371_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00371_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00372_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00372_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx00373_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00374_binop_α
.Lx00373_0:
                        .quad            .Lx00373_0_s
.Lx00373_0_s:
                        .string          "\n\t\t\t\t\t"
#-----------------------------------------------------------------------------------------------------------------------
n00375_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n00376_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00374_binop_α:
                        mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        mov              rdx, qword ptr [rbp + 1168]
                        mov              rcx, qword ptr [rbp + 1176]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n00377_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00376_assign_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n00357_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00377_assign_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n00375_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_format_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_format_β:
                                                                                        jmp   proc_format_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_format_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2328]
                        lea              rsp, [rbp + 2352]
                        mov              rbp, [rbp + 2344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_format_ω:
                        mov              rax, [rbp + 2336]
                        lea              rsp, [rbp + 2352]
                        mov              rbp, [rbp + 2344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_format_dcα:
                        pop              r11
                        sub              rsp, 2368
                        mov              qword ptr [rsp + 2344], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2320], r11
                        lea              rax, [rip + .Lx00378_2]
                        mov              qword ptr [rbp + 2328], rax
                        lea              rax, [rip + .Lx00378_3]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 2192
                        mov              edx, 2320
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_format_α_body
.Lx00378_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00378_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2352
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_options_α
proc_options_α:
                        .global          proc_options_α
                        .global          proc_options_β
                        .global          proc_options_γ
                        .global          proc_options_ω
                        sub              rsp, 2768
                        mov              [rsp + 2744], rcx
                        mov              [rsp + 2752], rdx
                        mov              [rsp + 2760], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2608
                        mov              edx, 2736
                        call             rt_jmp_frame_lexprep2@PLT
proc_options_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00379_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n00380_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00380_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 99
                                                                                        je    n00381_call_builtin_icon_α
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              rsi, qword ptr [rbp + 2504]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00381_call_builtin_icon_α
                        cmp              eax, 0
                                                                                        jne   n00381_call_builtin_icon_α
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n00382_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00382_lit_charset_α:
                        mov              qword ptr [rbp + 2592], 1
                        mov              dword ptr [rbp + 2596], -1
                        mov              rax, qword ptr [rip + .Lx00383_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n00384_call_builtin_icon_α
.Lx00383_0:
                        .quad            .Lx00383_0_s
.Lx00383_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00381_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn915:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn915]
                        lea              rsi, [rbp + 2480]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 99
                                                                                        je    n00385_make_list_α
                                                                                        jmp   n00386_assign_α
n00381_call_builtin_icon_β:
                                                                                        jmp   n00385_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00384_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lrkfn917:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn917]
                        lea              rsi, [rbp + 2560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    n00381_call_builtin_icon_α
                                                                                        jmp   n00387_assign_var_α
n00384_call_builtin_icon_β:
                                                                                        jmp   n00381_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00386_assign_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n00385_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00385_make_list_α:
                        lea              rdi, [rbp + 2464]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n00388_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00387_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2512]
                        mov              rsi, qword ptr [rbp + 2520]
                        mov              rdx, qword ptr [rbp + 2544]
                        mov              rcx, qword ptr [rbp + 2552]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00381_call_builtin_icon_α
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n00381_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00388_assign_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n00389_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00389_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00390_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00390_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn926:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn926]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n00391_var_α
                                                                                        jmp   n00392_assign_α
n00390_call_builtin_icon_β:
                                                                                        jmp   n00391_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00391_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00393_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00392_assign_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n00394_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00393_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00395_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00396_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00397_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00394_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n00398_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00395_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn937:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn937]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n00396_var_α
                                                                                        jmp   n00399_call_builtin_icon_α
n00395_call_builtin_icon_β:
                                                                                        jmp   n00396_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00397_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_options_γ
#-----------------------------------------------------------------------------------------------------------------------
n00398_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00400_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00399_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn942:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn942]
                        lea              rsi, [rbp + 80]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n00396_var_α
                                                                                        jmp   n00391_var_α
n00399_call_builtin_icon_β:
                                                                                        jmp   n00396_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00400_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n00401_lit_string_α
n00400_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx00402_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00403_scan_α
.Lx00402_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00402_1
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00403_scan_α
.Lx00402_1:
                                                                                        jmp   n00403_scan_α
n00400_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n00404_disjunction_β
                                                                                        jmp   n00405_scan_α
n00400_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n00406_var_α
                                                                                        jmp   n00405_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00403_scan_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00389_var_α
n00403_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n00400_disjunction_β
                                                                                        jmp   n00389_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00401_lit_string_α:
                        mov              qword ptr [rbp + 2320], 1
                        mov              rax, qword ptr [rip + .Lx00407_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n00408_scan_match_α
n00401_lit_string_β:
                                                                                        jmp   n00400_disjunction_af
.Lx00407_0:
                        .quad            .Lx00407_0_s
.Lx00407_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00404_disjunction_α:
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0
                                                                                        jmp   n00409_var_α
n00404_disjunction_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        jne   .Lx00410_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00411_lit_integer_α
.Lx00410_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00410_1
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00411_lit_integer_α
.Lx00410_1:
                                                                                        jmp   n00411_lit_integer_α
n00404_disjunction_β:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        je    n00412_disjunction_β
                                                                                        jmp   n00411_lit_integer_α
n00404_disjunction_af:
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1
                                                                                        je    n00413_lit_string_α
                                                                                        jmp   n00411_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00406_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n00414_var_α
n00406_var_β:
                                                                                        jmp   n00405_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00415_conjunction_α:
                                                                                        jmp   n00400_disjunction_as
n00415_conjunction_β:
                                                                                        jmp   n00405_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00416_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        .section         .rodata
.Lrkfn954:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn954]
                        lea              rsi, [rbp + 2352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    n00405_scan_α
                                                                                        jmp   n00400_disjunction_as
n00416_call_builtin_icon_β:
                                                                                        jmp   n00405_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00408_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00417_239
                        add              rsp, 16
                                                                                        jmp   n00400_disjunction_af
.Lx00417_239:
                        mov              rdi, qword ptr [rip + .Lx00417_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00417_240
                        add              rsp, 16
                                                                                        jmp   n00400_disjunction_af
.Lx00417_240:
                        mov              qword ptr [rbp + 2288], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n00418_scan_tab_α
.Lx00417_0:
                        .quad            .Lx00417_0_s
.Lx00417_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00411_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx00419_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00420_scan_move_α
.Lx00419_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00409_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00421_var_α
n00409_var_β:
                                                                                        jmp   n00404_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00412_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n00422_lit_charset_α
n00412_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx00423_0
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00424_assign_var_α
.Lx00423_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00423_1
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00424_assign_var_α
.Lx00423_1:
                                                                                        jmp   n00424_assign_var_α
n00412_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n00411_lit_integer_α
                                                                                        jmp   n00411_lit_integer_α
n00412_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    n00425_lit_integer_α
                                                                                        jmp   n00411_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00413_lit_string_α:
                        mov              qword ptr [rbp + 2000], 1
                        mov              rax, qword ptr [rip + .Lx00426_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n00427_var_α
n00413_lit_string_β:
                                                                                        jmp   n00411_lit_integer_α
.Lx00426_0:
                        .quad            .Lx00426_0_s
.Lx00426_0_s:
                        .string          "Unrecognized option: -"
#-----------------------------------------------------------------------------------------------------------------------
n00424_assign_var_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 560]
                        mov              rcx, qword ptr [rbp + 568]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00411_lit_integer_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00404_disjunction_as
n00424_assign_var_β:
                                                                                        jmp   n00411_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00428_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1976], rax
                        .section         .rodata
.Lrkfn965:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn965]
                        lea              rsi, [rbp + 1952]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n00411_lit_integer_α
                                                                                        jmp   n00404_disjunction_as
n00428_call_builtin_icon_β:
                                                                                        jmp   n00411_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00414_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n00416_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00405_scan_α:
                        lea              rdi, [rbp + 304]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00389_var_α
n00405_scan_β:
                                                                                        jmp   n00389_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00418_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2296]
                        cmp              rax, 1
                                                                                        jge   .Lx00429_0
                        add              rax, r15
                        add              rax, 1
.Lx00429_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00429_239
                        add              rsp, 16
                                                                                        jmp   n00400_disjunction_af
.Lx00429_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00429_240
                        add              rsp, 16
                                                                                        jmp   n00400_disjunction_af
.Lx00429_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n00430_lit_integer_α
n00418_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00400_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00420_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx00431_239
                        add              rsp, 16
                                                                                        jmp   n00405_scan_α
.Lx00431_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00431_240
                        add              rsp, 16
                                                                                        jmp   n00405_scan_α
.Lx00431_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n00432_assign_α
n00420_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00405_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00421_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n00433_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00422_lit_charset_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              dword ptr [rbp + 1684], -1
                        mov              rax, qword ptr [rip + .Lx00434_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n00435_var_ref_α
n00422_lit_charset_β:
                                                                                        jmp   n00412_disjunction_af
.Lx00434_0:
                        .quad            .Lx00434_0_s
.Lx00434_0_s:
                        .string          "+.:"
#-----------------------------------------------------------------------------------------------------------------------
n00425_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 6
                        mov              rax, qword ptr [rip + .Lx00436_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n00412_disjunction_as
n00425_lit_integer_β:
                                                                                        jmp   n00411_lit_integer_α
.Lx00436_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00437_conjunction_α:
                                                                                        jmp   n00412_disjunction_as
n00437_conjunction_β:
                                                                                        jmp   n00411_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00427_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n00428_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00430_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 6
                        mov              rax, qword ptr [rip + .Lx00438_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n00439_scan_pos_α
.Lx00438_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00432_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n00404_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00433_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        mov              qword ptr [rbp + 1872], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx00440_60:
                        .section         .rodata
.Lbynamegenfn385:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn385]
                        lea              rsi, [rbp + 1840]
                        mov              edx, 2
                        lea              rcx, [rbp + 1872]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n00404_disjunction_af
                                                                                        jmp   n00441_lit_integer_α
n00433_call_builtin_gen_β:
                                                                                        jmp   .Lx00440_60
#-----------------------------------------------------------------------------------------------------------------------
n00435_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n00442_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00439_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00443_0
                        add              rax, r15
                        add              rax, 1
.Lx00443_0:
                        cmp              rax, 1
                                                                                        jl    n00444_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00444_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00444_var_α
                        mov              qword ptr [rbp + 2224], 6
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n00418_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00441_lit_integer_α:
                        mov              qword ptr [rbp + 1920], 6
                        mov              rax, qword ptr [rip + .Lx00445_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n00446_op75_α
.Lx00445_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00442_var_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n00447_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00444_var_α:
                        mov              qword ptr [rbp + 2208], 0
                        mov              qword ptr [rbp + 2216], 0
                                                                                        jmp   n00448_conjunction_α
n00444_var_β:
                                                                                        jmp   n00418_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00446_op75_α:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 7
                                                                                        je    .Lx00449_1
                        cmp              eax, 6
                                                                                        jne   .Lx00449_0
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 6
                                                                                        jne   .Lx00449_0
.Lx00449_1:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n00450_binop_α
.Lx00449_0:
                        lea              rdi, [rbp + 1824]
                        lea              rsi, [rbp + 1920]
                        lea              rdx, [rbp + 1808]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00450_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00447_subscript_α:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              rdx, qword ptr [rbp + 1728]
                        mov              rcx, qword ptr [rbp + 1736]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00412_disjunction_af
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00451_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00448_conjunction_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n00452_disjunction_α
n00448_conjunction_β:
                                                                                        jmp   n00400_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00450_binop_α:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 6
                                                                                        jne   .Lx00453_0
                        mov              rax, qword ptr [rbp + 1816]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1792], 6
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00454_assign_α
.Lx00453_0:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00404_disjunction_af
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n00454_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00451_deref_α:
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00412_disjunction_af
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n00455_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00452_disjunction_α:
                        mov              qword ptr [rbp + 2032], 0
                        mov              qword ptr [rbp + 2040], 0
                        mov              dword ptr [rbp + 2048], 0
                                                                                        jmp   n00456_lit_string_α
n00452_disjunction_as:
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 0
                                                                                        jne   .Lx00457_0
                                                                                        jmp   n00411_lit_integer_α
.Lx00457_0:
                                                                                        jmp   n00411_lit_integer_α
n00452_disjunction_β:
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00411_lit_integer_α
n00452_disjunction_af:
                        add              dword ptr [rbp + 2048], 1
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00411_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00454_assign_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n00458_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00455_assign_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n00459_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00456_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx00460_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n00461_scan_match_α
n00456_lit_string_β:
                                                                                        jmp   n00452_disjunction_af
.Lx00460_0:
                        .quad            .Lx00460_0_s
.Lx00460_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00458_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n00462_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00459_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn401:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn401]
                        lea              rsi, [rbp + 1632]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 99
                                                                                        je    n00412_disjunction_af
                                                                                        jmp   n00463_disjunction_α
n00459_call_builtin_icon_β:
                                                                                        jmp   n00412_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00461_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00464_239
                        add              rsp, 16
                                                                                        jmp   n00452_disjunction_af
.Lx00464_239:
                        mov              rdi, qword ptr [rip + .Lx00464_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00464_240
                        add              rsp, 16
                                                                                        jmp   n00452_disjunction_af
.Lx00464_240:
                        mov              qword ptr [rbp + 2144], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n00465_scan_tab_α
.Lx00464_0:
                        .quad            .Lx00464_0_s
.Lx00464_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00462_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00466_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00463_disjunction_α:
                        mov              qword ptr [rbp + 1344], 0
                        mov              qword ptr [rbp + 1352], 0
                        mov              dword ptr [rbp + 1360], 0
                                                                                        jmp   n00467_lit_string_α
n00463_disjunction_as:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        jne   .Lx00468_0
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00469_assign_α
.Lx00468_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00468_1
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00469_assign_α
.Lx00468_1:
                        cmp              eax, 2
                                                                                        jne   .Lx00468_2
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00469_assign_α
.Lx00468_2:
                                                                                        jmp   n00469_assign_α
n00463_disjunction_β:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        je    n00463_disjunction_af
                        cmp              eax, 1
                                                                                        je    n00463_disjunction_af
                                                                                        jmp   n00463_disjunction_af
n00463_disjunction_af:
                        add              dword ptr [rbp + 1360], 1
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 1
                                                                                        je    n00470_var_α
                        cmp              eax, 2
                                                                                        je    n00471_lit_string_α
                                                                                        jmp   n00472_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00465_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2152]
                        cmp              rax, 1
                                                                                        jge   .Lx00473_0
                        add              rax, r15
                        add              rax, 1
.Lx00473_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00473_239
                        add              rsp, 16
                                                                                        jmp   n00452_disjunction_af
.Lx00473_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00473_240
                        add              rsp, 16
                                                                                        jmp   n00452_disjunction_af
.Lx00473_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n00474_lit_integer_α
n00465_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00452_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00466_subscript_α:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00411_lit_integer_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n00412_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00469_assign_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n00472_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00467_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx00475_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n00476_lit_integer_α
n00467_lit_string_β:
                                                                                        jmp   n00463_disjunction_af
.Lx00475_0:
                        .quad            .Lx00475_0_s
.Lx00475_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00470_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n00477_call_builtin_icon_α
n00470_var_β:
                                                                                        jmp   n00463_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00471_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx00478_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n00479_var_α
n00471_lit_string_β:
                                                                                        jmp   n00463_disjunction_af
.Lx00478_0:
                        .quad            .Lx00478_0_s
.Lx00478_0_s:
                        .string          "No parameter following -"
#-----------------------------------------------------------------------------------------------------------------------
n00480_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00463_disjunction_af
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n00463_disjunction_as
n00480_binop_test_β:
                                                                                        jmp   n00463_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00477_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn1022:             .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1022]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n00463_disjunction_af
                                                                                        jmp   n00463_disjunction_as
n00477_call_builtin_icon_β:
                                                                                        jmp   n00463_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00481_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1560], rax
                        .section         .rodata
.Lrkfn1024:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1024]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n00463_disjunction_af
                                                                                        jmp   n00463_disjunction_as
n00481_call_builtin_icon_β:
                                                                                        jmp   n00463_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00474_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 6
                        mov              rax, qword ptr [rip + .Lx00482_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n00483_scan_pos_α
.Lx00482_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00472_var_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00484_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00476_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 6
                        mov              rax, qword ptr [rip + .Lx00485_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n00486_scan_tab_α
.Lx00485_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00479_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n00481_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00483_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00487_0
                        add              rax, r15
                        add              rax, 1
.Lx00487_0:
                        cmp              rax, 1
                                                                                        jl    n00465_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00465_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00465_scan_tab_β
                        mov              qword ptr [rbp + 2080], 6
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n00488_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00484_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx00489_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n00490_call_builtin_α
.Lx00489_0:
                        .quad            .Lx00489_0_s
.Lx00489_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n00486_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00491_0
                        add              rax, r15
                        add              rax, 1
.Lx00491_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00491_239
                        add              rsp, 16
                                                                                        jmp   n00463_disjunction_af
.Lx00491_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00491_240
                        add              rsp, 16
                                                                                        jmp   n00463_disjunction_af
.Lx00491_240:
                        mov              qword ptr [rsp + 0], r14
                        mov              rdi, r13
                        mov              rsi, r14
                        mov              rdx, rax
                        sub              rdx, 1
                        mov              r14, rdx
                        push             r10
                        push             r10
                        call             rt_substr@PLT
                        pop              r10
                        pop              r10
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n00480_binop_test_α
n00486_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00463_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00488_conjunction_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n00391_var_α
n00488_conjunction_β:
                                                                                        jmp   n00452_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00490_call_builtin_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn1038:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1038]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n00492_lit_string_α
                                                                                        jmp   n00493_var_α
n00490_call_builtin_β:
                                                                                        jmp   n00492_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00493_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00494_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00492_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx00495_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n00496_call_builtin_α
.Lx00495_0:
                        .quad            .Lx00495_0_s
.Lx00495_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n00494_assign_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00497_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00496_call_builtin_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn1044:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1044]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n00498_lit_string_α
                                                                                        jmp   n00499_disjunction_α
n00496_call_builtin_β:
                                                                                        jmp   n00498_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00497_var_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00437_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00499_disjunction_α:
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              dword ptr [rbp + 976], 0
                                                                                        jmp   n00500_var_α
n00499_disjunction_as:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        jne   .Lx00501_0
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00502_assign_α
.Lx00501_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00501_1
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00502_assign_α
.Lx00501_1:
                                                                                        jmp   n00502_assign_α
n00499_disjunction_β:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        je    n00499_disjunction_af
                                                                                        jmp   n00499_disjunction_af
n00499_disjunction_af:
                        add              dword ptr [rbp + 976], 1
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 1
                                                                                        je    n00503_lit_string_α
                                                                                        jmp   n00411_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00498_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx00504_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00505_call_builtin_α
.Lx00504_0:
                        .quad            .Lx00504_0_s
.Lx00504_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n00502_assign_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00497_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00500_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n00506_call_builtin_icon_α
n00500_var_β:
                                                                                        jmp   n00499_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00503_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx00507_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00508_var_α
n00503_lit_string_β:
                                                                                        jmp   n00499_disjunction_af
.Lx00507_0:
                        .quad            .Lx00507_0_s
.Lx00507_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00506_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn1055:             .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1055]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n00499_disjunction_af
                                                                                        jmp   n00499_disjunction_as
n00506_call_builtin_icon_β:
                                                                                        jmp   n00499_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00509_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lrkfn1057:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1057]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n00499_disjunction_af
                                                                                        jmp   n00499_disjunction_as
n00509_call_builtin_icon_β:
                                                                                        jmp   n00499_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00505_call_builtin_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lrkfn1059:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1059]
                        lea              rsi, [rbp + 896]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n00411_lit_integer_α
                                                                                        jmp   n00510_disjunction_α
n00505_call_builtin_β:
                                                                                        jmp   n00411_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00508_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00511_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00510_disjunction_α:
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              dword ptr [rbp + 672], 0
                                                                                        jmp   n00512_var_α
n00510_disjunction_as:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        jne   .Lx00513_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00514_assign_α
.Lx00513_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00513_1
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00514_assign_α
.Lx00513_1:
                                                                                        jmp   n00514_assign_α
n00510_disjunction_β:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        je    n00510_disjunction_af
                                                                                        jmp   n00510_disjunction_af
n00510_disjunction_af:
                        add              dword ptr [rbp + 672], 1
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 1
                                                                                        je    n00515_lit_string_α
                                                                                        jmp   n00411_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00511_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx00516_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00509_call_builtin_icon_α
.Lx00516_0:
                        .quad            .Lx00516_0_s
.Lx00516_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00514_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00497_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00512_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00517_call_builtin_icon_α
n00512_var_β:
                                                                                        jmp   n00510_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00515_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx00518_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00519_var_α
n00515_lit_string_β:
                                                                                        jmp   n00510_disjunction_af
.Lx00518_0:
                        .quad            .Lx00518_0_s
.Lx00518_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00517_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn1070:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1070]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n00510_disjunction_af
                                                                                        jmp   n00510_disjunction_as
n00517_call_builtin_icon_β:
                                                                                        jmp   n00510_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00520_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn1072:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1072]
                        lea              rsi, [rbp + 768]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n00510_disjunction_af
                                                                                        jmp   n00510_disjunction_as
n00520_call_builtin_icon_β:
                                                                                        jmp   n00510_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00519_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00521_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00521_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx00522_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00520_call_builtin_icon_α
.Lx00522_0:
                        .quad            .Lx00522_0_s
.Lx00522_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
proc_options_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_options_β:
                                                                                        jmp   proc_options_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_options_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 2744]
                        lea              rsp, [rbp + 2768]
                        mov              rbp, [rbp + 2760]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_options_ω:
                        mov              rax, [rbp + 2752]
                        lea              rsp, [rbp + 2768]
                        mov              rbp, [rbp + 2760]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_options_dcα:
                        pop              r11
                        sub              rsp, 2784
                        mov              qword ptr [rsp + 2760], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 2736], r11
                        lea              rax, [rip + .Lx00523_2]
                        mov              qword ptr [rbp + 2744], rax
                        lea              rax, [rip + .Lx00523_3]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 2608
                        mov              edx, 2736
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_options_α_body
.Lx00523_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2768
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00523_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -2768
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Init___α
proc_Init___α:
                        .global          proc_Init___α
                        .global          proc_Init___β
                        .global          proc_Init___γ
                        .global          proc_Init___ω
                        sub              rsp, 464
                        mov              [rsp + 440], rcx
                        mov              [rsp + 448], rdx
                        mov              [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 400
                        mov              edx, 432
                        call             rt_jmp_frame_lexprep2@PLT
proc_Init___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00524_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00525_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00525_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [1879052544], rax
                        mov              qword ptr [1879052552], rdx
                                                                                        jmp   n00526_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00526_call_proc_staged_α:
                        call             proc_Signature___dcα
                                                                                        jmp   .Lx00527_2
.Lx00527_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n00528_call_proc_staged_α
                                                                                        jmp   n00528_call_proc_staged_α
n00526_call_proc_staged_β:
                                                                                        jmp   n00528_call_proc_staged_α
.Lx00527_0:
                        .quad            .Lx00527_0_s
.Lx00527_0_s:
                        .string          "Signature__"
#-----------------------------------------------------------------------------------------------------------------------
n00528_call_proc_staged_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00529_2
.Lx00529_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n00530_call_proc_staged_α
                                                                                        jmp   n00530_call_proc_staged_α
n00528_call_proc_staged_β:
                                                                                        jmp   n00530_call_proc_staged_α
.Lx00529_0:
                        .quad            .Lx00529_0_s
.Lx00529_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00530_call_proc_staged_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00531_2
.Lx00531_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00532_disjunction_α
                                                                                        jmp   n00532_disjunction_α
n00530_call_proc_staged_β:
                                                                                        jmp   n00532_disjunction_α
.Lx00531_0:
                        .quad            .Lx00531_0_s
.Lx00531_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00532_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n00533_lit_string_α
n00532_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00534_0
                                                                                        jmp   n00535_var_α
.Lx00534_0:
                                                                                        jmp   n00535_var_α
n00532_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00535_var_α
n00532_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00535_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00535_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx00536_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx00536_240
                        add              rsp, 16
                                                                                        jmp   n00537_var_α
.Lx00536_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n00538_assign_α
.Lx00536_0:
                        .quad            .Lx00536_0_s
.Lx00536_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00533_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx00539_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00540_call_builtin_icon_α
n00533_lit_string_β:
                                                                                        jmp   n00532_disjunction_af
.Lx00539_0:
                        .quad            .Lx00539_0_s
.Lx00539_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00541_conjunction_α:
                                                                                        jmp   n00532_disjunction_as
n00541_conjunction_β:
                                                                                        jmp   n00535_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00538_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052512], rax
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n00537_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00537_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx00542_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx00542_240
                        add              rsp, 16
                                                                                        jmp   n00543_lit_integer_α
.Lx00542_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n00544_assign_α
.Lx00542_0:
                        .quad            .Lx00542_0_s
.Lx00542_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00540_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn1114:             .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1114]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n00532_disjunction_af
                                                                                        jmp   n00545_lit_string_α
n00540_call_builtin_icon_β:
                                                                                        jmp   n00532_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00544_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052528], rax
                        mov              qword ptr [1879052536], rdx
                                                                                        jmp   n00543_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00543_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00546_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00547_assign_α
.Lx00546_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00545_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx00548_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00549_call_builtin_icon_α
.Lx00548_0:
                        .quad            .Lx00548_0_s
.Lx00548_0_s:
                        .string          "*** Benchmarking with output ***"
#-----------------------------------------------------------------------------------------------------------------------
n00547_assign_α:
                        mov              rsi, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              rdi, qword ptr [rip + .Lx00550_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n00551_assign_α
.Lx00550_0:
                        .quad            .Lx00550_0_s
.Lx00550_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00549_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn1120:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1120]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00552_return_α
                                                                                        jmp   n00552_return_α
n00549_call_builtin_icon_β:
                                                                                        jmp   n00552_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00551_assign_α:
                        mov              rsi, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              rdi, qword ptr [rip + .Lx00553_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00554_return_α
.Lx00553_0:
                        .quad            .Lx00553_0_s
.Lx00553_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00552_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Init___γ
#-----------------------------------------------------------------------------------------------------------------------
n00554_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Init___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___β:
                                                                                        jmp   proc_Init___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 440]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___ω:
                        mov              rax, [rbp + 448]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___dcα:
                        pop              r11
                        sub              rsp, 480
                        mov              qword ptr [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 432], r11
                        lea              rax, [rip + .Lx00555_2]
                        mov              qword ptr [rbp + 440], rax
                        lea              rax, [rip + .Lx00555_3]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 400
                        mov              edx, 432
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Init___α_body
.Lx00555_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -464
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00555_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -464
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Term___α
proc_Term___α:
                        .global          proc_Term___α
                        .global          proc_Term___β
                        .global          proc_Term___γ
                        .global          proc_Term___ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 448
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
proc_Term___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00556_disjunction_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], 0
                        mov              dword ptr [rbp + 272], 0
                                                                                        jmp   n00557_lit_string_α
n00556_disjunction_as:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 0
                                                                                        jne   .Lx00558_0
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00559_var_α
.Lx00558_0:
                                                                                        jmp   n00559_var_α
n00556_disjunction_β:
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   n00559_var_α
n00556_disjunction_af:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   n00559_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00559_var_α:
                        mov              rax, qword ptr [1879052544]
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00560_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00557_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx00561_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00562_call_builtin_icon_α
n00557_lit_string_β:
                                                                                        jmp   n00563_var_α
.Lx00561_0:
                        .quad            .Lx00561_0_s
.Lx00561_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00564_conjunction_α:
                                                                                        jmp   n00556_disjunction_as
n00564_conjunction_β:
                                                                                        jmp   n00559_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00560_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx00565_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00566_call_proc_staged_α
.Lx00565_0:
                        .quad            .Lx00565_0_s
.Lx00565_0_s:
                        .string          " elapsed time = "
#-----------------------------------------------------------------------------------------------------------------------
n00567_call_proc_staged_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00568_2
.Lx00568_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n00569_call_proc_staged_α
                                                                                        jmp   n00569_call_proc_staged_α
n00567_call_proc_staged_β:
                                                                                        jmp   n00569_call_proc_staged_α
.Lx00568_0:
                        .quad            .Lx00568_0_s
.Lx00568_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00562_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn1151:             .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1151]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n00563_var_α
                                                                                        jmp   n00556_disjunction_af
n00562_call_builtin_icon_β:
                                                                                        jmp   n00563_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00566_call_proc_staged_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00570_2
.Lx00570_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n00567_call_proc_staged_α
                                                                                        jmp   n00571_call_builtin_icon_α
n00566_call_proc_staged_β:
                                                                                        jmp   n00567_call_proc_staged_α
.Lx00570_0:
                        .quad            .Lx00570_0_s
.Lx00570_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00569_call_proc_staged_α:
                        call             proc_Storage___dcα
                                                                                        jmp   .Lx00572_2
.Lx00572_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n00573_call_proc_staged_α
                                                                                        jmp   n00573_call_proc_staged_α
n00569_call_proc_staged_β:
                                                                                        jmp   n00573_call_proc_staged_α
.Lx00572_0:
                        .quad            .Lx00572_0_s
.Lx00572_0_s:
                        .string          "Storage__"
#-----------------------------------------------------------------------------------------------------------------------
n00563_var_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                                                                                        jmp   n00574_var_α
n00563_var_β:
                                                                                        jmp   n00556_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00571_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn1158:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1158]
                        lea              rsi, [rbp + 128]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n00567_call_proc_staged_α
                                                                                        jmp   n00567_call_proc_staged_α
n00571_call_builtin_icon_β:
                                                                                        jmp   n00567_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00573_call_proc_staged_α:
                        call             proc_Collections___dcα
                                                                                        jmp   .Lx00575_2
.Lx00575_2:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n00576_return_α
                                                                                        jmp   n00576_return_α
n00573_call_proc_staged_β:
                                                                                        jmp   n00576_return_α
.Lx00575_0:
                        .quad            .Lx00575_0_s
.Lx00575_0_s:
                        .string          "Collections__"
#-----------------------------------------------------------------------------------------------------------------------
n00574_var_α:
                        mov              rax, qword ptr [1879052512]
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00577_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00576_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Term___γ
#-----------------------------------------------------------------------------------------------------------------------
n00577_assign_α:
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              rdi, qword ptr [rip + .Lx00578_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00579_var_α
.Lx00578_0:
                        .quad            .Lx00578_0_s
.Lx00578_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00579_var_α:
                        mov              rax, qword ptr [1879052528]
                        mov              rdx, qword ptr [1879052536]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n00580_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00580_assign_α:
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              rdi, qword ptr [rip + .Lx00581_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n00564_conjunction_α
.Lx00581_0:
                        .quad            .Lx00581_0_s
.Lx00581_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___β:
                                                                                        jmp   proc_Term___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 488]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___ω:
                        mov              rax, [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___dcα:
                        pop              r11
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 480], r11
                        lea              rax, [rip + .Lx00582_2]
                        mov              qword ptr [rbp + 488], rax
                        lea              rax, [rip + .Lx00582_3]
                        mov              qword ptr [rbp + 496], rax
                        mov              rdi, rbp
                        mov              esi, 448
                        mov              edx, 480
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Term___α_body
.Lx00582_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -512
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00582_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -512
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Collections___α
proc_Collections___α:
                        .global          proc_Collections___α
                        .global          proc_Collections___β
                        .global          proc_Collections___γ
                        .global          proc_Collections___ω
                        sub              rsp, 944
                        mov              [rsp + 920], rcx
                        mov              [rsp + 928], rdx
                        mov              [rsp + 936], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 880
                        mov              edx, 912
                        call             rt_jmp_frame_lexprep2@PLT
proc_Collections___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00583_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00584_var_ref_α
n00583_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00585_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00586_make_list_α
.Lx00585_0:
                                                                                        jmp   n00586_make_list_α
n00583_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00586_make_list_α
n00583_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00586_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00586_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00587_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00584_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052640
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00588_nulltest_var_α
n00584_var_ref_β:
                                                                                        jmp   n00583_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00589_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052624], rax
                        mov              qword ptr [1879052632], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00583_disjunction_as
n00589_assign_β:
                                                                                        jmp   n00586_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00587_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n00590_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00588_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 99
                                                                                        je    n00583_disjunction_af
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00583_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00583_disjunction_af
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00591_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00590_var_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00592_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00591_lit_integer_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx00593_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00594_assign_var_α
.Lx00593_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00592_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00595_1:
                        mov              rdi, qword ptr [rip + .Lx00595_0]
                        mov              rsi, qword ptr [rbp + 592]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00596_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00597_call_builtin_icon_α
n00592_keyword_icon_gen_β:
                                                                                        jmp   .Lx00595_1
.Lx00595_0:
                        .quad            .Lx00595_0_s
.Lx00595_0_s:
                        .string          "&collections"
#-----------------------------------------------------------------------------------------------------------------------
n00596_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx00598_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00599_call_builtin_icon_α
.Lx00598_0:
                        .quad            .Lx00598_0_s
.Lx00598_0_s:
                        .string          "collections"
#-----------------------------------------------------------------------------------------------------------------------
n00594_assign_var_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00583_disjunction_af
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00600_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00597_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn1220:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1220]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n00592_keyword_icon_gen_β
                                                                                        jmp   n00592_keyword_icon_gen_β
n00597_call_builtin_icon_β:
                                                                                        jmp   n00592_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00599_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn1222:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1222]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n00601_lit_integer_α
                                                                                        jmp   n00601_lit_integer_α
n00599_call_builtin_icon_β:
                                                                                        jmp   n00601_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00600_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx00602_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00603_lit_string_α
.Lx00602_0:
                        .quad            .Lx00602_0_s
.Lx00602_0_s:
                        .string          "total"
#-----------------------------------------------------------------------------------------------------------------------
n00601_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00604_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00605_var_α
.Lx00604_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00603_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx00606_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00607_lit_string_α
.Lx00606_0:
                        .quad            .Lx00606_0_s
.Lx00606_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00605_var_α:
                        mov              rax, qword ptr [1879052624]
                        mov              rdx, qword ptr [1879052632]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00608_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00607_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx00609_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00610_lit_string_α
.Lx00609_0:
                        .quad            .Lx00609_0_s
.Lx00609_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00608_unop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00611_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00612_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Collections___γ
#-----------------------------------------------------------------------------------------------------------------------
n00610_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx00613_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00614_make_list_α
.Lx00613_0:
                        .quad            .Lx00613_0_s
.Lx00613_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00611_to_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00615_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00612_return_α
                        mov              qword ptr [rbp + 32], 6
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00616_assign_α
n00611_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00615_0
#-----------------------------------------------------------------------------------------------------------------------
n00614_make_list_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 4
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00589_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00616_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n00617_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00617_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00618_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00618_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052624
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00619_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00619_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00620_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00620_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00621_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00622_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00621_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00611_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00622_deref_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00621_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00623_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00623_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00624_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00624_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00625_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00625_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00621_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00626_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00626_deref_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00621_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00627_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00627_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00628_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00629_call_builtin_icon_α
.Lx00628_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00629_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn1254:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1254]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00621_unmark_α
                                                                                        jmp   n00630_call_builtin_icon_α
n00629_call_builtin_icon_β:
                                                                                        jmp   n00621_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00630_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn1256:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1256]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00621_unmark_α
                                                                                        jmp   n00621_unmark_α
n00630_call_builtin_icon_β:
                                                                                        jmp   n00621_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___β:
                                                                                        jmp   proc_Collections___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 920]
                        lea              rsp, [rbp + 944]
                        mov              rbp, [rbp + 936]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___ω:
                        mov              rax, [rbp + 928]
                        lea              rsp, [rbp + 944]
                        mov              rbp, [rbp + 936]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___dcα:
                        pop              r11
                        sub              rsp, 960
                        mov              qword ptr [rsp + 936], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 912], r11
                        lea              rax, [rip + .Lx00631_2]
                        mov              qword ptr [rbp + 920], rax
                        lea              rax, [rip + .Lx00631_3]
                        mov              qword ptr [rbp + 928], rax
                        mov              rdi, rbp
                        mov              esi, 880
                        mov              edx, 912
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Collections___α_body
.Lx00631_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -944
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00631_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -944
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Regions___α
proc_Regions___α:
                        .global          proc_Regions___α
                        .global          proc_Regions___β
                        .global          proc_Regions___γ
                        .global          proc_Regions___ω
                        sub              rsp, 912
                        mov              [rsp + 888], rcx
                        mov              [rsp + 896], rdx
                        mov              [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 848
                        mov              edx, 880
                        call             rt_jmp_frame_lexprep2@PLT
proc_Regions___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00632_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00633_var_ref_α
n00632_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00634_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00635_make_list_α
.Lx00634_0:
                                                                                        jmp   n00635_make_list_α
n00632_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00635_make_list_α
n00632_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00635_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00635_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00636_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00633_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052672
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00637_nulltest_var_α
n00633_var_ref_β:
                                                                                        jmp   n00632_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00638_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052656], rax
                        mov              qword ptr [1879052664], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00632_disjunction_as
n00638_assign_β:
                                                                                        jmp   n00635_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00636_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00639_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00637_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 99
                                                                                        je    n00632_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00632_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00632_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00640_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00639_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00641_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00640_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx00642_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00643_assign_var_α
.Lx00642_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00641_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00644_1:
                        mov              rdi, qword ptr [rip + .Lx00644_0]
                        mov              rsi, qword ptr [rbp + 592]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00645_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00646_call_builtin_icon_α
n00641_keyword_icon_gen_β:
                                                                                        jmp   .Lx00644_1
.Lx00644_0:
                        .quad            .Lx00644_0_s
.Lx00644_0_s:
                        .string          "&regions"
#-----------------------------------------------------------------------------------------------------------------------
n00645_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx00647_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00648_call_builtin_icon_α
.Lx00647_0:
                        .quad            .Lx00647_0_s
.Lx00647_0_s:
                        .string          "regions"
#-----------------------------------------------------------------------------------------------------------------------
n00643_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00632_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00649_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00646_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn1310:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1310]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n00641_keyword_icon_gen_β
                                                                                        jmp   n00641_keyword_icon_gen_β
n00646_call_builtin_icon_β:
                                                                                        jmp   n00641_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00648_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn1312:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1312]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n00650_lit_integer_α
                                                                                        jmp   n00650_lit_integer_α
n00648_call_builtin_icon_β:
                                                                                        jmp   n00650_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00649_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx00651_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00652_lit_string_α
.Lx00651_0:
                        .quad            .Lx00651_0_s
.Lx00651_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00650_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00653_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00654_var_α
.Lx00653_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00652_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx00655_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00656_lit_string_α
.Lx00655_0:
                        .quad            .Lx00655_0_s
.Lx00655_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00654_var_α:
                        mov              rax, qword ptr [1879052656]
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00657_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00656_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx00658_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00659_make_list_α
.Lx00658_0:
                        .quad            .Lx00658_0_s
.Lx00658_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00657_unop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00660_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00661_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Regions___γ
#-----------------------------------------------------------------------------------------------------------------------
n00659_make_list_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00638_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00660_to_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00662_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00661_return_α
                        mov              qword ptr [rbp + 32], 6
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00663_assign_α
n00660_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00662_0
#-----------------------------------------------------------------------------------------------------------------------
n00663_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00664_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00664_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00665_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00665_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052656
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00666_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00666_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00667_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00667_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00668_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00669_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00668_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00660_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00669_deref_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00668_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00670_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00670_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00671_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00671_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00672_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00672_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00668_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00673_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00673_deref_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00668_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00674_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00674_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00675_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00676_call_builtin_icon_α
.Lx00675_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00676_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn1343:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1343]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00668_unmark_α
                                                                                        jmp   n00677_call_builtin_icon_α
n00676_call_builtin_icon_β:
                                                                                        jmp   n00668_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00677_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn1345:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1345]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00668_unmark_α
                                                                                        jmp   n00668_unmark_α
n00677_call_builtin_icon_β:
                                                                                        jmp   n00668_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___β:
                                                                                        jmp   proc_Regions___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 888]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___ω:
                        mov              rax, [rbp + 896]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___dcα:
                        pop              r11
                        sub              rsp, 928
                        mov              qword ptr [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 880], r11
                        lea              rax, [rip + .Lx00678_2]
                        mov              qword ptr [rbp + 888], rax
                        lea              rax, [rip + .Lx00678_3]
                        mov              qword ptr [rbp + 896], rax
                        mov              rdi, rbp
                        mov              esi, 848
                        mov              edx, 880
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Regions___α_body
.Lx00678_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00678_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Signature___α
proc_Signature___α:
                        .global          proc_Signature___α
                        .global          proc_Signature___β
                        .global          proc_Signature___γ
                        .global          proc_Signature___ω
                        sub              rsp, 288
                        mov              [rsp + 264], rcx
                        mov              [rsp + 272], rdx
                        mov              [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 256
                        call             rt_jmp_frame_lexprep2@PLT
proc_Signature___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00679_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00680_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00681_keyword_icon_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00682_call_builtin_icon_α
n00679_keyword_icon_β:
                                                                                        jmp   n00681_keyword_icon_α
.Lx00680_0:
                        .quad            .Lx00680_0_s
.Lx00680_0_s:
                        .string          "&version"
#-----------------------------------------------------------------------------------------------------------------------
n00682_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn1356:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1356]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n00681_keyword_icon_α
                                                                                        jmp   n00681_keyword_icon_α
n00682_call_builtin_icon_β:
                                                                                        jmp   n00681_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00681_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00683_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00684_keyword_icon_gen_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00685_call_builtin_icon_α
n00681_keyword_icon_β:
                                                                                        jmp   n00684_keyword_icon_gen_α
.Lx00683_0:
                        .quad            .Lx00683_0_s
.Lx00683_0_s:
                        .string          "&host"
#-----------------------------------------------------------------------------------------------------------------------
n00685_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn1359:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1359]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n00684_keyword_icon_gen_α
                                                                                        jmp   n00684_keyword_icon_gen_α
n00685_call_builtin_icon_β:
                                                                                        jmp   n00684_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00684_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 80], 0
.Lx00686_1:
                        mov              rdi, qword ptr [rip + .Lx00686_0]
                        mov              rsi, qword ptr [rbp + 80]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00687_return_α
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        mov              rax, qword ptr [rbp + 80]
                        add              rax, 1
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n00688_call_builtin_icon_α
n00684_keyword_icon_gen_β:
                                                                                        jmp   .Lx00686_1
.Lx00686_0:
                        .quad            .Lx00686_0_s
.Lx00686_0_s:
                        .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n00688_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn1362:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1362]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n00684_keyword_icon_gen_β
                                                                                        jmp   n00684_keyword_icon_gen_β
n00688_call_builtin_icon_β:
                                                                                        jmp   n00684_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00687_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Signature___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___β:
                                                                                        jmp   proc_Signature___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 264]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___ω:
                        mov              rax, [rbp + 272]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___dcα:
                        pop              r11
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 256], r11
                        lea              rax, [rip + .Lx00689_2]
                        mov              qword ptr [rbp + 264], rax
                        lea              rax, [rip + .Lx00689_3]
                        mov              qword ptr [rbp + 272], rax
                        mov              rdi, rbp
                        mov              esi, 256
                        mov              edx, 256
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Signature___α_body
.Lx00689_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00689_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Storage___α
proc_Storage___α:
                        .global          proc_Storage___α
                        .global          proc_Storage___β
                        .global          proc_Storage___γ
                        .global          proc_Storage___ω
                        sub              rsp, 912
                        mov              [rsp + 888], rcx
                        mov              [rsp + 896], rdx
                        mov              [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 848
                        mov              edx, 880
                        call             rt_jmp_frame_lexprep2@PLT
proc_Storage___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00690_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00691_var_ref_α
n00690_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00692_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00693_make_list_α
.Lx00692_0:
                                                                                        jmp   n00693_make_list_α
n00690_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00693_make_list_α
n00690_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00693_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00693_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00694_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00691_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052704
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00695_nulltest_var_α
n00691_var_ref_β:
                                                                                        jmp   n00690_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00696_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052688], rax
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00690_disjunction_as
n00696_assign_β:
                                                                                        jmp   n00693_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00694_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00697_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00695_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 99
                                                                                        je    n00690_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00690_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00690_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00698_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00697_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00699_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00698_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx00700_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00701_assign_var_α
.Lx00700_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00699_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00702_1:
                        mov              rdi, qword ptr [rip + .Lx00702_0]
                        mov              rsi, qword ptr [rbp + 592]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00703_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00704_call_builtin_icon_α
n00699_keyword_icon_gen_β:
                                                                                        jmp   .Lx00702_1
.Lx00702_0:
                        .quad            .Lx00702_0_s
.Lx00702_0_s:
                        .string          "&storage"
#-----------------------------------------------------------------------------------------------------------------------
n00703_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx00705_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00706_call_builtin_icon_α
.Lx00705_0:
                        .quad            .Lx00705_0_s
.Lx00705_0_s:
                        .string          "storage"
#-----------------------------------------------------------------------------------------------------------------------
n00701_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00690_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00707_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00704_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn1417:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1417]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n00699_keyword_icon_gen_β
                                                                                        jmp   n00699_keyword_icon_gen_β
n00704_call_builtin_icon_β:
                                                                                        jmp   n00699_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00706_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn1419:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1419]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n00708_lit_integer_α
                                                                                        jmp   n00708_lit_integer_α
n00706_call_builtin_icon_β:
                                                                                        jmp   n00708_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00707_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx00709_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00710_lit_string_α
.Lx00709_0:
                        .quad            .Lx00709_0_s
.Lx00709_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00708_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00711_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00712_var_α
.Lx00711_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00710_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx00713_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00714_lit_string_α
.Lx00713_0:
                        .quad            .Lx00713_0_s
.Lx00713_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00712_var_α:
                        mov              rax, qword ptr [1879052688]
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00715_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00714_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx00716_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00717_make_list_α
.Lx00716_0:
                        .quad            .Lx00716_0_s
.Lx00716_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00715_unop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00718_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00719_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Storage___γ
#-----------------------------------------------------------------------------------------------------------------------
n00717_make_list_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00696_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00718_to_α:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 6
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 6
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00720_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00719_return_α
                        mov              qword ptr [rbp + 32], 6
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00721_assign_α
n00718_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00720_0
#-----------------------------------------------------------------------------------------------------------------------
n00721_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00722_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00722_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00723_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00723_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052688
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00724_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00724_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00725_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00725_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00726_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00727_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00726_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00718_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00727_deref_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00726_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00728_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00728_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00729_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00729_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00730_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00730_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00726_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00731_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00731_deref_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00726_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00732_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00732_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00733_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00734_call_builtin_icon_α
.Lx00733_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00734_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn1450:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1450]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00726_unmark_α
                                                                                        jmp   n00735_call_builtin_icon_α
n00734_call_builtin_icon_β:
                                                                                        jmp   n00726_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00735_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn1452:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1452]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00726_unmark_α
                                                                                        jmp   n00726_unmark_α
n00735_call_builtin_icon_β:
                                                                                        jmp   n00726_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___β:
                                                                                        jmp   proc_Storage___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 888]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___ω:
                        mov              rax, [rbp + 896]
                        lea              rsp, [rbp + 912]
                        mov              rbp, [rbp + 904]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___dcα:
                        pop              r11
                        sub              rsp, 928
                        mov              qword ptr [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 880], r11
                        lea              rax, [rip + .Lx00736_2]
                        mov              qword ptr [rbp + 888], rax
                        lea              rax, [rip + .Lx00736_3]
                        mov              qword ptr [rbp + 896], rax
                        mov              rdi, rbp
                        mov              esi, 848
                        mov              edx, 880
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Storage___α_body
.Lx00736_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00736_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Time___α
proc_Time___α:
                        .global          proc_Time___α
                        .global          proc_Time___β
                        .global          proc_Time___γ
                        .global          proc_Time___ω
                        sub              rsp, 288
                        mov              [rsp + 264], rcx
                        mov              [rsp + 272], rdx
                        mov              [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 256
                        call             rt_jmp_frame_lexprep2@PLT
proc_Time___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00737_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n00738_var_ref_α
n00737_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00739_0
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00740_keyword_icon_α
.Lx00739_0:
                                                                                        jmp   n00740_keyword_icon_α
n00737_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00740_keyword_icon_α
n00737_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00740_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00740_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00741_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    proc_Time___ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n00742_var_α
n00740_keyword_icon_β:
                                                                                        jmp   proc_Time___ω
.Lx00741_0:
                        .quad            .Lx00741_0_s
.Lx00741_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00738_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052736
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00743_nulltest_var_α
n00738_var_ref_β:
                                                                                        jmp   n00737_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00744_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052720], rax
                        mov              qword ptr [1879052728], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00737_disjunction_as
n00744_assign_β:
                                                                                        jmp   n00740_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00742_var_α:
                        mov              rax, qword ptr [1879052720]
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00745_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n00743_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 99
                                                                                        je    n00737_disjunction_af
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00737_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00737_disjunction_af
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00746_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00745_op75_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 7
                                                                                        je    .Lx00747_1
                        cmp              eax, 6
                                                                                        jne   .Lx00747_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 6
                                                                                        jne   .Lx00747_0
.Lx00747_1:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00748_op75_α
.Lx00747_0:
                        lea              rdi, [rbp + 64]
                        lea              rsi, [rbp + 96]
                        lea              rdx, [rbp + 48]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00748_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n00746_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx00749_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00750_assign_var_α
.Lx00749_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00748_op75_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 7
                                                                                        je    .Lx00751_1
                        cmp              eax, 6
                                                                                        jne   .Lx00751_0
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 6
                                                                                        jne   .Lx00751_0
.Lx00751_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00752_binop_α
.Lx00751_0:
                        lea              rdi, [rbp + 96]
                        lea              rsi, [rbp + 64]
                        lea              rdx, [rbp + 32]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00752_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00750_assign_var_α:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00737_disjunction_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00753_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00752_binop_α:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx00754_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx00754_0
                        mov              rax, qword ptr [rbp + 56]
                        mov              rcx, qword ptr [rbp + 40]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 16], 6
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n00755_return_α
.Lx00754_0:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    proc_Time___ω
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n00755_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00753_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00756_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00740_keyword_icon_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n00744_assign_α
n00753_keyword_icon_β:
                                                                                        jmp   n00740_keyword_icon_α
.Lx00756_0:
                        .quad            .Lx00756_0_s
.Lx00756_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00755_return_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_Time___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___β:
                                                                                        jmp   proc_Time___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 264]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___ω:
                        mov              rax, [rbp + 272]
                        lea              rsp, [rbp + 288]
                        mov              rbp, [rbp + 280]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___dcα:
                        pop              r11
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 256], r11
                        lea              rax, [rip + .Lx00757_2]
                        mov              qword ptr [rbp + 264], rax
                        lea              rax, [rip + .Lx00757_3]
                        mov              qword ptr [rbp + 272], rax
                        mov              rdi, rbp
                        mov              esi, 256
                        mov              edx, 256
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Time___α_body
.Lx00757_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00757_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lclassspec0:           .string          "procrec(pname,begline,lastline)"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lclassspec0]
                        call             record_register@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "addword"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_addword_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1424
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_addword_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "getword"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_getword_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2896
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_getword_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "format"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_format_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2320
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_format_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_options_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2736
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_options_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "Init__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_Init___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_Init___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "Term__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_Term___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 480
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_Term___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "Collections__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_Collections___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 912
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_Collections___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "Regions__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_Regions___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 880
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_Regions___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "Signature__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_Signature___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_Signature___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "Storage__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_Storage___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 880
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_Storage___dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "Time__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_Time___α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 256
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_Time___dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
.Lgvan0:                .string          "resword"
.Lgvan1:                .string          "linenum"
.Lgvan2:                .string          "letters"
.Lgvan3:                .string          "alphas"
.Lgvan4:                .string          "var"
.Lgvan5:                .string          "buffer"
.Lgvan6:                .string          "qflag"
.Lgvan7:                .string          "infile"
.Lgvan8:                .string          "xflag"
.Lgvan9:                .string          "inmaxcol"
.Lgvan10:               .string          "inlmarg"
.Lgvan11:               .string          "inchunk"
.Lgvan12:               .string          "localvar"
.Lgvan13:               .string          "lin"
.Lgvan14:               .string          "Save__"
.Lgvan15:               .string          "Saves__"
.Lgvan16:               .string          "Name__"
.Lgvan17:               .string          "getword__STATIC__i"
.Lgvan18:               .string          "getword__STATIC__nonwhite"
.Lgvan19:               .string          "getword__INITFLAG__0"
.Lgvan20:               .string          "format__INITFLAG__0"
.Lgvan21:               .string          "Collections____STATIC__labels"
.Lgvan22:               .string          "Collections____INITFLAG__0"
.Lgvan23:               .string          "Regions____STATIC__labels"
.Lgvan24:               .string          "Regions____INITFLAG__0"
.Lgvan25:               .string          "Storage____STATIC__labels"
.Lgvan26:               .string          "Storage____INITFLAG__0"
.Lgvan27:               .string          "Time____STATIC__lasttime"
.Lgvan28:               .string          "Time____INITFLAG__0"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .quad            .Lgvan8
                        .quad            .Lgvan9
                        .quad            .Lgvan10
                        .quad            .Lgvan11
                        .quad            .Lgvan12
                        .quad            .Lgvan13
                        .quad            .Lgvan14
                        .quad            .Lgvan15
                        .quad            .Lgvan16
                        .quad            .Lgvan17
                        .quad            .Lgvan18
                        .quad            .Lgvan19
                        .quad            .Lgvan20
                        .quad            .Lgvan21
                        .quad            .Lgvan22
                        .quad            .Lgvan23
                        .quad            .Lgvan24
                        .quad            .Lgvan25
                        .quad            .Lgvan26
                        .quad            .Lgvan27
                        .quad            .Lgvan28
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 29
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 29
                        call             gva_register@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
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
                        sub              rsp, 6520
                        mov              rdi, rsp
                        mov              ecx, 6520
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 6512], rbp
                        mov              rbp, rsp
                        push             rsi
                        sub              rsp, 8
                        call             rt_main_args_fetch@PLT
                        add              rsp, 8
                        pop              rsi
                        mov              [rbp + 16], rax
                        mov              [rbp + 24], rdx
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00758_lit_string_α:
                        mov              qword ptr [rbp + 6368], 1
                        mov              rax, qword ptr [rip + .Lx00759_0]
                        mov              qword ptr [rbp + 6376], rax
                                                                                        jmp   n00760_call_proc_staged_α
.Lx00759_0:
                        .quad            .Lx00759_0_s
.Lx00759_0_s:
                        .string          "ipxref"
#-----------------------------------------------------------------------------------------------------------------------
n00760_call_proc_staged_α:
                        lea              rsi, [rbp + 6368]
                        call             proc_Init___dcα
                                                                                        jmp   .Lx00761_2
.Lx00761_2:
                        mov              qword ptr [rbp + 6320], rax
                        mov              qword ptr [rbp + 6328], rdx
                        cmp              eax, 99
                                                                                        je    n00762_lit_string_α
                                                                                        jmp   n00762_lit_string_α
n00760_call_proc_staged_β:
                                                                                        jmp   n00762_lit_string_α
.Lx00761_0:
                        .quad            .Lx00761_0_s
.Lx00761_0_s:
                        .string          "Init__"
#-----------------------------------------------------------------------------------------------------------------------
n00762_lit_string_α:
                        mov              qword ptr [rbp + 5872], 1
                        mov              rax, qword ptr [rip + .Lx00763_0]
                        mov              qword ptr [rbp + 5880], rax
                                                                                        jmp   n00764_lit_string_α
.Lx00763_0:
                        .quad            .Lx00763_0_s
.Lx00763_0_s:
                        .string          "break"
#-----------------------------------------------------------------------------------------------------------------------
n00764_lit_string_α:
                        mov              qword ptr [rbp + 5888], 1
                        mov              rax, qword ptr [rip + .Lx00765_0]
                        mov              qword ptr [rbp + 5896], rax
                                                                                        jmp   n00766_lit_string_α
.Lx00765_0:
                        .quad            .Lx00765_0_s
.Lx00765_0_s:
                        .string          "by"
#-----------------------------------------------------------------------------------------------------------------------
n00766_lit_string_α:
                        mov              qword ptr [rbp + 5904], 1
                        mov              rax, qword ptr [rip + .Lx00767_0]
                        mov              qword ptr [rbp + 5912], rax
                                                                                        jmp   n00768_lit_string_α
.Lx00767_0:
                        .quad            .Lx00767_0_s
.Lx00767_0_s:
                        .string          "case"
#-----------------------------------------------------------------------------------------------------------------------
n00768_lit_string_α:
                        mov              qword ptr [rbp + 5920], 1
                        mov              rax, qword ptr [rip + .Lx00769_0]
                        mov              qword ptr [rbp + 5928], rax
                                                                                        jmp   n00770_lit_string_α
.Lx00769_0:
                        .quad            .Lx00769_0_s
.Lx00769_0_s:
                        .string          "default"
#-----------------------------------------------------------------------------------------------------------------------
n00770_lit_string_α:
                        mov              qword ptr [rbp + 5936], 1
                        mov              rax, qword ptr [rip + .Lx00771_0]
                        mov              qword ptr [rbp + 5944], rax
                                                                                        jmp   n00772_lit_string_α
.Lx00771_0:
                        .quad            .Lx00771_0_s
.Lx00771_0_s:
                        .string          "do"
#-----------------------------------------------------------------------------------------------------------------------
n00772_lit_string_α:
                        mov              qword ptr [rbp + 5952], 1
                        mov              rax, qword ptr [rip + .Lx00773_0]
                        mov              qword ptr [rbp + 5960], rax
                                                                                        jmp   n00774_lit_string_α
.Lx00773_0:
                        .quad            .Lx00773_0_s
.Lx00773_0_s:
                        .string          "dynamic"
#-----------------------------------------------------------------------------------------------------------------------
n00774_lit_string_α:
                        mov              qword ptr [rbp + 5968], 1
                        mov              rax, qword ptr [rip + .Lx00775_0]
                        mov              qword ptr [rbp + 5976], rax
                                                                                        jmp   n00776_lit_string_α
.Lx00775_0:
                        .quad            .Lx00775_0_s
.Lx00775_0_s:
                        .string          "else"
#-----------------------------------------------------------------------------------------------------------------------
n00776_lit_string_α:
                        mov              qword ptr [rbp + 5984], 1
                        mov              rax, qword ptr [rip + .Lx00777_0]
                        mov              qword ptr [rbp + 5992], rax
                                                                                        jmp   n00778_lit_string_α
.Lx00777_0:
                        .quad            .Lx00777_0_s
.Lx00777_0_s:
                        .string          "end"
#-----------------------------------------------------------------------------------------------------------------------
n00778_lit_string_α:
                        mov              qword ptr [rbp + 6000], 1
                        mov              rax, qword ptr [rip + .Lx00779_0]
                        mov              qword ptr [rbp + 6008], rax
                                                                                        jmp   n00780_lit_string_α
.Lx00779_0:
                        .quad            .Lx00779_0_s
.Lx00779_0_s:
                        .string          "every"
#-----------------------------------------------------------------------------------------------------------------------
n00780_lit_string_α:
                        mov              qword ptr [rbp + 6016], 1
                        mov              rax, qword ptr [rip + .Lx00781_0]
                        mov              qword ptr [rbp + 6024], rax
                                                                                        jmp   n00782_lit_string_α
.Lx00781_0:
                        .quad            .Lx00781_0_s
.Lx00781_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n00782_lit_string_α:
                        mov              qword ptr [rbp + 6032], 1
                        mov              rax, qword ptr [rip + .Lx00783_0]
                        mov              qword ptr [rbp + 6040], rax
                                                                                        jmp   n00784_lit_string_α
.Lx00783_0:
                        .quad            .Lx00783_0_s
.Lx00783_0_s:
                        .string          "global"
#-----------------------------------------------------------------------------------------------------------------------
n00784_lit_string_α:
                        mov              qword ptr [rbp + 6048], 1
                        mov              rax, qword ptr [rip + .Lx00785_0]
                        mov              qword ptr [rbp + 6056], rax
                                                                                        jmp   n00786_lit_string_α
.Lx00785_0:
                        .quad            .Lx00785_0_s
.Lx00785_0_s:
                        .string          "if"
#-----------------------------------------------------------------------------------------------------------------------
n00786_lit_string_α:
                        mov              qword ptr [rbp + 6064], 1
                        mov              rax, qword ptr [rip + .Lx00787_0]
                        mov              qword ptr [rbp + 6072], rax
                                                                                        jmp   n00788_lit_string_α
.Lx00787_0:
                        .quad            .Lx00787_0_s
.Lx00787_0_s:
                        .string          "initial"
#-----------------------------------------------------------------------------------------------------------------------
n00788_lit_string_α:
                        mov              qword ptr [rbp + 6080], 1
                        mov              rax, qword ptr [rip + .Lx00789_0]
                        mov              qword ptr [rbp + 6088], rax
                                                                                        jmp   n00790_lit_string_α
.Lx00789_0:
                        .quad            .Lx00789_0_s
.Lx00789_0_s:
                        .string          "link"
#-----------------------------------------------------------------------------------------------------------------------
n00790_lit_string_α:
                        mov              qword ptr [rbp + 6096], 1
                        mov              rax, qword ptr [rip + .Lx00791_0]
                        mov              qword ptr [rbp + 6104], rax
                                                                                        jmp   n00792_lit_string_α
.Lx00791_0:
                        .quad            .Lx00791_0_s
.Lx00791_0_s:
                        .string          "local"
#-----------------------------------------------------------------------------------------------------------------------
n00792_lit_string_α:
                        mov              qword ptr [rbp + 6112], 1
                        mov              rax, qword ptr [rip + .Lx00793_0]
                        mov              qword ptr [rbp + 6120], rax
                                                                                        jmp   n00794_lit_string_α
.Lx00793_0:
                        .quad            .Lx00793_0_s
.Lx00793_0_s:
                        .string          "next"
#-----------------------------------------------------------------------------------------------------------------------
n00794_lit_string_α:
                        mov              qword ptr [rbp + 6128], 1
                        mov              rax, qword ptr [rip + .Lx00795_0]
                        mov              qword ptr [rbp + 6136], rax
                                                                                        jmp   n00796_lit_string_α
.Lx00795_0:
                        .quad            .Lx00795_0_s
.Lx00795_0_s:
                        .string          "not"
#-----------------------------------------------------------------------------------------------------------------------
n00796_lit_string_α:
                        mov              qword ptr [rbp + 6144], 1
                        mov              rax, qword ptr [rip + .Lx00797_0]
                        mov              qword ptr [rbp + 6152], rax
                                                                                        jmp   n00798_lit_string_α
.Lx00797_0:
                        .quad            .Lx00797_0_s
.Lx00797_0_s:
                        .string          "of"
#-----------------------------------------------------------------------------------------------------------------------
n00798_lit_string_α:
                        mov              qword ptr [rbp + 6160], 1
                        mov              rax, qword ptr [rip + .Lx00799_0]
                        mov              qword ptr [rbp + 6168], rax
                                                                                        jmp   n00800_lit_string_α
.Lx00799_0:
                        .quad            .Lx00799_0_s
.Lx00799_0_s:
                        .string          "procedure"
#-----------------------------------------------------------------------------------------------------------------------
n00800_lit_string_α:
                        mov              qword ptr [rbp + 6176], 1
                        mov              rax, qword ptr [rip + .Lx00801_0]
                        mov              qword ptr [rbp + 6184], rax
                                                                                        jmp   n00802_lit_string_α
.Lx00801_0:
                        .quad            .Lx00801_0_s
.Lx00801_0_s:
                        .string          "record"
#-----------------------------------------------------------------------------------------------------------------------
n00802_lit_string_α:
                        mov              qword ptr [rbp + 6192], 1
                        mov              rax, qword ptr [rip + .Lx00803_0]
                        mov              qword ptr [rbp + 6200], rax
                                                                                        jmp   n00804_lit_string_α
.Lx00803_0:
                        .quad            .Lx00803_0_s
.Lx00803_0_s:
                        .string          "repeat"
#-----------------------------------------------------------------------------------------------------------------------
n00804_lit_string_α:
                        mov              qword ptr [rbp + 6208], 1
                        mov              rax, qword ptr [rip + .Lx00805_0]
                        mov              qword ptr [rbp + 6216], rax
                                                                                        jmp   n00806_lit_string_α
.Lx00805_0:
                        .quad            .Lx00805_0_s
.Lx00805_0_s:
                        .string          "return"
#-----------------------------------------------------------------------------------------------------------------------
n00806_lit_string_α:
                        mov              qword ptr [rbp + 6224], 1
                        mov              rax, qword ptr [rip + .Lx00807_0]
                        mov              qword ptr [rbp + 6232], rax
                                                                                        jmp   n00808_lit_string_α
.Lx00807_0:
                        .quad            .Lx00807_0_s
.Lx00807_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00808_lit_string_α:
                        mov              qword ptr [rbp + 6240], 1
                        mov              rax, qword ptr [rip + .Lx00809_0]
                        mov              qword ptr [rbp + 6248], rax
                                                                                        jmp   n00810_lit_string_α
.Lx00809_0:
                        .quad            .Lx00809_0_s
.Lx00809_0_s:
                        .string          "suspend"
#-----------------------------------------------------------------------------------------------------------------------
n00810_lit_string_α:
                        mov              qword ptr [rbp + 6256], 1
                        mov              rax, qword ptr [rip + .Lx00811_0]
                        mov              qword ptr [rbp + 6264], rax
                                                                                        jmp   n00812_lit_string_α
.Lx00811_0:
                        .quad            .Lx00811_0_s
.Lx00811_0_s:
                        .string          "then"
#-----------------------------------------------------------------------------------------------------------------------
n00812_lit_string_α:
                        mov              qword ptr [rbp + 6272], 1
                        mov              rax, qword ptr [rip + .Lx00813_0]
                        mov              qword ptr [rbp + 6280], rax
                                                                                        jmp   n00814_lit_string_α
.Lx00813_0:
                        .quad            .Lx00813_0_s
.Lx00813_0_s:
                        .string          "to"
#-----------------------------------------------------------------------------------------------------------------------
n00814_lit_string_α:
                        mov              qword ptr [rbp + 6288], 1
                        mov              rax, qword ptr [rip + .Lx00815_0]
                        mov              qword ptr [rbp + 6296], rax
                                                                                        jmp   n00816_lit_string_α
.Lx00815_0:
                        .quad            .Lx00815_0_s
.Lx00815_0_s:
                        .string          "until"
#-----------------------------------------------------------------------------------------------------------------------
n00816_lit_string_α:
                        mov              qword ptr [rbp + 6304], 1
                        mov              rax, qword ptr [rip + .Lx00817_0]
                        mov              qword ptr [rbp + 6312], rax
                                                                                        jmp   n00818_make_list_α
.Lx00817_0:
                        .quad            .Lx00817_0_s
.Lx00817_0_s:
                        .string          "while"
#-----------------------------------------------------------------------------------------------------------------------
n00818_make_list_α:
                        mov              rax, qword ptr [rbp + 5872]
                        mov              qword ptr [rbp + 5424], rax
                        mov              rax, qword ptr [rbp + 5880]
                        mov              qword ptr [rbp + 5432], rax
                        mov              rax, qword ptr [rbp + 5888]
                        mov              qword ptr [rbp + 5440], rax
                        mov              rax, qword ptr [rbp + 5896]
                        mov              qword ptr [rbp + 5448], rax
                        mov              rax, qword ptr [rbp + 5904]
                        mov              qword ptr [rbp + 5456], rax
                        mov              rax, qword ptr [rbp + 5912]
                        mov              qword ptr [rbp + 5464], rax
                        mov              rax, qword ptr [rbp + 5920]
                        mov              qword ptr [rbp + 5472], rax
                        mov              rax, qword ptr [rbp + 5928]
                        mov              qword ptr [rbp + 5480], rax
                        mov              rax, qword ptr [rbp + 5936]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 5944]
                        mov              qword ptr [rbp + 5496], rax
                        mov              rax, qword ptr [rbp + 5952]
                        mov              qword ptr [rbp + 5504], rax
                        mov              rax, qword ptr [rbp + 5960]
                        mov              qword ptr [rbp + 5512], rax
                        mov              rax, qword ptr [rbp + 5968]
                        mov              qword ptr [rbp + 5520], rax
                        mov              rax, qword ptr [rbp + 5976]
                        mov              qword ptr [rbp + 5528], rax
                        mov              rax, qword ptr [rbp + 5984]
                        mov              qword ptr [rbp + 5536], rax
                        mov              rax, qword ptr [rbp + 5992]
                        mov              qword ptr [rbp + 5544], rax
                        mov              rax, qword ptr [rbp + 6000]
                        mov              qword ptr [rbp + 5552], rax
                        mov              rax, qword ptr [rbp + 6008]
                        mov              qword ptr [rbp + 5560], rax
                        mov              rax, qword ptr [rbp + 6016]
                        mov              qword ptr [rbp + 5568], rax
                        mov              rax, qword ptr [rbp + 6024]
                        mov              qword ptr [rbp + 5576], rax
                        mov              rax, qword ptr [rbp + 6032]
                        mov              qword ptr [rbp + 5584], rax
                        mov              rax, qword ptr [rbp + 6040]
                        mov              qword ptr [rbp + 5592], rax
                        mov              rax, qword ptr [rbp + 6048]
                        mov              qword ptr [rbp + 5600], rax
                        mov              rax, qword ptr [rbp + 6056]
                        mov              qword ptr [rbp + 5608], rax
                        mov              rax, qword ptr [rbp + 6064]
                        mov              qword ptr [rbp + 5616], rax
                        mov              rax, qword ptr [rbp + 6072]
                        mov              qword ptr [rbp + 5624], rax
                        mov              rax, qword ptr [rbp + 6080]
                        mov              qword ptr [rbp + 5632], rax
                        mov              rax, qword ptr [rbp + 6088]
                        mov              qword ptr [rbp + 5640], rax
                        mov              rax, qword ptr [rbp + 6096]
                        mov              qword ptr [rbp + 5648], rax
                        mov              rax, qword ptr [rbp + 6104]
                        mov              qword ptr [rbp + 5656], rax
                        mov              rax, qword ptr [rbp + 6112]
                        mov              qword ptr [rbp + 5664], rax
                        mov              rax, qword ptr [rbp + 6120]
                        mov              qword ptr [rbp + 5672], rax
                        mov              rax, qword ptr [rbp + 6128]
                        mov              qword ptr [rbp + 5680], rax
                        mov              rax, qword ptr [rbp + 6136]
                        mov              qword ptr [rbp + 5688], rax
                        mov              rax, qword ptr [rbp + 6144]
                        mov              qword ptr [rbp + 5696], rax
                        mov              rax, qword ptr [rbp + 6152]
                        mov              qword ptr [rbp + 5704], rax
                        mov              rax, qword ptr [rbp + 6160]
                        mov              qword ptr [rbp + 5712], rax
                        mov              rax, qword ptr [rbp + 6168]
                        mov              qword ptr [rbp + 5720], rax
                        mov              rax, qword ptr [rbp + 6176]
                        mov              qword ptr [rbp + 5728], rax
                        mov              rax, qword ptr [rbp + 6184]
                        mov              qword ptr [rbp + 5736], rax
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 5744], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 5752], rax
                        mov              rax, qword ptr [rbp + 6208]
                        mov              qword ptr [rbp + 5760], rax
                        mov              rax, qword ptr [rbp + 6216]
                        mov              qword ptr [rbp + 5768], rax
                        mov              rax, qword ptr [rbp + 6224]
                        mov              qword ptr [rbp + 5776], rax
                        mov              rax, qword ptr [rbp + 6232]
                        mov              qword ptr [rbp + 5784], rax
                        mov              rax, qword ptr [rbp + 6240]
                        mov              qword ptr [rbp + 5792], rax
                        mov              rax, qword ptr [rbp + 6248]
                        mov              qword ptr [rbp + 5800], rax
                        mov              rax, qword ptr [rbp + 6256]
                        mov              qword ptr [rbp + 5808], rax
                        mov              rax, qword ptr [rbp + 6264]
                        mov              qword ptr [rbp + 5816], rax
                        mov              rax, qword ptr [rbp + 6272]
                        mov              qword ptr [rbp + 5824], rax
                        mov              rax, qword ptr [rbp + 6280]
                        mov              qword ptr [rbp + 5832], rax
                        mov              rax, qword ptr [rbp + 6288]
                        mov              qword ptr [rbp + 5840], rax
                        mov              rax, qword ptr [rbp + 6296]
                        mov              qword ptr [rbp + 5848], rax
                        mov              rax, qword ptr [rbp + 6304]
                        mov              qword ptr [rbp + 5856], rax
                        mov              rax, qword ptr [rbp + 6312]
                        mov              qword ptr [rbp + 5864], rax
                        lea              rdi, [rbp + 5424]
                        mov              esi, 28
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 5408], rax
                        mov              qword ptr [rbp + 5416], rdx
                                                                                        jmp   n00819_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00819_assign_α:
                        mov              rax, qword ptr [rbp + 5408]
                        mov              rdx, qword ptr [rbp + 5416]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n00820_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00820_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx00821_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n00822_assign_α
.Lx00821_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00822_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n00823_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00823_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1812:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1812]
                        lea              rsi, [rbp + 5376]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5360], rax
                        mov              qword ptr [rbp + 5368], rdx
                        cmp              eax, 99
                                                                                        je    n00824_make_list_α
                                                                                        jmp   n00825_assign_α
n00823_call_builtin_icon_β:
                                                                                        jmp   n00824_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00825_assign_α:
                        mov              rax, qword ptr [rbp + 5360]
                        mov              rdx, qword ptr [rbp + 5368]
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n00824_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00824_make_list_α:
                        lea              rdi, [rbp + 5360]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 5344], rax
                        mov              qword ptr [rbp + 5352], rdx
                                                                                        jmp   n00826_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00826_assign_α:
                        mov              rax, qword ptr [rbp + 5344]
                        mov              rdx, qword ptr [rbp + 5352]
                        mov              qword ptr [rbp + 6416], rax
                        mov              qword ptr [rbp + 6424], rdx
                                                                                        jmp   n00827_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00827_make_list_α:
                        lea              rdi, [rbp + 5344]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 5328], rax
                        mov              qword ptr [rbp + 5336], rdx
                                                                                        jmp   n00828_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00828_assign_α:
                        mov              rax, qword ptr [rbp + 5328]
                        mov              rdx, qword ptr [rbp + 5336]
                        mov              qword ptr [1879052480], rax
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n00829_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00829_make_list_α:
                        lea              rdi, [rbp + 5328]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 5312], rax
                        mov              qword ptr [rbp + 5320], rdx
                                                                                        jmp   n00830_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00830_assign_α:
                        mov              rax, qword ptr [rbp + 5312]
                        mov              rdx, qword ptr [rbp + 5320]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n00831_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00831_lit_string_α:
                        mov              qword ptr [rbp + 5296], 1
                        mov              rax, qword ptr [rip + .Lx00832_0]
                        mov              qword ptr [rbp + 5304], rax
                                                                                        jmp   n00833_assign_α
.Lx00832_0:
                        .quad            .Lx00832_0_s
.Lx00832_0_s:
                        .string          "global"
#-----------------------------------------------------------------------------------------------------------------------
n00833_assign_α:
                        mov              rax, qword ptr [rbp + 5296]
                        mov              rdx, qword ptr [rbp + 5304]
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                                                                                        jmp   n00834_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00834_lit_charset_α:
                        mov              qword ptr [rbp + 5264], 1
                        mov              dword ptr [rbp + 5268], -1
                        mov              rax, qword ptr [rip + .Lx00835_0]
                        mov              qword ptr [rbp + 5272], rax
                                                                                        jmp   n00836_lit_charset_α
.Lx00835_0:
                        .quad            .Lx00835_0_s
.Lx00835_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00836_lit_charset_α:
                        mov              qword ptr [rbp + 5280], 1
                        mov              dword ptr [rbp + 5284], -1
                        mov              rax, qword ptr [rip + .Lx00837_0]
                        mov              qword ptr [rbp + 5288], rax
                                                                                        jmp   n00838_binop_α
.Lx00837_0:
                        .quad            .Lx00837_0_s
.Lx00837_0_s:
                        .string          "_"
#-----------------------------------------------------------------------------------------------------------------------
n00838_binop_α:
                        mov              rdi, qword ptr [rbp + 5264]
                        mov              rsi, qword ptr [rbp + 5272]
                        mov              rdx, qword ptr [rbp + 5280]
                        mov              rcx, qword ptr [rbp + 5288]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    n00839_var_α
                        mov              qword ptr [rbp + 5248], rax
                        mov              qword ptr [rbp + 5256], rdx
                                                                                        jmp   n00840_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00840_assign_α:
                        mov              rax, qword ptr [rbp + 5248]
                        mov              rdx, qword ptr [rbp + 5256]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n00839_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00839_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 5216], rax
                        mov              qword ptr [rbp + 5224], rdx
                                                                                        jmp   n00841_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00841_lit_charset_α:
                        mov              qword ptr [rbp + 5232], 1
                        mov              dword ptr [rbp + 5236], -1
                        mov              rax, qword ptr [rip + .Lx00842_0]
                        mov              qword ptr [rbp + 5240], rax
                                                                                        jmp   n00843_binop_α
.Lx00842_0:
                        .quad            .Lx00842_0_s
.Lx00842_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n00844_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 5168], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 5176], rax
                                                                                        jmp   n00845_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00843_binop_α:
                        mov              rdi, qword ptr [rbp + 5216]
                        mov              rsi, qword ptr [rbp + 5224]
                        mov              rdx, qword ptr [rbp + 5232]
                        mov              rcx, qword ptr [rbp + 5240]
                        call             rt_cunion@PLT
                        cmp              eax, 99
                                                                                        je    n00844_var_α
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx
                                                                                        jmp   n00846_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00845_lit_string_α:
                        mov              qword ptr [rbp + 5184], 1
                        mov              rax, qword ptr [rip + .Lx00847_0]
                        mov              qword ptr [rbp + 5192], rax
                                                                                        jmp   n00848_call_proc_staged_α
.Lx00847_0:
                        .quad            .Lx00847_0_s
.Lx00847_0_s:
                        .string          "qxw+l+c+"
#-----------------------------------------------------------------------------------------------------------------------
n00849_disjunction_α:
                        mov              qword ptr [rbp + 4960], 0
                        mov              qword ptr [rbp + 4968], 0
                        mov              dword ptr [rbp + 4976], 0
                                                                                        jmp   n00850_var_ref_α
n00849_disjunction_as:
                        mov              eax, dword ptr [rbp + 4976]
                        cmp              eax, 0
                                                                                        jne   .Lx00851_0
                        mov              rax, qword ptr [rbp + 4992]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 4968], rax
                                                                                        jmp   n00852_disjunction_α
.Lx00851_0:
                                                                                        jmp   n00852_disjunction_α
n00849_disjunction_β:
                        mov              eax, dword ptr [rbp + 4976]
                                                                                        jmp   n00852_disjunction_α
n00849_disjunction_af:
                        add              dword ptr [rbp + 4976], 1
                        mov              eax, dword ptr [rbp + 4976]
                                                                                        jmp   n00852_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00846_assign_α:
                        mov              rax, qword ptr [rbp + 5200]
                        mov              rdx, qword ptr [rbp + 5208]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n00844_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00848_call_proc_staged_α:
                        lea              rsi, [rbp + 5168]
                        lea              rdx, [rbp + 5184]
                        call             proc_options_dcα
                                                                                        jmp   .Lx00853_2
.Lx00853_2:
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx
                        cmp              eax, 99
                                                                                        je    n00849_disjunction_α
                                                                                        jmp   n00854_assign_α
n00848_call_proc_staged_β:
                                                                                        jmp   n00849_disjunction_α
.Lx00853_0:
                        .quad            .Lx00853_0_s
.Lx00853_0_s:
                        .string          "options"
#-----------------------------------------------------------------------------------------------------------------------
n00852_disjunction_α:
                        mov              qword ptr [rbp + 4816], 0
                        mov              qword ptr [rbp + 4824], 0
                        mov              dword ptr [rbp + 4832], 0
                                                                                        jmp   n00855_var_ref_α
n00852_disjunction_as:
                        mov              eax, dword ptr [rbp + 4832]
                        cmp              eax, 0
                                                                                        jne   .Lx00856_0
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 4824], rax
                                                                                        jmp   n00857_var_ref_α
.Lx00856_0:
                                                                                        jmp   n00857_var_ref_α
n00852_disjunction_β:
                        mov              eax, dword ptr [rbp + 4832]
                                                                                        jmp   n00857_var_ref_α
n00852_disjunction_af:
                        add              dword ptr [rbp + 4832], 1
                        mov              eax, dword ptr [rbp + 4832]
                                                                                        jmp   n00857_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00850_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6496]
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx
                                                                                        jmp   n00858_lit_string_α
n00850_var_ref_β:
                                                                                        jmp   n00849_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00859_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                                                                                        jmp   n00849_disjunction_as
n00859_assign_β:
                                                                                        jmp   n00852_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00854_assign_α:
                        mov              rax, qword ptr [rbp + 5104]
                        mov              rdx, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 6496], rax
                        mov              qword ptr [rbp + 6504], rdx
                                                                                        jmp   n00849_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00857_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6496]
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                                                                                        jmp   n00860_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00855_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6496]
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                                                                                        jmp   n00861_lit_string_α
n00855_var_ref_β:
                                                                                        jmp   n00852_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00862_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052416], rax
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                                                                                        jmp   n00852_disjunction_as
n00862_assign_β:
                                                                                        jmp   n00857_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00858_lit_string_α:
                        mov              qword ptr [rbp + 5056], 1
                        mov              rax, qword ptr [rip + .Lx00863_0]
                        mov              qword ptr [rbp + 5064], rax
                                                                                        jmp   n00864_subscript_α
.Lx00863_0:
                        .quad            .Lx00863_0_s
.Lx00863_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n00860_lit_string_α:
                        mov              qword ptr [rbp + 4768], 1
                        mov              rax, qword ptr [rip + .Lx00865_0]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   n00866_subscript_α
.Lx00865_0:
                        .quad            .Lx00865_0_s
.Lx00865_0_s:
                        .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n00861_lit_string_α:
                        mov              qword ptr [rbp + 4912], 1
                        mov              rax, qword ptr [rip + .Lx00867_0]
                        mov              qword ptr [rbp + 4920], rax
                                                                                        jmp   n00868_subscript_α
.Lx00867_0:
                        .quad            .Lx00867_0_s
.Lx00867_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n00864_subscript_α:
                        mov              rdi, qword ptr [rbp + 5040]
                        mov              rsi, qword ptr [rbp + 5048]
                        mov              rdx, qword ptr [rbp + 5056]
                        mov              rcx, qword ptr [rbp + 5064]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00849_disjunction_af
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                                                                                        jmp   n00869_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00866_subscript_α:
                        mov              rdi, qword ptr [rbp + 4752]
                        mov              rsi, qword ptr [rbp + 4760]
                        mov              rdx, qword ptr [rbp + 4768]
                        mov              rcx, qword ptr [rbp + 4776]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00870_var_ref_α
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                                                                                        jmp   n00871_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00868_subscript_α:
                        mov              rdi, qword ptr [rbp + 4896]
                        mov              rsi, qword ptr [rbp + 4904]
                        mov              rdx, qword ptr [rbp + 4912]
                        mov              rcx, qword ptr [rbp + 4920]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00852_disjunction_af
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                                                                                        jmp   n00872_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00869_deref_α:
                        mov              rdi, qword ptr [rbp + 5072]
                        mov              rsi, qword ptr [rbp + 5080]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00849_disjunction_af
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx
                                                                                        jmp   n00873_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00871_deref_α:
                        mov              rdi, qword ptr [rbp + 4784]
                        mov              rsi, qword ptr [rbp + 4792]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00870_var_ref_α
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                                                                                        jmp   n00874_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00870_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6496]
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx
                                                                                        jmp   n00875_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00872_deref_α:
                        mov              rdi, qword ptr [rbp + 4928]
                        mov              rsi, qword ptr [rbp + 4936]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00852_disjunction_af
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n00876_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00873_unop_test_α:
                        mov              eax, dword ptr [rbp + 5088]
                        cmp              eax, 99
                                                                                        je    n00849_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00849_disjunction_af
                        mov              rax, qword ptr [rbp + 5088]
                        mov              qword ptr [rbp + 5024], rax
                        mov              rax, qword ptr [rbp + 5096]
                        mov              qword ptr [rbp + 5032], rax
                                                                                        jmp   n00877_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00874_unop_test_α:
                        mov              eax, dword ptr [rbp + 4800]
                        cmp              eax, 99
                                                                                        je    n00870_var_ref_α
                        cmp              eax, 0
                                                                                        je    n00870_var_ref_α
                        mov              rax, qword ptr [rbp + 4800]
                        mov              qword ptr [rbp + 4736], rax
                        mov              rax, qword ptr [rbp + 4808]
                        mov              qword ptr [rbp + 4744], rax
                                                                                        jmp   n00878_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00875_lit_string_α:
                        mov              qword ptr [rbp + 4688], 1
                        mov              rax, qword ptr [rip + .Lx00879_0]
                        mov              qword ptr [rbp + 4696], rax
                                                                                        jmp   n00880_subscript_α
.Lx00879_0:
                        .quad            .Lx00879_0_s
.Lx00879_0_s:
                        .string          "l"
#-----------------------------------------------------------------------------------------------------------------------
n00876_unop_test_α:
                        mov              eax, dword ptr [rbp + 4944]
                        cmp              eax, 99
                                                                                        je    n00852_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00852_disjunction_af
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 4880], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 4888], rax
                                                                                        jmp   n00881_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00877_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx00882_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n00859_assign_α
.Lx00882_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00878_assign_α:
                        mov              rax, qword ptr [rbp + 4736]
                        mov              rdx, qword ptr [rbp + 4744]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n00870_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00880_subscript_α:
                        mov              rdi, qword ptr [rbp + 4672]
                        mov              rsi, qword ptr [rbp + 4680]
                        mov              rdx, qword ptr [rbp + 4688]
                        mov              rcx, qword ptr [rbp + 4696]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00883_var_ref_α
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                                                                                        jmp   n00884_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00881_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx00885_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n00862_assign_α
.Lx00885_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00884_deref_α:
                        mov              rdi, qword ptr [rbp + 4704]
                        mov              rsi, qword ptr [rbp + 4712]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00883_var_ref_α
                        mov              qword ptr [rbp + 4720], rax
                        mov              qword ptr [rbp + 4728], rdx
                                                                                        jmp   n00886_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00883_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 6496]
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx
                                                                                        jmp   n00887_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00886_unop_test_α:
                        mov              eax, dword ptr [rbp + 4720]
                        cmp              eax, 99
                                                                                        je    n00883_var_ref_α
                        cmp              eax, 0
                                                                                        je    n00883_var_ref_α
                        mov              rax, qword ptr [rbp + 4720]
                        mov              qword ptr [rbp + 4656], rax
                        mov              rax, qword ptr [rbp + 4728]
                        mov              qword ptr [rbp + 4664], rax
                                                                                        jmp   n00888_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00887_lit_string_α:
                        mov              qword ptr [rbp + 4608], 1
                        mov              rax, qword ptr [rip + .Lx00889_0]
                        mov              qword ptr [rbp + 4616], rax
                                                                                        jmp   n00890_subscript_α
.Lx00889_0:
                        .quad            .Lx00889_0_s
.Lx00889_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n00888_assign_α:
                        mov              rax, qword ptr [rbp + 4656]
                        mov              rdx, qword ptr [rbp + 4664]
                        mov              qword ptr [1879052448], rax
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n00883_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00890_subscript_α:
                        mov              rdi, qword ptr [rbp + 4592]
                        mov              rsi, qword ptr [rbp + 4600]
                        mov              rdx, qword ptr [rbp + 4608]
                        mov              rcx, qword ptr [rbp + 4616]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00891_var_ref_α
                        mov              qword ptr [rbp + 4624], rax
                        mov              qword ptr [rbp + 4632], rdx
                                                                                        jmp   n00892_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00892_deref_α:
                        mov              rdi, qword ptr [rbp + 4624]
                        mov              rsi, qword ptr [rbp + 4632]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00891_var_ref_α
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx
                                                                                        jmp   n00893_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00891_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                                                                                        jmp   n00894_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00893_unop_test_α:
                        mov              eax, dword ptr [rbp + 4640]
                        cmp              eax, 99
                                                                                        je    n00891_var_ref_α
                        cmp              eax, 0
                                                                                        je    n00891_var_ref_α
                        mov              rax, qword ptr [rbp + 4640]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 4648]
                        mov              qword ptr [rbp + 4584], rax
                                                                                        jmp   n00895_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00894_lit_integer_α:
                        mov              qword ptr [rbp + 4512], 6
                        mov              rax, qword ptr [rip + .Lx00896_0]
                        mov              qword ptr [rbp + 4520], rax
                                                                                        jmp   n00897_subscript_α
.Lx00896_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00895_assign_α:
                        mov              rax, qword ptr [rbp + 4576]
                        mov              rdx, qword ptr [rbp + 4584]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n00891_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00897_subscript_α:
                        mov              rdi, qword ptr [rbp + 4496]
                        mov              rsi, qword ptr [rbp + 4504]
                        mov              rdx, qword ptr [rbp + 4512]
                        mov              rcx, qword ptr [rbp + 4520]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00898_call_proc_staged_α
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                                                                                        jmp   n00899_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00899_deref_α:
                        mov              rdi, qword ptr [rbp + 4528]
                        mov              rsi, qword ptr [rbp + 4536]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00898_call_proc_staged_α
                        mov              qword ptr [rbp + 4544], rax
                        mov              qword ptr [rbp + 4552], rdx
                                                                                        jmp   n00900_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00898_call_proc_staged_α:
                        call             proc_getword_dcα
                                                                                        jmp   .Lx00901_2
.Lx00901_2:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n00902_var_α
                                                                                        jmp   n00903_assign_α
n00898_call_proc_staged_β:
                                                                                        jmp   n00902_var_α
.Lx00901_0:
                        .quad            .Lx00901_0_s
.Lx00901_0_s:
                        .string          "getword"
#-----------------------------------------------------------------------------------------------------------------------
n00900_lit_string_α:
                        mov              qword ptr [rbp + 4560], 1
                        mov              rax, qword ptr [rip + .Lx00904_0]
                        mov              qword ptr [rbp + 4568], rax
                                                                                        jmp   n00905_call_builtin_icon_α
.Lx00904_0:
                        .quad            .Lx00904_0_s
.Lx00904_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00903_assign_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                                                                                        jmp   n00906_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00902_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n00907_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00905_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4456], rax
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4472], rax
                        .section         .rodata
.Lrkfn1891:             .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1891]
                        lea              rsi, [rbp + 4448]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx
                        cmp              eax, 99
                                                                                        je    n00898_call_proc_staged_α
                                                                                        jmp   n00908_assign_α
n00905_call_builtin_icon_β:
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00906_disjunction_α:
                        mov              qword ptr [rbp + 928], 0
                        mov              qword ptr [rbp + 936], 0
                        mov              dword ptr [rbp + 944], 0
                                                                                        jmp   n00909_var_α
n00906_disjunction_as:
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0
                                                                                        jne   .Lx00910_0
                                                                                        jmp   n00898_call_proc_staged_α
.Lx00910_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00910_1
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n00898_call_proc_staged_α
.Lx00910_1:
                                                                                        jmp   n00898_call_proc_staged_α
n00906_disjunction_β:
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0
                                                                                        je    n00898_call_proc_staged_α
                                                                                        jmp   n00911_disjunction_β
n00906_disjunction_af:
                        add              dword ptr [rbp + 944], 1
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 1
                                                                                        je    n00911_disjunction_α
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00907_call_proc_staged_α:
                        lea              rsi, [rbp + 880]
                        call             proc_format_dcα
                                                                                        jmp   .Lx00912_2
.Lx00912_2:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n00913_lit_string_α
                                                                                        jmp   n00914_iterate_α
n00907_call_proc_staged_β:
                                                                                        jmp   n00913_lit_string_α
.Lx00912_0:
                        .quad            .Lx00912_0_s
.Lx00912_0_s:
                        .string          "format"
#-----------------------------------------------------------------------------------------------------------------------
n00913_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx00915_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00916_call_builtin_icon_α
.Lx00915_0:
                        .quad            .Lx00915_0_s
.Lx00915_0_s:
                        .string          "\n\nprocedures:\tlines:\n"
#-----------------------------------------------------------------------------------------------------------------------
n00908_assign_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              rdx, qword ptr [rbp + 4440]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00909_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n00917_lit_string_α
n00909_var_β:
                                                                                        jmp   n00906_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00911_disjunction_α:
                        mov              qword ptr [rbp + 1056], 0
                        mov              qword ptr [rbp + 1064], 0
                        mov              dword ptr [rbp + 1072], 0
                                                                                        jmp   n00918_var_α
n00911_disjunction_as:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 0
                                                                                        jne   .Lx00919_0
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n00906_disjunction_as
.Lx00919_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00919_1
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n00906_disjunction_as
.Lx00919_1:
                                                                                        jmp   n00906_disjunction_as
n00911_disjunction_β:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 0
                                                                                        je    n00898_call_proc_staged_α
                                                                                        jmp   n00920_disjunction_β
n00911_disjunction_af:
                        add              dword ptr [rbp + 1072], 1
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 1
                                                                                        je    n00920_disjunction_α
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00921_conjunction_α:
                                                                                        jmp   n00906_disjunction_as
n00921_conjunction_β:
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00914_iterate_α:
                        mov              qword ptr [rbp + 816], 0
.Lx00922_0:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 816]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              rax, 99
                                                                                        je    n00913_lit_string_α
                                                                                        jmp   n00923_call_builtin_icon_α
n00914_iterate_β:
                        inc              qword ptr [rbp + 816]
                                                                                        jmp   .Lx00922_0
#-----------------------------------------------------------------------------------------------------------------------
n00916_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn1906:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1906]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n00924_make_list_α
                                                                                        jmp   n00924_make_list_α
n00916_call_builtin_icon_β:
                                                                                        jmp   n00924_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00917_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              rax, qword ptr [rip + .Lx00925_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n00926_binop_test_α
.Lx00925_0:
                        .quad            .Lx00925_0_s
.Lx00925_0_s:
                        .string          "link"
#-----------------------------------------------------------------------------------------------------------------------
n00918_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n00927_lit_string_α
n00918_var_β:
                                                                                        jmp   n00911_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00920_disjunction_α:
                        mov              qword ptr [rbp + 1648], 0
                        mov              qword ptr [rbp + 1656], 0
                        mov              dword ptr [rbp + 1664], 0
                                                                                        jmp   n00928_var_α
n00920_disjunction_as:
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 0
                                                                                        jne   .Lx00929_0
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n00911_disjunction_as
.Lx00929_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00929_1
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n00911_disjunction_as
.Lx00929_1:
                                                                                        jmp   n00911_disjunction_as
n00920_disjunction_β:
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 0
                                                                                        je    n00898_call_proc_staged_α
                                                                                        jmp   n00930_disjunction_β
n00920_disjunction_af:
                        add              dword ptr [rbp + 1664], 1
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 1
                                                                                        je    n00930_disjunction_α
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00931_conjunction_α:
                                                                                        jmp   n00911_disjunction_as
n00931_conjunction_β:
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00923_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn1914:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1914]
                        lea              rsi, [rbp + 768]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n00914_iterate_β
                                                                                        jmp   n00914_iterate_β
n00923_call_builtin_icon_β:
                                                                                        jmp   n00914_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00924_make_list_α:
                        lea              rdi, [rbp + 688]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n00932_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00926_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6432]
                        mov              rsi, qword ptr [rbp + 6440]
                        mov              rdx, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1048]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00906_disjunction_af
                        mov              rdi, qword ptr [rbp + 1040]
                        mov              rsi, qword ptr [rbp + 1048]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n00933_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00927_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              rax, qword ptr [rip + .Lx00934_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n00935_binop_test_α
.Lx00934_0:
                        .quad            .Lx00934_0_s
.Lx00934_0_s:
                        .string          "procedure"
#-----------------------------------------------------------------------------------------------------------------------
n00928_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n00936_disjunction_α
n00928_var_β:
                                                                                        jmp   n00920_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00930_disjunction_α:
                        mov              qword ptr [rbp + 2496], 0
                        mov              qword ptr [rbp + 2504], 0
                        mov              dword ptr [rbp + 2512], 0
                                                                                        jmp   n00937_var_α
n00930_disjunction_as:
                        mov              eax, dword ptr [rbp + 2512]
                        cmp              eax, 0
                                                                                        jne   .Lx00938_0
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n00920_disjunction_as
.Lx00938_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00938_1
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n00920_disjunction_as
.Lx00938_1:
                                                                                        jmp   n00920_disjunction_as
n00930_disjunction_β:
                        mov              eax, dword ptr [rbp + 2512]
                        cmp              eax, 0
                                                                                        je    n00898_call_proc_staged_α
                                                                                        jmp   n00939_disjunction_β
n00930_disjunction_af:
                        add              dword ptr [rbp + 2512], 1
                        mov              eax, dword ptr [rbp + 2512]
                        cmp              eax, 1
                                                                                        je    n00939_disjunction_α
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00940_conjunction_α:
                                                                                        jmp   n00920_disjunction_as
n00940_conjunction_β:
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00932_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 6384], rax
                        mov              qword ptr [rbp + 6392], rdx
                                                                                        jmp   n00941_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00933_make_list_α:
                        lea              rdi, [rbp + 1008]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n00942_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00935_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6432]
                        mov              rsi, qword ptr [rbp + 6440]
                        mov              rdx, qword ptr [rbp + 1632]
                        mov              rcx, qword ptr [rbp + 1640]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00911_disjunction_af
                        mov              rdi, qword ptr [rbp + 1632]
                        mov              rsi, qword ptr [rbp + 1640]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n00943_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00936_disjunction_α:
                        mov              qword ptr [rbp + 2416], 0
                        mov              qword ptr [rbp + 2424], 0
                        mov              dword ptr [rbp + 2432], 0
                                                                                        jmp   n00944_lit_string_α
n00936_disjunction_as:
                        mov              eax, dword ptr [rbp + 2432]
                        cmp              eax, 0
                                                                                        jne   .Lx00945_0
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n00946_binop_test_α
.Lx00945_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00945_1
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n00946_binop_test_α
.Lx00945_1:
                        cmp              eax, 2
                                                                                        jne   .Lx00945_2
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n00946_binop_test_α
.Lx00945_2:
                                                                                        jmp   n00946_binop_test_α
n00936_disjunction_β:
                        mov              eax, dword ptr [rbp + 2432]
                        cmp              eax, 0
                                                                                        je    n00936_disjunction_af
                        cmp              eax, 1
                                                                                        je    n00936_disjunction_af
                                                                                        jmp   n00936_disjunction_af
n00936_disjunction_af:
                        add              dword ptr [rbp + 2432], 1
                        mov              eax, dword ptr [rbp + 2432]
                        cmp              eax, 1
                                                                                        je    n00947_lit_string_α
                        cmp              eax, 2
                                                                                        je    n00948_lit_string_α
                                                                                        jmp   n00920_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00937_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n00949_disjunction_α
n00937_var_β:
                                                                                        jmp   n00930_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00939_disjunction_α:
                        mov              qword ptr [rbp + 3536], 0
                        mov              qword ptr [rbp + 3544], 0
                        mov              dword ptr [rbp + 3552], 0
                                                                                        jmp   n00950_var_α
n00939_disjunction_as:
                        mov              eax, dword ptr [rbp + 3552]
                        cmp              eax, 0
                                                                                        jne   .Lx00951_0
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n00930_disjunction_as
.Lx00951_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00951_1
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n00930_disjunction_as
.Lx00951_1:
                                                                                        jmp   n00930_disjunction_as
n00939_disjunction_β:
                        mov              eax, dword ptr [rbp + 3552]
                        cmp              eax, 0
                                                                                        je    n00898_call_proc_staged_α
                                                                                        jmp   n00952_disjunction_β
n00939_disjunction_af:
                        add              dword ptr [rbp + 3552], 1
                        mov              eax, dword ptr [rbp + 3552]
                        cmp              eax, 1
                                                                                        je    n00952_disjunction_α
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00953_conjunction_α:
                                                                                        jmp   n00930_disjunction_as
n00953_conjunction_β:
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00941_var_α:
                        mov              rax, qword ptr [rbp + 6416]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 6424]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00954_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00942_assign_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n00955_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00943_var_α:
                        mov              rax, qword ptr [rbp + 6416]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 6424]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n00956_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00946_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6432]
                        mov              rsi, qword ptr [rbp + 6440]
                        mov              rdx, qword ptr [rbp + 2416]
                        mov              rcx, qword ptr [rbp + 2424]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00936_disjunction_β
                        mov              rdi, qword ptr [rbp + 2416]
                        mov              rsi, qword ptr [rbp + 2424]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n00957_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00944_lit_string_α:
                        mov              qword ptr [rbp + 2448], 1
                        mov              rax, qword ptr [rip + .Lx00958_0]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n00936_disjunction_as
n00944_lit_string_β:
                                                                                        jmp   n00936_disjunction_af
.Lx00958_0:
                        .quad            .Lx00958_0_s
.Lx00958_0_s:
                        .string          "global"
#-----------------------------------------------------------------------------------------------------------------------
n00947_lit_string_α:
                        mov              qword ptr [rbp + 2464], 1
                        mov              rax, qword ptr [rip + .Lx00959_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n00936_disjunction_as
n00947_lit_string_β:
                                                                                        jmp   n00936_disjunction_af
.Lx00959_0:
                        .quad            .Lx00959_0_s
.Lx00959_0_s:
                        .string          "link"
#-----------------------------------------------------------------------------------------------------------------------
n00948_lit_string_α:
                        mov              qword ptr [rbp + 2480], 1
                        mov              rax, qword ptr [rip + .Lx00960_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n00936_disjunction_as
n00948_lit_string_β:
                                                                                        jmp   n00936_disjunction_af
.Lx00960_0:
                        .quad            .Lx00960_0_s
.Lx00960_0_s:
                        .string          "record"
#-----------------------------------------------------------------------------------------------------------------------
n00949_disjunction_α:
                        mov              qword ptr [rbp + 3456], 0
                        mov              qword ptr [rbp + 3464], 0
                        mov              dword ptr [rbp + 3472], 0
                                                                                        jmp   n00961_lit_string_α
n00949_disjunction_as:
                        mov              eax, dword ptr [rbp + 3472]
                        cmp              eax, 0
                                                                                        jne   .Lx00962_0
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n00963_binop_test_α
.Lx00962_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00962_1
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n00963_binop_test_α
.Lx00962_1:
                        cmp              eax, 2
                                                                                        jne   .Lx00962_2
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n00963_binop_test_α
.Lx00962_2:
                                                                                        jmp   n00963_binop_test_α
n00949_disjunction_β:
                        mov              eax, dword ptr [rbp + 3472]
                        cmp              eax, 0
                                                                                        je    n00949_disjunction_af
                        cmp              eax, 1
                                                                                        je    n00949_disjunction_af
                                                                                        jmp   n00949_disjunction_af
n00949_disjunction_af:
                        add              dword ptr [rbp + 3472], 1
                        mov              eax, dword ptr [rbp + 3472]
                        cmp              eax, 1
                                                                                        je    n00964_lit_string_α
                        cmp              eax, 2
                                                                                        je    n00965_lit_string_α
                                                                                        jmp   n00930_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00950_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 3864], rax
                                                                                        jmp   n00966_lit_string_α
n00950_var_β:
                                                                                        jmp   n00939_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00952_disjunction_α:
                        mov              qword ptr [rbp + 3888], 0
                        mov              qword ptr [rbp + 3896], 0
                        mov              dword ptr [rbp + 3904], 0
                                                                                        jmp   n00967_var_α
n00952_disjunction_as:
                        mov              eax, dword ptr [rbp + 3904]
                        cmp              eax, 0
                                                                                        jne   .Lx00968_0
                                                                                        jmp   n00939_disjunction_as
.Lx00968_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00968_1
                        mov              rax, qword ptr [rbp + 4016]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 4024]
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n00939_disjunction_as
.Lx00968_1:
                                                                                        jmp   n00939_disjunction_as
n00952_disjunction_β:
                        mov              eax, dword ptr [rbp + 3904]
                        cmp              eax, 0
                                                                                        je    n00898_call_proc_staged_α
                                                                                        jmp   n00898_call_proc_staged_α
n00952_disjunction_af:
                        add              dword ptr [rbp + 3904], 1
                        mov              eax, dword ptr [rbp + 3904]
                        cmp              eax, 1
                                                                                        je    n00969_var_α
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00970_conjunction_α:
                                                                                        jmp   n00939_disjunction_as
n00970_conjunction_β:
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00954_iterate_α:
                        mov              qword ptr [rbp + 240], 0
.Lx00971_0:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 240]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              rax, 99
                                                                                        je    n00972_var_α
                                                                                        jmp   n00973_assign_α
n00954_iterate_β:
                        inc              qword ptr [rbp + 240]
                                                                                        jmp   .Lx00971_0
#-----------------------------------------------------------------------------------------------------------------------
n00972_var_α:
                        mov              rax, qword ptr [rbp + 6384]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 6392]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00974_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00955_lit_string_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 1
                        mov              rax, qword ptr [rip + .Lx00975_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n00976_assign_α
.Lx00975_0:
                        .quad            .Lx00975_0_s
.Lx00975_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00956_lit_string_α:
                        mov              qword ptr [rbp + 1552], 1
                        mov              rax, qword ptr [rip + .Lx00977_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n00978_var_α
.Lx00977_0:
                        .quad            .Lx00977_0_s
.Lx00977_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00979_disjunction_α:
                        mov              qword ptr [rbp + 1328], 0
                        mov              qword ptr [rbp + 1336], 0
                        mov              dword ptr [rbp + 1344], 0
                                                                                        jmp   n00980_call_proc_staged_α
n00979_disjunction_as:
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 0
                                                                                        jne   .Lx00981_0
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n00982_assign_α
.Lx00981_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00981_1
                                                                                        jmp   n00982_assign_α
.Lx00981_1:
                                                                                        jmp   n00982_assign_α
n00979_disjunction_β:
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 0
                                                                                        je    n00979_disjunction_af
                                                                                        jmp   n00979_disjunction_af
n00979_disjunction_af:
                        add              dword ptr [rbp + 1344], 1
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 1
                                                                                        je    n00983_goto_α
                                                                                        jmp   n00984_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00957_disjunction_α:
                        mov              qword ptr [rbp + 2320], 0
                        mov              qword ptr [rbp + 2328], 0
                        mov              dword ptr [rbp + 2336], 0
                                                                                        jmp   n00985_call_proc_staged_α
n00957_disjunction_as:
                        mov              eax, dword ptr [rbp + 2336]
                        cmp              eax, 0
                                                                                        jne   .Lx00986_0
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n00987_assign_α
.Lx00986_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00986_1
                                                                                        jmp   n00987_assign_α
.Lx00986_1:
                                                                                        jmp   n00987_assign_α
n00957_disjunction_β:
                        mov              eax, dword ptr [rbp + 2336]
                        cmp              eax, 0
                                                                                        je    n00957_disjunction_af
                                                                                        jmp   n00957_disjunction_af
n00957_disjunction_af:
                        add              dword ptr [rbp + 2336], 1
                        mov              eax, dword ptr [rbp + 2336]
                        cmp              eax, 1
                                                                                        je    n00988_goto_α
                                                                                        jmp   n00989_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00963_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6432]
                        mov              rsi, qword ptr [rbp + 6440]
                        mov              rdx, qword ptr [rbp + 3456]
                        mov              rcx, qword ptr [rbp + 3464]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00949_disjunction_β
                        mov              rdi, qword ptr [rbp + 3456]
                        mov              rsi, qword ptr [rbp + 3464]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                                                                                        jmp   n00990_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00961_lit_string_α:
                        mov              qword ptr [rbp + 3488], 1
                        mov              rax, qword ptr [rip + .Lx00991_0]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n00949_disjunction_as
n00961_lit_string_β:
                                                                                        jmp   n00949_disjunction_af
.Lx00991_0:
                        .quad            .Lx00991_0_s
.Lx00991_0_s:
                        .string          "local"
#-----------------------------------------------------------------------------------------------------------------------
n00964_lit_string_α:
                        mov              qword ptr [rbp + 3504], 1
                        mov              rax, qword ptr [rip + .Lx00992_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n00949_disjunction_as
n00964_lit_string_β:
                                                                                        jmp   n00949_disjunction_af
.Lx00992_0:
                        .quad            .Lx00992_0_s
.Lx00992_0_s:
                        .string          "dynamic"
#-----------------------------------------------------------------------------------------------------------------------
n00965_lit_string_α:
                        mov              qword ptr [rbp + 3520], 1
                        mov              rax, qword ptr [rip + .Lx00993_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n00949_disjunction_as
n00965_lit_string_β:
                                                                                        jmp   n00949_disjunction_af
.Lx00993_0:
                        .quad            .Lx00993_0_s
.Lx00993_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00966_lit_string_α:
                        mov              qword ptr [rbp + 3872], 1
                        mov              rax, qword ptr [rip + .Lx00994_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n00995_binop_test_α
.Lx00994_0:
                        .quad            .Lx00994_0_s
.Lx00994_0_s:
                        .string          "end"
#-----------------------------------------------------------------------------------------------------------------------
n00967_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n00996_var_α
n00967_var_β:
                                                                                        jmp   n00952_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00969_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx
                                                                                        jmp   n00997_assign_α
n00969_var_β:
                                                                                        jmp   n00998_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00999_conjunction_α:
                                                                                        jmp   n00952_disjunction_as
n00999_conjunction_β:
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00973_assign_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                                                                                        jmp   n01000_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00974_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn1972:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1972]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n01001_call_proc_staged_α
                                                                                        jmp   n01002_iterate_α
n00974_call_builtin_icon_β:
                                                                                        jmp   n01001_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01001_call_proc_staged_α:
                        call             proc_Term___dcα
                                                                                        jmp   .Lx01003_2
.Lx01003_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n01001_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx01003_0:
                        .quad            .Lx01003_0_s
.Lx01003_0_s:
                        .string          "Term__"
#-----------------------------------------------------------------------------------------------------------------------
n00976_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00978_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n01004_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00982_assign_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                                                                                        jmp   n00984_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00980_call_proc_staged_α:
                        call             proc_getword_dcα
                                                                                        jmp   .Lx01005_2
.Lx01005_2:
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 99
                                                                                        je    n00979_disjunction_af
                                                                                        jmp   n00979_disjunction_as
n00980_call_proc_staged_β:
                                                                                        jmp   n00979_disjunction_af
.Lx01005_0:
                        .quad            .Lx01005_0_s
.Lx01005_0_s:
                        .string          "getword"
#-----------------------------------------------------------------------------------------------------------------------
n00983_goto_α:
                                                                                        jmp   n00902_var_α
n00983_goto_β:
                                                                                        jmp   n00902_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00987_assign_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                                                                                        jmp   n00989_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00985_call_proc_staged_α:
                        call             proc_getword_dcα
                                                                                        jmp   .Lx01006_2
.Lx01006_2:
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 99
                                                                                        je    n00957_disjunction_af
                                                                                        jmp   n00957_disjunction_as
n00985_call_proc_staged_β:
                                                                                        jmp   n00957_disjunction_af
.Lx01006_0:
                        .quad            .Lx01006_0_s
.Lx01006_0_s:
                        .string          "getword"
#-----------------------------------------------------------------------------------------------------------------------
n00988_goto_α:
                                                                                        jmp   n00902_var_α
n00988_goto_β:
                                                                                        jmp   n00902_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00990_disjunction_α:
                        mov              qword ptr [rbp + 3360], 0
                        mov              qword ptr [rbp + 3368], 0
                        mov              dword ptr [rbp + 3376], 0
                                                                                        jmp   n01007_call_proc_staged_α
n00990_disjunction_as:
                        mov              eax, dword ptr [rbp + 3376]
                        cmp              eax, 0
                                                                                        jne   .Lx01008_0
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   n01009_assign_α
.Lx01008_0:
                        cmp              eax, 1
                                                                                        jne   .Lx01008_1
                                                                                        jmp   n01009_assign_α
.Lx01008_1:
                                                                                        jmp   n01009_assign_α
n00990_disjunction_β:
                        mov              eax, dword ptr [rbp + 3376]
                        cmp              eax, 0
                                                                                        je    n00990_disjunction_af
                                                                                        jmp   n00990_disjunction_af
n00990_disjunction_af:
                        add              dword ptr [rbp + 3376], 1
                        mov              eax, dword ptr [rbp + 3376]
                        cmp              eax, 1
                                                                                        je    n01010_goto_α
                                                                                        jmp   n01011_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00995_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6432]
                        mov              rsi, qword ptr [rbp + 6440]
                        mov              rdx, qword ptr [rbp + 3872]
                        mov              rcx, qword ptr [rbp + 3880]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00939_disjunction_af
                        mov              rdi, qword ptr [rbp + 3872]
                        mov              rsi, qword ptr [rbp + 3880]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                                                                                        jmp   n01012_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00996_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                                                                                        jmp   n01013_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00997_assign_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              rdx, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 6480], rax
                        mov              qword ptr [rbp + 6488], rdx
                                                                                        jmp   n00998_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00998_disjunction_α:
                        mov              qword ptr [rbp + 4144], 0
                        mov              qword ptr [rbp + 4152], 0
                        mov              dword ptr [rbp + 4160], 0
                                                                                        jmp   n01014_call_proc_staged_α
n00998_disjunction_as:
                        mov              eax, dword ptr [rbp + 4160]
                        cmp              eax, 0
                                                                                        jne   .Lx01015_0
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n01016_var_α
.Lx01015_0:
                        cmp              eax, 1
                                                                                        jne   .Lx01015_1
                        mov              rax, qword ptr [rbp + 4320]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4328]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n01016_var_α
.Lx01015_1:
                                                                                        jmp   n01016_var_α
n00998_disjunction_β:
                        mov              eax, dword ptr [rbp + 4160]
                        cmp              eax, 0
                                                                                        je    n01016_var_α
                                                                                        jmp   n01016_var_α
n00998_disjunction_af:
                        add              dword ptr [rbp + 4160], 1
                        mov              eax, dword ptr [rbp + 4160]
                        cmp              eax, 1
                                                                                        je    n01017_var_α
                                                                                        jmp   n01016_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01000_bound_α:
                        mov              qword ptr [rbp + 272], rsp
                                                                                        jmp   n01018_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01002_iterate_α:
                        mov              qword ptr [rbp + 128], 0
.Lx01019_0:
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 128]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              rax, 99
                                                                                        je    n01001_call_proc_staged_α
                                                                                        jmp   n01020_call_builtin_icon_α
n01002_iterate_β:
                        inc              qword ptr [rbp + 128]
                                                                                        jmp   .Lx01019_0
#-----------------------------------------------------------------------------------------------------------------------
n01021_goto_α:
                                                                                        jmp   n00898_call_proc_staged_α
n01021_goto_β:
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01004_lit_integer_α:
                        mov              qword ptr [rbp + 1584], 6
                        mov              rax, qword ptr [rip + .Lx01022_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n01023_call_α
.Lx01022_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00984_var_α:
                        mov              rax, qword ptr [rbp + 6416]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 6424]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n01024_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00989_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n01025_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01009_assign_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                                                                                        jmp   n01011_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01007_call_proc_staged_α:
                        call             proc_getword_dcα
                                                                                        jmp   .Lx01026_2
.Lx01026_2:
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 99
                                                                                        je    n00990_disjunction_af
                                                                                        jmp   n00990_disjunction_as
n01007_call_proc_staged_β:
                                                                                        jmp   n00990_disjunction_af
.Lx01026_0:
                        .quad            .Lx01026_0_s
.Lx01026_0_s:
                        .string          "getword"
#-----------------------------------------------------------------------------------------------------------------------
n01010_goto_α:
                                                                                        jmp   n00902_var_α
n01010_goto_β:
                                                                                        jmp   n00902_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01012_lit_string_α:
                        mov              qword ptr [rbp + 3824], 1
                        mov              rax, qword ptr [rip + .Lx01027_0]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n01028_assign_α
.Lx01027_0:
                        .quad            .Lx01027_0_s
.Lx01027_0_s:
                        .string          "global"
#-----------------------------------------------------------------------------------------------------------------------
n01013_iterate_α:
                        mov              qword ptr [rbp + 3968], 0
.Lx01029_0:
                        mov              rdi, qword ptr [rbp + 3984]
                        mov              rsi, qword ptr [rbp + 3992]
                        mov              rdx, qword ptr [rbp + 3968]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              rax, 99
                                                                                        je    n00952_disjunction_af
                                                                                        jmp   n01030_binop_test_α
n01013_iterate_β:
                        inc              qword ptr [rbp + 3968]
                                                                                        jmp   .Lx01029_0
#-----------------------------------------------------------------------------------------------------------------------
n01016_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 4104], rax
                                                                                        jmp   n01031_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01014_call_proc_staged_α:
                        call             proc_getword_dcα
                                                                                        jmp   .Lx01032_2
.Lx01032_2:
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        cmp              eax, 99
                                                                                        je    n00998_disjunction_af
                                                                                        jmp   n01033_assign_α
n01014_call_proc_staged_β:
                                                                                        jmp   n00998_disjunction_af
.Lx01032_0:
                        .quad            .Lx01032_0_s
.Lx01032_0_s:
                        .string          "getword"
#-----------------------------------------------------------------------------------------------------------------------
n01017_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx
                                                                                        jmp   n01034_var_α
n01017_var_β:
                                                                                        jmp   n01016_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01035_assign_α:
                        mov              rax, qword ptr [rbp + 4192]
                        mov              rdx, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                                                                                        jmp   n00998_disjunction_as
n01035_assign_β:
                                                                                        jmp   n01016_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01036_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4336], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4344], rax
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 4352], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 4360], rax
                        .section         .rodata
.Lrkfn2016:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2016]
                        lea              rsi, [rbp + 4336]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4320], rax
                        mov              qword ptr [rbp + 4328], rdx
                        cmp              eax, 99
                                                                                        je    n01016_var_α
                                                                                        jmp   n00998_disjunction_as
n01036_call_builtin_icon_β:
                                                                                        jmp   n01016_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01018_var_α:
                        mov              rax, qword ptr [rbp + 6384]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 6392]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n01037_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01020_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn2020:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2020]
                        lea              rsi, [rbp + 80]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n01002_iterate_β
                                                                                        jmp   n01002_iterate_β
n01020_call_builtin_icon_β:
                                                                                        jmp   n01002_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n01023_call_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lrkfn2022:             .string          "procrec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2022]
                        lea              rsi, [rbp + 1488]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 99
                                                                                        je    n00979_disjunction_α
                                                                                        jmp   n01038_call_builtin_icon_α
n01023_call_β:
                                                                                        jmp   n00979_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01024_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                        .section         .rodata
.Lrkfn2024:             .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2024]
                        lea              rsi, [rbp + 1280]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n01039_var_α
                                                                                        jmp   n01040_assign_α
n01024_call_builtin_icon_β:
                                                                                        jmp   n01039_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01039_var_α:
                        mov              rax, qword ptr [rbp + 6400]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 6408]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n01041_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01025_lit_string_α:
                        mov              qword ptr [rbp + 2288], 1
                        mov              rax, qword ptr [rip + .Lx01042_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n01043_var_α
.Lx01042_0:
                        .quad            .Lx01042_0_s
.Lx01042_0_s:
                        .string          "global"
#-----------------------------------------------------------------------------------------------------------------------
n01044_call_proc_staged_α:
                        call             proc_getword_dcα
                                                                                        jmp   .Lx01045_2
.Lx01045_2:
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n01046_var_α
                                                                                        jmp   n01047_assign_α
n01044_call_proc_staged_β:
                                                                                        jmp   n01046_var_α
.Lx01045_0:
                        .quad            .Lx01045_0_s
.Lx01045_0_s:
                        .string          "getword"
#-----------------------------------------------------------------------------------------------------------------------
n01011_var_α:
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                                                                                        jmp   n01048_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01028_assign_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              rdx, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                                                                                        jmp   n01049_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n01030_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6432]
                        mov              rsi, qword ptr [rbp + 6440]
                        mov              rdx, qword ptr [rbp + 3952]
                        mov              rcx, qword ptr [rbp + 3960]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n01013_iterate_β
                        mov              rdi, qword ptr [rbp + 3952]
                        mov              rsi, qword ptr [rbp + 3960]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01031_var_α:
                        mov              rax, qword ptr [rbp + 6448]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 6456]
                        mov              qword ptr [rbp + 4120], rax
                                                                                        jmp   n01050_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01033_assign_α:
                        mov              rax, qword ptr [rbp + 4272]
                        mov              rdx, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 6464], rax
                        mov              qword ptr [rbp + 6472], rdx
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                                                                                        jmp   n01051_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01034_var_α:
                        mov              rax, qword ptr [rbp + 6464]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 6472]
                        mov              qword ptr [rbp + 4408], rax
                                                                                        jmp   n01036_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01037_var_α:
                        mov              rax, qword ptr [rbp + 6400]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 6408]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n01052_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n01053_unmark_α:
                        mov              rsp, qword ptr [rbp + 272]
                                                                                        jmp   n00954_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n01038_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        .section         .rodata
.Lrkfn2043:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2043]
                        lea              rsi, [rbp + 1408]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    n00979_disjunction_α
                                                                                        jmp   n00979_disjunction_α
n01038_call_builtin_icon_β:
                                                                                        jmp   n00979_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01040_assign_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                                                                                        jmp   n01039_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01041_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx01054_0]
                        mov              rsi, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n01055_var_α
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n01056_var_α
.Lx01054_0:
                        .quad            .Lx01054_0_s
.Lx01054_0_s:
                        .string          "pname"
#-----------------------------------------------------------------------------------------------------------------------
n01055_var_α:
                        mov              rax, qword ptr [rbp + 6416]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 6424]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n01057_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01043_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n01058_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01047_assign_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 6464], rax
                        mov              qword ptr [rbp + 6472], rdx
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n01059_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01046_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n01060_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01048_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 3352], rax
                                                                                        jmp   n01061_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01062_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n01063_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01049_make_list_α:
                        lea              rdi, [rbp + 3824]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                                                                                        jmp   n01064_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n01050_var_α:
                        mov              rax, qword ptr [rbp + 6480]
                        mov              qword ptr [rbp + 4128], rax
                        mov              rax, qword ptr [rbp + 6488]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n01065_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01051_lit_string_α:
                        mov              qword ptr [rbp + 4304], 1
                        mov              rax, qword ptr [rip + .Lx01066_0]
                        mov              qword ptr [rbp + 4312], rax
                                                                                        jmp   n01067_binop_test_α
.Lx01066_0:
                        .quad            .Lx01066_0_s
.Lx01066_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n01052_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx01068_0]
                        mov              rsi, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n01053_unmark_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n01069_lit_integer_α
.Lx01068_0:
                        .quad            .Lx01068_0_s
.Lx01068_0_s:
                        .string          "pname"
#-----------------------------------------------------------------------------------------------------------------------
n01056_var_α:
                        mov              rax, qword ptr [rbp + 6448]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 6456]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n01070_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01057_var_α:
                        mov              rax, qword ptr [rbp + 6400]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 6408]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n01071_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01058_call_proc_staged_α:
                        lea              rsi, [rbp + 2272]
                        lea              rdx, [rbp + 2288]
                        lea              rcx, [rbp + 2304]
                        call             proc_addword_dcα
                                                                                        jmp   .Lx01072_2
.Lx01072_2:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 99
                                                                                        je    n01044_call_proc_staged_α
                                                                                        jmp   n01044_call_proc_staged_α
n01058_call_proc_staged_β:
                                                                                        jmp   n01044_call_proc_staged_α
.Lx01072_0:
                        .quad            .Lx01072_0_s
.Lx01072_0_s:
                        .string          "addword"
#-----------------------------------------------------------------------------------------------------------------------
n01059_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              rax, qword ptr [rip + .Lx01073_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n01074_binop_test_α
.Lx01073_0:
                        .quad            .Lx01073_0_s
.Lx01073_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n01060_var_α:
                        mov              rax, qword ptr [rbp + 6464]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 6472]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n01075_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01061_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3288], rax
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3304], rax
                        .section         .rodata
.Lrkfn2071:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2071]
                        lea              rsi, [rbp + 3280]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 99
                                                                                        je    n01062_var_α
                                                                                        jmp   n01062_var_α
n01061_call_builtin_icon_β:
                                                                                        jmp   n01062_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01063_var_α:
                        mov              rax, qword ptr [rbp + 6448]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 6456]
                        mov              qword ptr [rbp + 3240], rax
                                                                                        jmp   n01076_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01077_call_proc_staged_α:
                        call             proc_getword_dcα
                                                                                        jmp   .Lx01078_2
.Lx01078_2:
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        cmp              eax, 99
                                                                                        je    n01079_var_α
                                                                                        jmp   n01080_assign_α
n01077_call_proc_staged_β:
                                                                                        jmp   n01079_var_α
.Lx01078_0:
                        .quad            .Lx01078_0_s
.Lx01078_0_s:
                        .string          "getword"
#-----------------------------------------------------------------------------------------------------------------------
n01064_assign_α:
                        mov              rax, qword ptr [rbp + 3808]
                        mov              rdx, qword ptr [rbp + 3816]
                        mov              qword ptr [1879052480], rax
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n01081_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01065_call_proc_staged_α:
                        lea              rsi, [rbp + 4096]
                        lea              rdx, [rbp + 4112]
                        lea              rcx, [rbp + 4128]
                        call             proc_addword_dcα
                                                                                        jmp   .Lx01082_2
.Lx01082_2:
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx
                        cmp              eax, 99
                                                                                        je    n00898_call_proc_staged_α
                                                                                        jmp   n00999_conjunction_α
n01065_call_proc_staged_β:
                                                                                        jmp   n00898_call_proc_staged_α
.Lx01082_0:
                        .quad            .Lx01082_0_s
.Lx01082_0_s:
                        .string          "addword"
#-----------------------------------------------------------------------------------------------------------------------
n01067_binop_test_α:
                        mov              rdi, qword ptr [rbp + 4256]
                        mov              rsi, qword ptr [rbp + 4264]
                        mov              rdx, qword ptr [rbp + 4304]
                        mov              rcx, qword ptr [rbp + 4312]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00998_disjunction_af
                        mov              rdi, qword ptr [rbp + 4304]
                        mov              rsi, qword ptr [rbp + 4312]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                                                                                        jmp   n01083_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01069_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx01084_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n01085_lit_string_α
.Lx01084_0:
                        .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n01070_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1200]
                        mov              rsi, qword ptr [rbp + 1208]
                        mov              rdx, qword ptr [rbp + 1248]
                        mov              rcx, qword ptr [rbp + 1256]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n01055_var_α
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n01055_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01071_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lrkfn2083:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2083]
                        lea              rsi, [rbp + 1120]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n00898_call_proc_staged_α
                                                                                        jmp   n00931_conjunction_α
n01071_call_builtin_icon_β:
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01074_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1856]
                        mov              rcx, qword ptr [rbp + 1864]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n01046_var_α
                        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n01086_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01075_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1736], rax
                        .section         .rodata
.Lrkfn2086:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2086]
                        lea              rsi, [rbp + 1712]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 99
                                                                                        je    n00898_call_proc_staged_α
                                                                                        jmp   n00940_conjunction_α
n01075_call_builtin_icon_β:
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01076_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                                                                                        jmp   n01087_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01080_assign_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              rdx, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 6464], rax
                        mov              qword ptr [rbp + 6472], rdx
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n01088_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01079_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n01089_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01081_var_α:
                        mov              rax, qword ptr [rbp + 6416]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 6424]
                        mov              qword ptr [rbp + 3800], rax
                                                                                        jmp   n01090_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01083_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 4208], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 4216], rax
                                                                                        jmp   n01091_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01085_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx01092_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n01093_call_builtin_icon_α
.Lx01092_0:
                        .quad            .Lx01092_0_s
.Lx01092_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n01086_disjunction_α:
                        mov              qword ptr [rbp + 2080], 0
                        mov              qword ptr [rbp + 2088], 0
                        mov              dword ptr [rbp + 2096], 0
                                                                                        jmp   n01094_var_α
n01086_disjunction_as:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 0
                                                                                        jne   .Lx01095_0
                                                                                        jmp   n01096_disjunction_α
.Lx01095_0:
                                                                                        jmp   n01096_disjunction_α
n01086_disjunction_β:
                        mov              eax, dword ptr [rbp + 2096]
                                                                                        jmp   n01096_disjunction_α
n01086_disjunction_af:
                        add              dword ptr [rbp + 2096], 1
                        mov              eax, dword ptr [rbp + 2096]
                                                                                        jmp   n01096_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01087_call_proc_staged_α:
                        lea              rsi, [rbp + 3216]
                        lea              rdx, [rbp + 3232]
                        lea              rcx, [rbp + 3248]
                        call             proc_addword_dcα
                                                                                        jmp   .Lx01097_2
.Lx01097_2:
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                        cmp              eax, 99
                                                                                        je    n01077_call_proc_staged_α
                                                                                        jmp   n01077_call_proc_staged_α
n01087_call_proc_staged_β:
                                                                                        jmp   n01077_call_proc_staged_α
.Lx01097_0:
                        .quad            .Lx01097_0_s
.Lx01097_0_s:
                        .string          "addword"
#-----------------------------------------------------------------------------------------------------------------------
n01088_lit_string_α:
                        mov              qword ptr [rbp + 2704], 1
                        mov              rax, qword ptr [rip + .Lx01098_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n01099_binop_test_α
.Lx01098_0:
                        .quad            .Lx01098_0_s
.Lx01098_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n01089_var_α:
                        mov              rax, qword ptr [rbp + 6464]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 6472]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n01100_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01090_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3768], rax
                        .section         .rodata
.Lrkfn2103:             .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2103]
                        lea              rsi, [rbp + 3760]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        cmp              eax, 99
                                                                                        je    n01101_var_α
                                                                                        jmp   n01102_assign_α
n01090_call_builtin_icon_β:
                                                                                        jmp   n01101_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01101_var_α:
                        mov              rax, qword ptr [rbp + 6400]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 6408]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n01103_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01091_lit_string_α:
                        mov              qword ptr [rbp + 4224], 1
                        mov              rax, qword ptr [rip + .Lx01104_0]
                        mov              qword ptr [rbp + 4232], rax
                                                                                        jmp   n01105_binop_α
.Lx01104_0:
                        .quad            .Lx01104_0_s
.Lx01104_0_s:
                        .string          " *"
#-----------------------------------------------------------------------------------------------------------------------
n01093_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 504], rax
                        .section         .rodata
.Lrkfn2108:             .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2108]
                        lea              rsi, [rbp + 464]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n01053_unmark_α
                                                                                        jmp   n01106_var_α
n01093_call_builtin_icon_β:
                                                                                        jmp   n01053_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n01096_disjunction_α:
                        mov              qword ptr [rbp + 2016], 0
                        mov              qword ptr [rbp + 2024], 0
                        mov              dword ptr [rbp + 2032], 0
                                                                                        jmp   n01107_call_proc_staged_α
n01096_disjunction_as:
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              eax, 0
                                                                                        jne   .Lx01108_0
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n01109_assign_α
.Lx01108_0:
                        cmp              eax, 1
                                                                                        jne   .Lx01108_1
                                                                                        jmp   n01109_assign_α
.Lx01108_1:
                                                                                        jmp   n01109_assign_α
n01096_disjunction_β:
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              eax, 0
                                                                                        je    n01096_disjunction_af
                                                                                        jmp   n01096_disjunction_af
n01096_disjunction_af:
                        add              dword ptr [rbp + 2032], 1
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              eax, 1
                                                                                        je    n01110_goto_α
                                                                                        jmp   n01111_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01094_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n01112_var_α
n01094_var_β:
                                                                                        jmp   n01086_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01099_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2656]
                        mov              rsi, qword ptr [rbp + 2664]
                        mov              rdx, qword ptr [rbp + 2704]
                        mov              rcx, qword ptr [rbp + 2712]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n01079_var_α
                        mov              rdi, qword ptr [rbp + 2704]
                        mov              rsi, qword ptr [rbp + 2712]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n01113_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01100_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2568], rax
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2584], rax
                        .section         .rodata
.Lrkfn2115:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2115]
                        lea              rsi, [rbp + 2560]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    n00898_call_proc_staged_α
                                                                                        jmp   n00953_conjunction_α
n01100_call_builtin_icon_β:
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01102_assign_α:
                        mov              rax, qword ptr [rbp + 3744]
                        mov              rdx, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                                                                                        jmp   n01101_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01103_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx01114_0]
                        mov              rsi, qword ptr [rbp + 3696]
                        mov              rdx, qword ptr [rbp + 3704]
                        call             rt_field_var@PLT
                        cmp              eax, 99
                                                                                        je    n01115_var_α
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                                                                                        jmp   n01116_var_α
.Lx01114_0:
                        .quad            .Lx01114_0_s
.Lx01114_0_s:
                        .string          "lastline"
#-----------------------------------------------------------------------------------------------------------------------
n01115_var_α:
                        mov              rax, qword ptr [rbp + 6416]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 6424]
                        mov              qword ptr [rbp + 3656], rax
                                                                                        jmp   n01117_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01105_binop_α:
                        mov              rdi, qword ptr [rbp + 6432]
                        mov              rsi, qword ptr [rbp + 6440]
                        mov              rdx, qword ptr [rbp + 4224]
                        mov              rcx, qword ptr [rbp + 4232]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                                                                                        jmp   n01035_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n01106_var_α:
                        mov              rax, qword ptr [rbp + 6400]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 6408]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n01118_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n01109_assign_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                                                                                        jmp   n01111_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01107_call_proc_staged_α:
                        call             proc_getword_dcα
                                                                                        jmp   .Lx01119_2
.Lx01119_2:
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 99
                                                                                        je    n01096_disjunction_af
                                                                                        jmp   n01096_disjunction_as
n01107_call_proc_staged_β:
                                                                                        jmp   n01096_disjunction_af
.Lx01119_0:
                        .quad            .Lx01119_0_s
.Lx01119_0_s:
                        .string          "getword"
#-----------------------------------------------------------------------------------------------------------------------
n01110_goto_α:
                                                                                        jmp   n01046_var_α
n01110_goto_β:
                                                                                        jmp   n01046_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01112_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n01120_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n01113_disjunction_α:
                        mov              qword ptr [rbp + 3024], 0
                        mov              qword ptr [rbp + 3032], 0
                        mov              dword ptr [rbp + 3040], 0
                                                                                        jmp   n01121_var_α
n01113_disjunction_as:
                        mov              eax, dword ptr [rbp + 3040]
                        cmp              eax, 0
                                                                                        jne   .Lx01122_0
                                                                                        jmp   n01123_disjunction_α
.Lx01122_0:
                                                                                        jmp   n01123_disjunction_α
n01113_disjunction_β:
                        mov              eax, dword ptr [rbp + 3040]
                                                                                        jmp   n01123_disjunction_α
n01113_disjunction_af:
                        add              dword ptr [rbp + 3040], 1
                        mov              eax, dword ptr [rbp + 3040]
                                                                                        jmp   n01123_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01116_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx
                                                                                        jmp   n01124_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01117_var_α:
                        mov              rax, qword ptr [rbp + 6400]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 6408]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n01125_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01118_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx01126_0]
                        mov              rsi, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n01053_unmark_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n01127_binop_α
.Lx01126_0:
                        .quad            .Lx01126_0_s
.Lx01126_0_s:
                        .string          "begline"
#-----------------------------------------------------------------------------------------------------------------------
n01111_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n01128_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01120_iterate_α:
                        mov              qword ptr [rbp + 2160], 0
.Lx01129_0:
                        mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2160]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              rax, 99
                                                                                        je    n01086_disjunction_af
                                                                                        jmp   n01130_binop_test_α
n01120_iterate_β:
                        inc              qword ptr [rbp + 2160]
                                                                                        jmp   .Lx01129_0
#-----------------------------------------------------------------------------------------------------------------------
n01123_disjunction_α:
                        mov              qword ptr [rbp + 2960], 0
                        mov              qword ptr [rbp + 2968], 0
                        mov              dword ptr [rbp + 2976], 0
                                                                                        jmp   n01131_call_proc_staged_α
n01123_disjunction_as:
                        mov              eax, dword ptr [rbp + 2976]
                        cmp              eax, 0
                                                                                        jne   .Lx01132_0
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n01133_assign_α
.Lx01132_0:
                        cmp              eax, 1
                                                                                        jne   .Lx01132_1
                                                                                        jmp   n01133_assign_α
.Lx01132_1:
                                                                                        jmp   n01133_assign_α
n01123_disjunction_β:
                        mov              eax, dword ptr [rbp + 2976]
                        cmp              eax, 0
                                                                                        je    n01123_disjunction_af
                                                                                        jmp   n01123_disjunction_af
n01123_disjunction_af:
                        add              dword ptr [rbp + 2976], 1
                        mov              eax, dword ptr [rbp + 2976]
                        cmp              eax, 1
                                                                                        je    n01134_goto_α
                                                                                        jmp   n01135_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01121_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n01136_var_α
n01121_var_β:
                                                                                        jmp   n01113_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01124_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3680]
                        mov              rsi, qword ptr [rbp + 3688]
                        mov              rdx, qword ptr [rbp + 3728]
                        mov              rcx, qword ptr [rbp + 3736]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n01115_var_α
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx
                                                                                        jmp   n01115_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01125_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3608], rax
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3624], rax
                        .section         .rodata
.Lrkfn2144:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2144]
                        lea              rsi, [rbp + 3600]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        cmp              eax, 99
                                                                                        je    n00898_call_proc_staged_α
                                                                                        jmp   n00970_conjunction_α
n01125_call_builtin_icon_β:
                                                                                        jmp   n00898_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01127_binop_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n01137_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01128_lit_string_α:
                        mov              qword ptr [rbp + 1984], 1
                        mov              rax, qword ptr [rip + .Lx01138_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n01139_var_α
.Lx01138_0:
                        .quad            .Lx01138_0_s
.Lx01138_0_s:
                        .string          "global"
#-----------------------------------------------------------------------------------------------------------------------
n01130_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6432]
                        mov              rsi, qword ptr [rbp + 6440]
                        mov              rdx, qword ptr [rbp + 2144]
                        mov              rcx, qword ptr [rbp + 2152]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n01120_iterate_β
                        mov              rdi, qword ptr [rbp + 2144]
                        mov              rsi, qword ptr [rbp + 2152]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n01046_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01133_assign_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                                                                                        jmp   n01135_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01131_call_proc_staged_α:
                        call             proc_getword_dcα
                                                                                        jmp   .Lx01140_2
.Lx01140_2:
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    n01123_disjunction_af
                                                                                        jmp   n01123_disjunction_as
n01131_call_proc_staged_β:
                                                                                        jmp   n01123_disjunction_af
.Lx01140_0:
                        .quad            .Lx01140_0_s
.Lx01140_0_s:
                        .string          "getword"
#-----------------------------------------------------------------------------------------------------------------------
n01134_goto_α:
                                                                                        jmp   n01079_var_α
n01134_goto_β:
                                                                                        jmp   n01079_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01136_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                                                                                        jmp   n01141_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n01137_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              rax, qword ptr [rip + .Lx01142_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n01143_binop_α
.Lx01142_0:
                        .quad            .Lx01142_0_s
.Lx01142_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n01139_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n01144_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01135_var_α:
                        mov              rax, qword ptr [1879052480]
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   n01145_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01141_iterate_α:
                        mov              qword ptr [rbp + 3104], 0
.Lx01146_0:
                        mov              rdi, qword ptr [rbp + 3120]
                        mov              rsi, qword ptr [rbp + 3128]
                        mov              rdx, qword ptr [rbp + 3104]
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                        cmp              rax, 99
                                                                                        je    n01113_disjunction_af
                                                                                        jmp   n01147_binop_test_α
n01141_iterate_β:
                        inc              qword ptr [rbp + 3104]
                                                                                        jmp   .Lx01146_0
#-----------------------------------------------------------------------------------------------------------------------
n01143_binop_α:
                        mov              rdi, qword ptr [rbp + 432]
                        mov              rsi, qword ptr [rbp + 440]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n01148_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01144_call_proc_staged_α:
                        lea              rsi, [rbp + 1968]
                        lea              rdx, [rbp + 1984]
                        lea              rcx, [rbp + 2000]
                        call             proc_addword_dcα
                                                                                        jmp   .Lx01149_2
.Lx01149_2:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    n01044_call_proc_staged_α
                                                                                        jmp   n01150_conjunction_α
n01144_call_proc_staged_β:
                                                                                        jmp   n01044_call_proc_staged_α
.Lx01149_0:
                        .quad            .Lx01149_0_s
.Lx01149_0_s:
                        .string          "addword"
#-----------------------------------------------------------------------------------------------------------------------
n01145_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n01151_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01152_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n01153_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01147_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6432]
                        mov              rsi, qword ptr [rbp + 6440]
                        mov              rdx, qword ptr [rbp + 3088]
                        mov              rcx, qword ptr [rbp + 3096]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n01141_iterate_β
                        mov              rdi, qword ptr [rbp + 3088]
                        mov              rsi, qword ptr [rbp + 3096]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                                                                                        jmp   n01079_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01148_var_α:
                        mov              rax, qword ptr [rbp + 6400]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 6408]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n01154_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n01150_conjunction_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n01044_call_proc_staged_α
n01150_conjunction_β:
                                                                                        jmp   n01044_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01151_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2888], rax
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2904], rax
                        .section         .rodata
.Lrkfn2170:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2170]
                        lea              rsi, [rbp + 2880]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 99
                                                                                        je    n01152_var_α
                                                                                        jmp   n01152_var_α
n01151_call_builtin_icon_β:
                                                                                        jmp   n01152_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01153_var_α:
                        mov              rax, qword ptr [rbp + 6448]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 6456]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n01155_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01154_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx01156_0]
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             dat_field_get@PLT
                        cmp              eax, 99
                                                                                        je    n01053_unmark_α
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n01157_binop_α
.Lx01156_0:
                        .quad            .Lx01156_0_s
.Lx01156_0_s:
                        .string          "lastline"
#-----------------------------------------------------------------------------------------------------------------------
n01155_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx
                                                                                        jmp   n01158_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01157_binop_α:
                        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n01159_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01158_call_proc_staged_α:
                        lea              rsi, [rbp + 2816]
                        lea              rdx, [rbp + 2832]
                        lea              rcx, [rbp + 2848]
                        call             proc_addword_dcα
                                                                                        jmp   .Lx01160_2
.Lx01160_2:
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              eax, 99
                                                                                        je    n01077_call_proc_staged_α
                                                                                        jmp   n01161_conjunction_α
n01158_call_proc_staged_β:
                                                                                        jmp   n01077_call_proc_staged_α
.Lx01160_0:
                        .quad            .Lx01160_0_s
.Lx01160_0_s:
                        .string          "addword"
#-----------------------------------------------------------------------------------------------------------------------
n01159_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn2179:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2179]
                        lea              rsi, [rbp + 336]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n01053_unmark_α
                                                                                        jmp   n01053_unmark_α
n01159_call_builtin_icon_β:
                                                                                        jmp   n01053_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n01161_conjunction_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n01077_call_proc_staged_α
n01161_conjunction_β:
                                                                                        jmp   n01077_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 6512]
                        add              rsp, 6520
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 6512]
                        add              rsp, 6520
                        ret
                        .section         .note.GNU-stack,"",@progbits
