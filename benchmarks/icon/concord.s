                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_tabulate_α
proc_tabulate_α:
                        .global          proc_tabulate_α
                        .global          proc_tabulate_β
                        .global          proc_tabulate_γ
                        .global          proc_tabulate_ω
                        sub              rsp, 1408
                        mov              [rsp + 1384], rcx
                        mov              [rsp + 1392], rdx
                        mov              [rsp + 1400], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1328
                        mov              edx, 1376
                        call             rt_jmp_frame_lexprep2@PLT
proc_tabulate_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n1_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n1_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                        .section         .rodata
.Lrkfn72:               .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn72]
                        lea              rsi, [rbp + 1280]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n2_lit_string_α
                                                                                        jmp   n3_assign_α
n1_call_builtin_icon_β:
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx73_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n4_assign_α
.Lx73_0:
                        .quad            .Lx73_0_s
.Lx73_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                                                                                        jmp   n2_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n6_var_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n7_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n7_subscript_α:
                        mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              rdx, qword ptr [rbp + 1200]
                        mov              rcx, qword ptr [rbp + 1208]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    proc_tabulate_ω
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n8_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_deref_α:
                        mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    proc_tabulate_ω
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n9_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n9_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 1232]
                        mov              rsi, qword ptr [rbp + 1240]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n11_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_charset_α:
                        mov              qword ptr [rbp + 1024], 1
                        mov              dword ptr [rbp + 1028], -1
                        mov              rax, qword ptr [rip + .Lx86_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n13_scan_upto_α
.Lx86_0:
                        .quad            .Lx86_0_s
.Lx86_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n12_disjunction_α:
                        mov              qword ptr [rbp + 144], 0
                        mov              qword ptr [rbp + 152], 0
                        mov              dword ptr [rbp + 160], 0
                                                                                        jmp   n15_disjunction_α
n12_disjunction_as:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        jne   .Lx88_0
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n14_conjunction_α
.Lx88_0:
                        cmp              eax, 1
                                                                                        jne   .Lx88_1
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n14_conjunction_α
.Lx88_1:
                                                                                        jmp   n14_conjunction_α
n12_disjunction_β:
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 0
                                                                                        je    n32_scan_α
                                                                                        jmp   n32_scan_α
n12_disjunction_af:
                        add              dword ptr [rbp + 160], 1
                        mov              eax, dword ptr [rbp + 160]
                        cmp              eax, 1
                                                                                        je    n16_disjunction_α
                                                                                        jmp   n32_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n13_scan_upto_α:
                        mov              qword ptr [rbp + 1008], r14
.Lx90_0:
                        mov              rax, qword ptr [rbp + 1008]
                        cmp              rax, r15
                                                                                        jge   n12_disjunction_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx90_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx90_1
                        mov              qword ptr [rbp + 992], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n19_scan_tab_α
.Lx90_1:
                        inc              qword ptr [rbp + 1008]
                                                                                        jmp   .Lx90_0
n13_scan_upto_β:
                        inc              qword ptr [rbp + 1008]
                                                                                        jmp   .Lx90_0
.Lx90_2:
                        .quad            .Lx90_2_s
.Lx90_2_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n14_conjunction_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n20_scan_α
n14_conjunction_β:
                                                                                        jmp   n32_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n15_disjunction_α:
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              dword ptr [rbp + 336], 0
                                                                                        jmp   n22_var_α
n15_disjunction_as:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        jne   .Lx93_0
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n21_var_ref_α
.Lx93_0:
                        cmp              eax, 1
                                                                                        jne   .Lx93_1
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n21_var_ref_α
.Lx93_1:
                                                                                        jmp   n21_var_ref_α
n15_disjunction_β:
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0
                                                                                        je    n15_disjunction_af
                                                                                        jmp   n15_disjunction_af
n15_disjunction_af:
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 1
                                                                                        je    n23_var_α
                                                                                        jmp   n12_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n16_disjunction_α:
                        mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 680], 0
                        mov              dword ptr [rbp + 688], 0
                                                                                        jmp   n27_lit_string_α
n16_disjunction_as:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0
                                                                                        jne   .Lx95_0
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n26_var_ref_α
.Lx95_0:
                        cmp              eax, 1
                                                                                        jne   .Lx95_1
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n26_var_ref_α
.Lx95_1:
                                                                                        jmp   n26_var_ref_α
n16_disjunction_β:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0
                                                                                        je    n28_scan_upto_β
                                                                                        jmp   n26_var_ref_α
n16_disjunction_af:
                        add              dword ptr [rbp + 688], 1
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 1
                                                                                        je    n29_lit_integer_α
                                                                                        jmp   n26_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_var_α:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n32_scan_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n12_disjunction_as
n17_assign_var_β:
                                                                                        jmp   n32_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n18_conjunction_α:
                                                                                        jmp   n12_disjunction_as
n18_conjunction_β:
                                                                                        jmp   n32_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n19_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1000]
                        cmp              rax, 1
                                                                                        jge   .Lx99_0
                        add              rax, r15
                        add              rax, 1
.Lx99_0:
                        cmp              rax, 1
                                                                                        jge   .Lx99_239
                        add              rsp, 16
                                                                                        jmp   n13_scan_upto_β
.Lx99_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx99_240
                        add              rsp, 16
                                                                                        jmp   n13_scan_upto_β
.Lx99_240:
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
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n33_binop_α
n19_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n13_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n20_scan_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 64]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   proc_tabulate_ω
n20_scan_β:
                                                                                        jmp   proc_tabulate_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n24_unop_test_α
n22_var_β:
                                                                                        jmp   n15_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n35_var_α
n23_var_β:
                                                                                        jmp   n15_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n24_unop_test_α:
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 99
                                                                                        je    n15_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n15_disjunction_af
                        mov              qword ptr [rbp + 352], 0
                        mov              qword ptr [rbp + 360], 0
                                                                                        jmp   n15_disjunction_as
n24_unop_test_β:
                                                                                        jmp   n15_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n25_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n15_disjunction_af
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n15_disjunction_as
n25_binop_test_β:
                                                                                        jmp   n15_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052288
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n36_var_α
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx00001_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n37_scan_match_α
n27_lit_string_β:
                                                                                        jmp   n16_disjunction_af
.Lx00001_0:
                        .quad            .Lx00001_0_s
.Lx00001_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n28_scan_upto_α:
                        mov              qword ptr [rbp + 768], r14
.Lx00002_0:
                        mov              rax, qword ptr [rbp + 768]
                        cmp              rax, r15
                                                                                        jge   n26_var_ref_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00002_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00002_1
                        mov              qword ptr [rbp + 752], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n38_scan_tab_α
.Lx00002_1:
                        inc              qword ptr [rbp + 768]
                                                                                        jmp   .Lx00002_0
n28_scan_upto_β:
                        inc              qword ptr [rbp + 768]
                                                                                        jmp   .Lx00002_0
.Lx00002_2:
                        .quad            .Lx00002_2_s
.Lx00002_2_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:
                        mov              qword ptr [rbp + 896], 6
                        mov              rax, qword ptr [rip + .Lx00003_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n31_assign_α
n29_lit_integer_β:
                                                                                        jmp   n26_var_ref_α
.Lx00003_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n16_disjunction_as
n30_assign_β:
                                                                                        jmp   n26_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n16_disjunction_as
n31_assign_β:
                                                                                        jmp   n26_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n32_scan_α:
                        lea              rdi, [rbp + 64]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 64]
                        mov              r14, qword ptr [rbp + 72]
                        mov              r15, qword ptr [rbp + 80]
                                                                                        jmp   proc_tabulate_ω
n32_scan_β:
                                                                                        jmp   proc_tabulate_ω
#-----------------------------------------------------------------------------------------------------------------------
n33_binop_α:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 960]
                        mov              rcx, qword ptr [rbp + 968]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n39_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n40_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n25_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n41_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n37_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00004_239
                        add              rsp, 16
                                                                                        jmp   n16_disjunction_af
.Lx00004_239:
                        mov              rdi, qword ptr [rip + .Lx00004_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00004_240
                        add              rsp, 16
                                                                                        jmp   n16_disjunction_af
.Lx00004_240:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n42_scan_tab_α
.Lx00004_0:
                        .quad            .Lx00004_0_s
.Lx00004_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n38_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 760]
                        cmp              rax, 1
                                                                                        jge   .Lx00005_0
                        add              rax, r15
                        add              rax, 1
.Lx00005_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00005_239
                        add              rsp, 16
                                                                                        jmp   n28_scan_upto_β
.Lx00005_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00005_240
                        add              rsp, 16
                                                                                        jmp   n28_scan_upto_β
.Lx00005_240:
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
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n30_assign_α
n38_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n28_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n43_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n40_subscript_α:
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n32_scan_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n44_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n41_subscript_α:
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n32_scan_α
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n45_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 840]
                        cmp              rax, 1
                                                                                        jge   .Lx00006_0
                        add              rax, r15
                        add              rax, 1
.Lx00006_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00006_239
                        add              rsp, 16
                                                                                        jmp   n16_disjunction_af
.Lx00006_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00006_240
                        add              rsp, 16
                                                                                        jmp   n16_disjunction_af
.Lx00006_240:
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
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n46_lit_charset_α
n42_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n16_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_charset_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              dword ptr [rbp + 1172], -1
                        mov              rax, qword ptr [rip + .Lx00007_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n47_scan_many_α
.Lx00007_0:
                        .quad            .Lx00007_0_s
.Lx00007_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n44_deref_α:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n32_scan_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n48_var_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n49_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_charset_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              dword ptr [rbp + 788], -1
                        mov              rax, qword ptr [rip + .Lx00008_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n28_scan_upto_α
.Lx00008_0:
                        .quad            .Lx00008_0_s
.Lx00008_0_s:
                        .string          ")"
#-----------------------------------------------------------------------------------------------------------------------
n47_scan_many_α:
                        mov              eax, r14d
.Lx00009_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00009_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00009_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00009_1
                        add              eax, 1
                                                                                        jmp   .Lx00009_0
.Lx00009_1:
                        cmp              eax, r14d
                                                                                        je    n54_var_α
                        mov              qword ptr [rbp + 1152], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 1160], rcx
                                                                                        jmp   n50_scan_tab_α
n47_scan_many_β:
                                                                                        jmp   n54_var_α
.Lx00009_2:
                        .quad            .Lx00009_2_s
.Lx00009_2_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n51_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              rax, qword ptr [rip + .Lx00010_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n52_binop_α
.Lx00010_0:
                        .quad            .Lx00010_0_s
.Lx00010_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n50_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 1160]
                        cmp              rax, 1
                                                                                        jge   .Lx00011_0
                        add              rax, r15
                        add              rax, 1
.Lx00011_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00011_239
                        add              rsp, 16
                                                                                        jmp   n54_var_α
.Lx00011_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00011_240
                        add              rsp, 16
                                                                                        jmp   n54_var_α
.Lx00011_240:
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
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n53_assign_α
n50_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              rax, qword ptr [rip + .Lx00012_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n55_binop_α
.Lx00012_0:
                        .quad            .Lx00012_0_s
.Lx00012_0_s:
                        .string          ", "
#-----------------------------------------------------------------------------------------------------------------------
n52_binop_α:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 576]
                        mov              rcx, qword ptr [rbp + 584]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n56_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n57_var_α
#-----------------------------------------------------------------------------------------------------------------------
n55_binop_α:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n58_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n59_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n60_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n17_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx00013_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n61_op75_α
.Lx00013_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:
                        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1328]
                        mov              rcx, qword ptr [rbp + 1336]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n62_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n61_op75_α:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 7
                                                                                        je    .Lx00014_1
                        cmp              eax, 6
                                                                                        jne   .Lx00014_0
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 6
                                                                                        jne   .Lx00014_0
.Lx00014_1:
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n63_binop_α
.Lx00014_0:
                        lea              rdi, [rbp + 1360]
                        lea              rsi, [rbp + 640]
                        lea              rdx, [rbp + 608]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n63_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n64_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_α:
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 6
                                                                                        jne   .Lx00015_0
                        mov              rax, qword ptr [rbp + 616]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 592], 6
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n65_binop_α
.Lx00015_0:
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n32_scan_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n65_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n64_conjunction_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n10_var_α
n64_conjunction_β:
                                                                                        jmp   n10_var_α
#-----------------------------------------------------------------------------------------------------------------------
n65_binop_α:
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx00016_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n67_binop_α
.Lx00016_0:
                        .quad            .Lx00016_0_s
.Lx00016_0_s:
                        .string          "), "
#-----------------------------------------------------------------------------------------------------------------------
n67_binop_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n68_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_var_α:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n32_scan_α
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n18_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_tabulate_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_tabulate_β:
                                                                                        jmp   proc_tabulate_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_tabulate_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1384]
                        lea              rsp, [rbp + 1408]
                        mov              rbp, [rbp + 1400]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tabulate_ω:
                        mov              rax, [rbp + 1392]
                        lea              rsp, [rbp + 1408]
                        mov              rbp, [rbp + 1400]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_tabulate_dcα:
                        pop              r11
                        sub              rsp, 1424
                        mov              qword ptr [rsp + 1400], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1376], r11
                        lea              rax, [rip + .Lx00017_2]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rax, [rip + .Lx00017_3]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              rdi, rbp
                        mov              esi, 1328
                        mov              edx, 1376
                        mov              ecx, 2
                        mov              r8d, 2
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_tabulate_α_body
.Lx00017_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1408
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00017_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1408
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
                        sub              rsp, 912
                        mov              [rsp + 888], rcx
                        mov              [rsp + 896], rdx
                        mov              rdi, rsp
                        mov              esi, 864
                        mov              edx, 880
                        call             rt_jmp_frame_lexprep2@PLT
proc_format_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00018_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 184], rax
                                                                                        jmp   n00019_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00019_unop_α:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             rt_size_d@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                                                                                        jmp   n00020_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00021_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 104], rax
                                                                                        jmp   n00022_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00020_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                                                                                        jmp   n00023_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00022_lit_integer_α:
                        mov              qword ptr [rsp + 112], 6
                        mov              rax, qword ptr [rip + .Lx00024_0]
                        mov              qword ptr [rsp + 120], rax
                                                                                        jmp   n00025_lit_integer_α
.Lx00024_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00023_lit_integer_α:
                        mov              qword ptr [rsp + 240], 6
                        mov              rax, qword ptr [rip + .Lx00026_0]
                        mov              qword ptr [rsp + 248], rax
                                                                                        jmp   n00027_op75_α
.Lx00026_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00025_lit_integer_α:
                        mov              qword ptr [rsp + 128], 6
                        mov              rax, qword ptr [rip + .Lx00028_0]
                        mov              qword ptr [rsp + 136], rax
                                                                                        jmp   n00029_subscript_α
.Lx00028_0:
                        .quad            18446744073709551614
#-----------------------------------------------------------------------------------------------------------------------
n00027_op75_α:
                        mov              eax, dword ptr [rsp + 224]
                        cmp              eax, 7
                                                                                        je    .Lx00030_1
                        cmp              eax, 6
                                                                                        jne   .Lx00030_0
                        mov              eax, dword ptr [rsp + 240]
                        cmp              eax, 6
                                                                                        jne   .Lx00030_0
.Lx00030_1:
                        mov              rax, qword ptr [rsp + 224]
                        mov              qword ptr [rsp + 208], rax
                        mov              rax, qword ptr [rsp + 232]
                        mov              qword ptr [rsp + 216], rax
                                                                                        jmp   n00031_binop_α
.Lx00030_0:
                        lea              rdi, [rsp + 224]
                        lea              rsi, [rsp + 240]
                        lea              rdx, [rsp + 208]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00031_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00029_subscript_α:
                        mov              rdi, qword ptr [rsp + 96]
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 112]
                        mov              rcx, qword ptr [rsp + 120]
                        mov              r8, qword ptr [rsp + 128]
                        mov              r9, qword ptr [rsp + 136]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    proc_format_ω
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                                                                                        jmp   n00032_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00031_binop_α:
                        mov              eax, dword ptr [rsp + 208]
                        cmp              eax, 6
                                                                                        jne   .Lx00033_0
                        mov              rax, qword ptr [rsp + 216]
                        mov              rcx, 2
                        add              rax, rcx
                        mov              qword ptr [rsp + 192], 6
                        mov              qword ptr [rsp + 200], rax
                                                                                        jmp   n00034_binop_test_α
.Lx00033_0:
                        mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 240]
                        mov              rcx, qword ptr [rsp + 248]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00021_var_α
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                                                                                        jmp   n00034_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00032_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lrkfn230:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn230]
                        lea              rsi, [rsp + 48]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_format_ω
                                                                                        jmp   proc_format_ω
n00032_call_builtin_icon_β:
                                                                                        jmp   proc_format_ω
#-----------------------------------------------------------------------------------------------------------------------
n00034_binop_test_α:
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 100
                                                                                        je    .Lx00035_0
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 100
                                                                                        je    .Lx00035_0
                        mov              eax, dword ptr [rsp + 160]
                        cmp              eax, 6
                                                                                        jne   .Lx00035_2
                        mov              eax, dword ptr [rsp + 192]
                        cmp              eax, 6
                                                                                        jne   .Lx00035_2
.Lx00035_1:
                        mov              rax, qword ptr [rsp + 168]
                        mov              rcx, qword ptr [rsp + 200]
                        cmp              rax, rcx
                                                                                        jle   n00021_var_α
                        mov              rcx, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rcx
                        mov              rcx, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rcx
                                                                                        jmp   n00036_var_α
.Lx00035_0:
                        mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              r8d, 7
                        lea              r9, [rsp + 144]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00035_1
                        cmp              eax, 1
                                                                                        je    n00021_var_α
                                                                                        jmp   n00036_var_α
.Lx00035_2:
                        mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 192]
                        mov              rcx, qword ptr [rsp + 200]
                        mov              r8d, 7
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00021_var_α
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 152], rax
                                                                                        jmp   n00036_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00036_var_α:
                        mov              rax, qword ptr [1879052304]
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                                                                                        jmp   n00037_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00037_lit_integer_α:
                        mov              qword ptr [rsp + 848], 6
                        mov              rax, qword ptr [rip + .Lx00038_0]
                        mov              qword ptr [rsp + 856], rax
                                                                                        jmp   n00039_op75_α
.Lx00038_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00040_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                                                                                        jmp   n00041_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00039_op75_α:
                        mov              eax, dword ptr [rsp + 832]
                        cmp              eax, 7
                                                                                        je    .Lx00042_1
                        cmp              eax, 6
                                                                                        jne   .Lx00042_0
                        mov              eax, dword ptr [rsp + 848]
                        cmp              eax, 6
                                                                                        jne   .Lx00042_0
.Lx00042_1:
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 824], rax
                                                                                        jmp   n00043_binop_α
.Lx00042_0:
                        lea              rdi, [rsp + 832]
                        lea              rsi, [rsp + 848]
                        lea              rdx, [rsp + 816]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00043_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00041_var_α:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 712], rax
                                                                                        jmp   n00044_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00043_binop_α:
                        mov              eax, dword ptr [rsp + 816]
                        cmp              eax, 6
                                                                                        jne   .Lx00045_0
                        mov              rax, qword ptr [rsp + 824]
                        mov              rcx, 2
                        add              rax, rcx
                        mov              qword ptr [rsp + 800], 6
                        mov              qword ptr [rsp + 808], rax
                                                                                        jmp   n00046_assign_α
.Lx00045_0:
                        mov              rdi, qword ptr [rsp + 816]
                        mov              rsi, qword ptr [rsp + 824]
                        mov              rdx, qword ptr [rsp + 848]
                        mov              rcx, qword ptr [rsp + 856]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00040_var_ref_α
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                                                                                        jmp   n00046_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00044_lit_integer_α:
                        mov              qword ptr [rsp + 720], 6
                        mov              rax, qword ptr [rip + .Lx00047_0]
                        mov              qword ptr [rsp + 728], rax
                                                                                        jmp   n00048_op75_α
.Lx00047_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00046_assign_α:
                        mov              rax, qword ptr [rsp + 800]
                        mov              rdx, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                                                                                        jmp   n00040_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00048_op75_α:
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 7
                                                                                        je    .Lx00049_1
                        cmp              eax, 6
                                                                                        jne   .Lx00049_0
                        mov              eax, dword ptr [rsp + 720]
                        cmp              eax, 6
                                                                                        jne   .Lx00049_0
.Lx00049_1:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 696], rax
                                                                                        jmp   n00050_binop_α
.Lx00049_0:
                        lea              rdi, [rsp + 864]
                        lea              rsi, [rsp + 720]
                        lea              rdx, [rsp + 688]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00050_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00050_binop_α:
                        mov              eax, dword ptr [rsp + 688]
                        cmp              eax, 6
                                                                                        jne   .Lx00051_0
                        mov              rax, qword ptr [rsp + 696]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rsp + 672], 6
                        mov              qword ptr [rsp + 680], rax
                                                                                        jmp   n00052_assign_α
.Lx00051_0:
                        mov              rdi, qword ptr [rsp + 688]
                        mov              rsi, qword ptr [rsp + 696]
                        mov              rdx, qword ptr [rsp + 720]
                        mov              rcx, qword ptr [rsp + 728]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    n00040_var_ref_α
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx
                                                                                        jmp   n00052_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00052_assign_α:
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                                                                                        jmp   n00053_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00053_subscript_α:
                        mov              rdi, qword ptr [rsp + 640]
                        mov              rsi, qword ptr [rsp + 648]
                        mov              rdx, qword ptr [rsp + 656]
                        mov              rcx, qword ptr [rsp + 664]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00040_var_ref_α
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                                                                                        jmp   n00054_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00054_deref_α:
                        mov              rdi, qword ptr [rsp + 736]
                        mov              rsi, qword ptr [rsp + 744]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00040_var_ref_α
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                                                                                        jmp   n00055_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00055_lit_string_α:
                        mov              qword ptr [rsp + 768], 1
                        mov              rax, qword ptr [rip + .Lx00056_0]
                        mov              qword ptr [rsp + 776], rax
                                                                                        jmp   n00057_binop_test_α
.Lx00056_0:
                        .quad            .Lx00056_0_s
.Lx00056_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00057_binop_test_α:
                        mov              rdi, qword ptr [rsp + 752]
                        mov              rsi, qword ptr [rsp + 760]
                        mov              rdx, qword ptr [rsp + 768]
                        mov              rcx, qword ptr [rsp + 776]
                        mov              r8d, 16
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00040_var_ref_α
                        mov              rdi, qword ptr [rsp + 768]
                        mov              rsi, qword ptr [rsp + 776]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                                                                                        jmp   n00058_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00058_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 584], rax
                                                                                        jmp   n00059_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00059_lit_integer_α:
                        mov              qword ptr [rsp + 592], 6
                        mov              rax, qword ptr [rip + .Lx00060_0]
                        mov              qword ptr [rsp + 600], rax
                                                                                        jmp   n00061_var_α
.Lx00060_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00062_lit_string_α:
                        mov              qword ptr [rsp + 368], 1
                        mov              rax, qword ptr [rip + .Lx00063_0]
                        mov              qword ptr [rsp + 376], rax
                                                                                        jmp   n00064_var_α
.Lx00063_0:
                        .quad            .Lx00063_0_s
.Lx00063_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00061_var_α:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 616], rax
                                                                                        jmp   n00065_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00064_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                                                                                        jmp   n00066_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00065_subscript_α:
                        mov              rdi, qword ptr [rsp + 576]
                        mov              rsi, qword ptr [rsp + 584]
                        mov              rdx, qword ptr [rsp + 592]
                        mov              rcx, qword ptr [rsp + 600]
                        mov              r8, qword ptr [rsp + 608]
                        mov              r9, qword ptr [rsp + 616]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n00062_lit_string_α
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                                                                                        jmp   n00067_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00066_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        .section         .rodata
.Lrkfn260:              .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn260]
                        lea              rsi, [rsp + 320]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n00018_var_α
                                                                                        jmp   n00068_var_α
n00066_call_builtin_icon_β:
                                                                                        jmp   n00018_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00067_call_builtin_icon_α:
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        .section         .rodata
.Lrkfn262:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn262]
                        lea              rsi, [rsp + 528]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n00062_lit_string_α
                                                                                        jmp   n00062_lit_string_α
n00067_call_builtin_icon_β:
                                                                                        jmp   n00062_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00068_var_α:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 424], rax
                                                                                        jmp   n00069_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00069_var_α:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 472], rax
                                                                                        jmp   n00070_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00070_lit_integer_α:
                        mov              qword ptr [rsp + 480], 6
                        mov              rax, qword ptr [rip + .Lx00071_0]
                        mov              qword ptr [rsp + 488], rax
                                                                                        jmp   n00072_op75_α
.Lx00071_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00072_op75_α:
                        mov              eax, dword ptr [rsp + 864]
                        cmp              eax, 7
                                                                                        je    .Lx00073_1
                        cmp              eax, 6
                                                                                        jne   .Lx00073_0
                        mov              eax, dword ptr [rsp + 480]
                        cmp              eax, 6
                                                                                        jne   .Lx00073_0
.Lx00073_1:
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 456], rax
                                                                                        jmp   n00074_binop_α
.Lx00073_0:
                        lea              rdi, [rsp + 864]
                        lea              rsi, [rsp + 480]
                        lea              rdx, [rsp + 448]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00074_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00074_binop_α:
                        mov              eax, dword ptr [rsp + 448]
                        cmp              eax, 6
                                                                                        jne   .Lx00075_0
                        mov              rax, qword ptr [rsp + 456]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rsp + 432], 6
                        mov              qword ptr [rsp + 440], rax
                                                                                        jmp   n00076_lit_integer_α
.Lx00075_0:
                        mov              rdi, qword ptr [rsp + 448]
                        mov              rsi, qword ptr [rsp + 456]
                        mov              rdx, qword ptr [rsp + 480]
                        mov              rcx, qword ptr [rsp + 488]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00018_var_α
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                                                                                        jmp   n00076_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00076_lit_integer_α:
                        mov              qword ptr [rsp + 496], 6
                        mov              rax, qword ptr [rip + .Lx00077_0]
                        mov              qword ptr [rsp + 504], rax
                                                                                        jmp   n00078_subscript_α
.Lx00077_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00078_subscript_α:
                        mov              rdi, qword ptr [rsp + 416]
                        mov              rsi, qword ptr [rsp + 424]
                        mov              rdx, qword ptr [rsp + 432]
                        mov              rcx, qword ptr [rsp + 440]
                        mov              r8, qword ptr [rsp + 496]
                        mov              r9, qword ptr [rsp + 504]
                        call             subscript_get2@PLT
                        cmp              eax, 99
                                                                                        je    n00018_var_α
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                                                                                        jmp   n00079_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00079_binop_α:
                        mov              rdi, qword ptr [rsp + 304]
                        mov              rsi, qword ptr [rsp + 312]
                        mov              rdx, qword ptr [rsp + 400]
                        mov              rcx, qword ptr [rsp + 408]
                        call             str_concat_d@PLT
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                                                                                        jmp   n00080_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00080_assign_α:
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                                                                                        jmp   n00081_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00081_conjunction_α:
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 264], rax
                                                                                        jmp   n00018_var_α
n00081_conjunction_β:
                                                                                        jmp   n00018_var_α
#-----------------------------------------------------------------------------------------------------------------------
proc_format_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
proc_format_β:
                                                                                        jmp   proc_format_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_format_γ:
                        mov              rdi, [rsp]
                        mov              rsi, [rsp + 8]
                        mov              rax, [rsp + 888]
                        add              rsp, 912
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_format_ω:
                        mov              rax, [rsp + 896]
                        add              rsp, 912
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_format_dcα:
                        pop              r11
                        sub              rsp, 928
                        mov              qword ptr [rsp + 904], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 880], r11
                        lea              rax, [rip + .Lx00082_2]
                        mov              qword ptr [rsp + 888], rax
                        lea              rax, [rip + .Lx00082_3]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 864
                        mov              edx, 880
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_format_α_body
.Lx00082_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00082_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_item_α
proc_item_α:
                        .global          proc_item_α
                        .global          proc_item_β
                        .global          proc_item_γ
                        .global          proc_item_ω
                        sub              rsp, 864
                        mov              [rsp + 840], rcx
                        mov              [rsp + 848], rdx
                        mov              [rsp + 856], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 768
                        mov              edx, 832
                        call             rt_jmp_frame_lexprep2@PLT
proc_item_α_body:
                        lea              rax, [rip + n00083_suspend_β]
                        mov              qword ptr [rbp + 768], rax
#-----------------------------------------------------------------------------------------------------------------------
n00084_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn314:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn314]
                        lea              rsi, [rbp + 48]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_item_ω
                                                                                        jmp   n00085_assign_α
n00084_call_builtin_icon_β:
                                                                                        jmp   proc_item_ω
#-----------------------------------------------------------------------------------------------------------------------
n00085_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00086_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00086_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n00087_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00087_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx00088_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00089_op75_α
.Lx00088_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00090_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n00091_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00089_op75_α:
                        mov              eax, dword ptr [rbp + 736]
                        cmp              eax, 7
                                                                                        je    .Lx00092_1
                        cmp              eax, 6
                                                                                        jne   .Lx00092_0
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 6
                                                                                        jne   .Lx00092_0
.Lx00092_1:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n00093_binop_α
.Lx00092_0:
                        lea              rdi, [rbp + 736]
                        lea              rsi, [rbp + 752]
                        lea              rdx, [rbp + 720]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00093_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00091_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx00094_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00095_call_builtin_icon_α
.Lx00094_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n00096_var_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00097_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00093_binop_α:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 6
                                                                                        jne   .Lx00098_0
                        mov              rax, qword ptr [rbp + 728]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 704], 6
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n00099_assign_α
.Lx00098_0:
                        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00090_var_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n00099_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00095_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        .section         .rodata
.Lrkfn326:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn326]
                        lea              rsi, [rbp + 592]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n00096_var_α
                                                                                        jmp   n00100_lit_string_α
n00095_call_builtin_icon_β:
                                                                                        jmp   n00096_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00097_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn328:              .string          "map"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn328]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n00101_lit_integer_α
                                                                                        jmp   n00102_assign_α
n00097_call_builtin_icon_β:
                                                                                        jmp   n00101_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00101_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00103_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00104_assign_α
.Lx00103_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00099_assign_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n00090_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00100_lit_string_α:
                        mov              qword ptr [rbp + 672], 1
                        mov              rax, qword ptr [rip + .Lx00105_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00106_var_α
.Lx00105_0:
                        .quad            .Lx00105_0_s
.Lx00105_0_s:
                        .string          "  "
#-----------------------------------------------------------------------------------------------------------------------
n00102_assign_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00101_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00104_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00107_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00106_var_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n00108_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00107_var_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00109_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00108_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lrkfn339:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn339]
                        lea              rsi, [rbp + 512]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n00096_var_α
                                                                                        jmp   n00096_var_α
n00108_call_builtin_icon_β:
                                                                                        jmp   n00096_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00109_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00110_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00110_lit_charset_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              dword ptr [rbp + 196], -1
                        mov              rax, qword ptr [rip + .Lx00111_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00112_scan_upto_α
.Lx00111_0:
                        .quad            .Lx00111_0_s
.Lx00111_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00112_scan_upto_α:
                        mov              qword ptr [rbp + 176], r14
.Lx00113_0:
                        mov              rax, qword ptr [rbp + 176]
                        cmp              rax, r15
                                                                                        jge   n00114_scan_α
                        mov              rcx, rax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00113_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00113_1
                        mov              qword ptr [rbp + 160], 6
                        add              rax, 1
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00115_scan_tab_α
.Lx00113_1:
                        inc              qword ptr [rbp + 176]
                                                                                        jmp   .Lx00113_0
n00112_scan_upto_β:
                        inc              qword ptr [rbp + 176]
                                                                                        jmp   .Lx00113_0
.Lx00113_2:
                        .quad            .Lx00113_2_s
.Lx00113_2_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00115_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 168]
                        cmp              rax, 1
                                                                                        jge   .Lx00116_0
                        add              rax, r15
                        add              rax, 1
.Lx00116_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00116_239
                        add              rsp, 16
                                                                                        jmp   n00112_scan_upto_β
.Lx00116_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00116_240
                        add              rsp, 16
                                                                                        jmp   n00112_scan_upto_β
.Lx00116_240:
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
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n00117_lit_charset_α
n00115_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00112_scan_upto_β
#-----------------------------------------------------------------------------------------------------------------------
n00117_lit_charset_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              dword ptr [rbp + 388], -1
                        mov              rax, qword ptr [rip + .Lx00118_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00119_scan_many_α
.Lx00118_0:
                        .quad            .Lx00118_0_s
.Lx00118_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00119_scan_many_α:
                        mov              eax, r14d
.Lx00120_0:
                        cmp              eax, r15d
                                                                                        jge   .Lx00120_1
                        movsxd           rcx, eax
                        movzx            esi, byte ptr [r13+rcx]
                        mov              rdi, qword ptr [rip + .Lx00120_2]
                        push             rax
                        push             r10
                        call             strchr@PLT
                        pop              r10
                        test             rax, rax
                        pop              rax
                                                                                        je    .Lx00120_1
                        add              eax, 1
                                                                                        jmp   .Lx00120_0
.Lx00120_1:
                        cmp              eax, r14d
                                                                                        je    n00121_disjunction_α
                        mov              qword ptr [rbp + 368], 6
                        movsxd           rcx, eax
                        add              rcx, 1
                        mov              qword ptr [rbp + 376], rcx
                                                                                        jmp   n00122_scan_tab_α
n00119_scan_many_β:
                                                                                        jmp   n00121_disjunction_α
.Lx00120_2:
                        .quad            .Lx00120_2_s
.Lx00120_2_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00122_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 376]
                        cmp              rax, 1
                                                                                        jge   .Lx00123_0
                        add              rax, r15
                        add              rax, 1
.Lx00123_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00123_239
                        add              rsp, 16
                                                                                        jmp   n00121_disjunction_α
.Lx00123_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00123_240
                        add              rsp, 16
                                                                                        jmp   n00121_disjunction_α
.Lx00123_240:
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
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n00124_assign_α
n00122_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00121_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00124_assign_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n00121_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00121_disjunction_α:
                        mov              qword ptr [rbp + 224], 0
                        mov              qword ptr [rbp + 232], 0
                        mov              dword ptr [rbp + 240], 0
                                                                                        jmp   n00125_var_α
n00121_disjunction_as:
                        mov              eax, dword ptr [rbp + 240]
                        cmp              eax, 0
                                                                                        jne   .Lx00126_0
                                                                                        jmp   n00127_conjunction_α
.Lx00126_0:
                                                                                        jmp   n00127_conjunction_α
n00121_disjunction_β:
                        mov              eax, dword ptr [rbp + 240]
                                                                                        jmp   n00110_lit_charset_α
n00121_disjunction_af:
                        add              dword ptr [rbp + 240], 1
                        mov              eax, dword ptr [rbp + 240]
                                                                                        jmp   n00110_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00127_conjunction_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00110_lit_charset_α
n00127_conjunction_β:
                                                                                        jmp   n00110_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00125_var_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n00128_unop_α
n00125_var_β:
                                                                                        jmp   n00121_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00128_unop_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00129_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00129_lit_integer_α:
                        mov              qword ptr [rbp + 320], 6
                        mov              rax, qword ptr [rip + .Lx00130_0]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n00131_binop_test_α
.Lx00130_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00131_binop_test_α:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 100
                                                                                        je    .Lx00132_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 100
                                                                                        je    .Lx00132_0
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 6
                                                                                        jne   .Lx00132_2
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 6
                                                                                        jne   .Lx00132_2
.Lx00132_1:
                        mov              rax, qword ptr [rbp + 296]
                        mov              rcx, qword ptr [rbp + 328]
                        cmp              rax, rcx
                                                                                        jl    n00121_disjunction_af
                        mov              rcx, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rcx
                        mov              rcx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rcx
                                                                                        jmp   n00133_var_α
.Lx00132_0:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        mov              r8d, 8
                        lea              r9, [rbp + 272]
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00132_1
                        cmp              eax, 1
                                                                                        je    n00121_disjunction_af
                                                                                        jmp   n00133_var_α
.Lx00132_2:
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        mov              r8d, 8
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00121_disjunction_af
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00133_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00133_var_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00083_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n00083_suspend_α:
                        lea              rax, [rip + n00083_suspend_β]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 8], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                                                                                        jmp   proc_item_γ
n00083_suspend_β:
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                                                                                        jmp   n00121_disjunction_β
#-----------------------------------------------------------------------------------------------------------------------
n00114_scan_α:
                        lea              rdi, [rbp + 80]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 80]
                        mov              r14, qword ptr [rbp + 88]
                        mov              r15, qword ptr [rbp + 96]
                                                                                        jmp   n00084_call_builtin_icon_α
n00114_scan_β:
                                                                                        jmp   n00084_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
proc_item_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_item_β:
                                                                                        jmp   qword ptr [rbp + 768]
#-----------------------------------------------------------------------------------------------------------------------
proc_item_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_item_res]
                        push             rax
                        mov              rax, [rbp + 840]
                        mov              rbp, [rbp + 856]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_item_ω:
                        mov              rax, [rbp + 848]
                        lea              rsp, [rbp + 864]
                        mov              rbp, [rbp + 856]
                                                                                        jmp   rax
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
n00134_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n00135_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00135_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 99
                                                                                        je    n00136_call_builtin_icon_α
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              rsi, qword ptr [rbp + 2504]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00136_call_builtin_icon_α
                        cmp              eax, 0
                                                                                        jne   n00136_call_builtin_icon_α
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n00137_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00137_lit_charset_α:
                        mov              qword ptr [rbp + 2592], 1
                        mov              dword ptr [rbp + 2596], -1
                        mov              rax, qword ptr [rip + .Lx00138_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n00139_call_builtin_icon_α
.Lx00138_0:
                        .quad            .Lx00138_0_s
.Lx00138_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00136_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn478:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn478]
                        lea              rsi, [rbp + 2480]
                        mov              edx, 0
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 99
                                                                                        je    n00140_make_list_α
                                                                                        jmp   n00141_assign_α
n00136_call_builtin_icon_β:
                                                                                        jmp   n00140_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00139_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lrkfn480:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn480]
                        lea              rsi, [rbp + 2560]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    n00136_call_builtin_icon_α
                                                                                        jmp   n00142_assign_var_α
n00139_call_builtin_icon_β:
                                                                                        jmp   n00136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00141_assign_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n00140_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00140_make_list_α:
                        lea              rdi, [rbp + 2464]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n00143_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00142_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2512]
                        mov              rsi, qword ptr [rbp + 2520]
                        mov              rdx, qword ptr [rbp + 2544]
                        mov              rcx, qword ptr [rbp + 2552]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00136_call_builtin_icon_α
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n00136_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00143_assign_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n00144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00144_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00145_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00145_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn489:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn489]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n00146_var_α
                                                                                        jmp   n00147_assign_α
n00145_call_builtin_icon_β:
                                                                                        jmp   n00146_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00146_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00148_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00147_assign_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n00149_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00148_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00150_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00151_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00152_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00149_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n00153_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00150_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn500:              .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn500]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n00151_var_α
                                                                                        jmp   n00154_call_builtin_icon_α
n00150_call_builtin_icon_β:
                                                                                        jmp   n00151_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00152_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_options_γ
#-----------------------------------------------------------------------------------------------------------------------
n00153_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        mov              rdx, r13
                        mov              rcx, r14
                        mov              r8, r15
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00155_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00154_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn505:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn505]
                        lea              rsi, [rbp + 80]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    n00151_var_α
                                                                                        jmp   n00146_var_α
n00154_call_builtin_icon_β:
                                                                                        jmp   n00151_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00155_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n00156_lit_string_α
n00155_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx00157_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00158_scan_α
.Lx00157_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00157_1
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00158_scan_α
.Lx00157_1:
                                                                                        jmp   n00158_scan_α
n00155_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n00159_disjunction_β
                                                                                        jmp   n00160_scan_α
n00155_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n00161_var_α
                                                                                        jmp   n00160_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00158_scan_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00144_var_α
n00158_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n00155_disjunction_β
                                                                                        jmp   n00144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00156_lit_string_α:
                        mov              qword ptr [rbp + 2320], 1
                        mov              rax, qword ptr [rip + .Lx00162_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n00163_scan_match_α
n00156_lit_string_β:
                                                                                        jmp   n00155_disjunction_af
.Lx00162_0:
                        .quad            .Lx00162_0_s
.Lx00162_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00159_disjunction_α:
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0
                                                                                        jmp   n00164_var_α
n00159_disjunction_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        jne   .Lx00165_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00166_lit_integer_α
.Lx00165_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00165_1
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00166_lit_integer_α
.Lx00165_1:
                                                                                        jmp   n00166_lit_integer_α
n00159_disjunction_β:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        je    n00167_disjunction_β
                                                                                        jmp   n00166_lit_integer_α
n00159_disjunction_af:
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1
                                                                                        je    n00168_lit_string_α
                                                                                        jmp   n00166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00161_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n00169_var_α
n00161_var_β:
                                                                                        jmp   n00160_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00170_conjunction_α:
                                                                                        jmp   n00155_disjunction_as
n00170_conjunction_β:
                                                                                        jmp   n00160_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00171_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        .section         .rodata
.Lrkfn517:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn517]
                        lea              rsi, [rbp + 2352]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    n00160_scan_α
                                                                                        jmp   n00155_disjunction_as
n00171_call_builtin_icon_β:
                                                                                        jmp   n00160_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00163_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00172_239
                        add              rsp, 16
                                                                                        jmp   n00155_disjunction_af
.Lx00172_239:
                        mov              rdi, qword ptr [rip + .Lx00172_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00172_240
                        add              rsp, 16
                                                                                        jmp   n00155_disjunction_af
.Lx00172_240:
                        mov              qword ptr [rbp + 2288], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n00173_scan_tab_α
.Lx00172_0:
                        .quad            .Lx00172_0_s
.Lx00172_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00166_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx00174_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00175_scan_move_α
.Lx00174_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00164_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00176_var_α
n00164_var_β:
                                                                                        jmp   n00159_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00167_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n00177_lit_charset_α
n00167_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx00178_0
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00179_assign_var_α
.Lx00178_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00178_1
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00179_assign_var_α
.Lx00178_1:
                                                                                        jmp   n00179_assign_var_α
n00167_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n00166_lit_integer_α
                                                                                        jmp   n00166_lit_integer_α
n00167_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    n00180_lit_integer_α
                                                                                        jmp   n00166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00168_lit_string_α:
                        mov              qword ptr [rbp + 2000], 1
                        mov              rax, qword ptr [rip + .Lx00181_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n00182_var_α
n00168_lit_string_β:
                                                                                        jmp   n00166_lit_integer_α
.Lx00181_0:
                        .quad            .Lx00181_0_s
.Lx00181_0_s:
                        .string          "Unrecognized option: -"
#-----------------------------------------------------------------------------------------------------------------------
n00179_assign_var_α:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 560]
                        mov              rcx, qword ptr [rbp + 568]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00166_lit_integer_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00159_disjunction_as
n00179_assign_var_β:
                                                                                        jmp   n00166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00183_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1976], rax
                        .section         .rodata
.Lrkfn528:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn528]
                        lea              rsi, [rbp + 1952]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n00166_lit_integer_α
                                                                                        jmp   n00159_disjunction_as
n00183_call_builtin_icon_β:
                                                                                        jmp   n00166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00169_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n00171_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00160_scan_α:
                        lea              rdi, [rbp + 304]
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00144_var_α
n00160_scan_β:
                                                                                        jmp   n00144_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00173_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2296]
                        cmp              rax, 1
                                                                                        jge   .Lx00184_0
                        add              rax, r15
                        add              rax, 1
.Lx00184_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00184_239
                        add              rsp, 16
                                                                                        jmp   n00155_disjunction_af
.Lx00184_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00184_240
                        add              rsp, 16
                                                                                        jmp   n00155_disjunction_af
.Lx00184_240:
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
                                                                                        jmp   n00185_lit_integer_α
n00173_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00155_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00175_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx00186_239
                        add              rsp, 16
                                                                                        jmp   n00160_scan_α
.Lx00186_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00186_240
                        add              rsp, 16
                                                                                        jmp   n00160_scan_α
.Lx00186_240:
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
                                                                                        jmp   n00187_assign_α
n00175_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00160_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00176_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n00188_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00177_lit_charset_α:
                        mov              qword ptr [rbp + 1680], 1
                        mov              dword ptr [rbp + 1684], -1
                        mov              rax, qword ptr [rip + .Lx00189_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n00190_var_ref_α
n00177_lit_charset_β:
                                                                                        jmp   n00167_disjunction_af
.Lx00189_0:
                        .quad            .Lx00189_0_s
.Lx00189_0_s:
                        .string          "+.:"
#-----------------------------------------------------------------------------------------------------------------------
n00180_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 6
                        mov              rax, qword ptr [rip + .Lx00191_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n00167_disjunction_as
n00180_lit_integer_β:
                                                                                        jmp   n00166_lit_integer_α
.Lx00191_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00192_conjunction_α:
                                                                                        jmp   n00167_disjunction_as
n00192_conjunction_β:
                                                                                        jmp   n00166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00182_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n00183_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00185_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 6
                        mov              rax, qword ptr [rip + .Lx00193_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n00194_scan_pos_α
.Lx00193_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00187_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n00159_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00188_call_builtin_gen_α:
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
.Lx00195_60:
                        .section         .rodata
.Lbynamegenfn196:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn196]
                        lea              rsi, [rbp + 1840]
                        mov              edx, 2
                        lea              rcx, [rbp + 1872]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 99
                                                                                        je    n00159_disjunction_af
                                                                                        jmp   n00196_lit_integer_α
n00188_call_builtin_gen_β:
                                                                                        jmp   .Lx00195_60
#-----------------------------------------------------------------------------------------------------------------------
n00190_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n00197_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00194_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00198_0
                        add              rax, r15
                        add              rax, 1
.Lx00198_0:
                        cmp              rax, 1
                                                                                        jl    n00199_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00199_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00199_var_α
                        mov              qword ptr [rbp + 2224], 6
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n00173_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00196_lit_integer_α:
                        mov              qword ptr [rbp + 1920], 6
                        mov              rax, qword ptr [rip + .Lx00200_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n00201_op75_α
.Lx00200_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00197_var_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n00202_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00199_var_α:
                        mov              qword ptr [rbp + 2208], 0
                        mov              qword ptr [rbp + 2216], 0
                                                                                        jmp   n00203_conjunction_α
n00199_var_β:
                                                                                        jmp   n00173_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00201_op75_α:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 7
                                                                                        je    .Lx00204_1
                        cmp              eax, 6
                                                                                        jne   .Lx00204_0
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 6
                                                                                        jne   .Lx00204_0
.Lx00204_1:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n00205_binop_α
.Lx00204_0:
                        lea              rdi, [rbp + 1824]
                        lea              rsi, [rbp + 1920]
                        lea              rdx, [rbp + 1808]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00205_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00202_subscript_α:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              rdx, qword ptr [rbp + 1728]
                        mov              rcx, qword ptr [rbp + 1736]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00167_disjunction_af
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00206_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00203_conjunction_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n00207_disjunction_α
n00203_conjunction_β:
                                                                                        jmp   n00155_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00205_binop_α:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 6
                                                                                        jne   .Lx00208_0
                        mov              rax, qword ptr [rbp + 1816]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1792], 6
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00209_assign_α
.Lx00208_0:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        call             rt_add@PLT
                        cmp              eax, 99
                                                                                        je    n00159_disjunction_af
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n00209_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00206_deref_α:
                        mov              rdi, qword ptr [rbp + 1744]
                        mov              rsi, qword ptr [rbp + 1752]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00167_disjunction_af
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n00210_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00207_disjunction_α:
                        mov              qword ptr [rbp + 2032], 0
                        mov              qword ptr [rbp + 2040], 0
                        mov              dword ptr [rbp + 2048], 0
                                                                                        jmp   n00211_lit_string_α
n00207_disjunction_as:
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 0
                                                                                        jne   .Lx00212_0
                                                                                        jmp   n00166_lit_integer_α
.Lx00212_0:
                                                                                        jmp   n00166_lit_integer_α
n00207_disjunction_β:
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00166_lit_integer_α
n00207_disjunction_af:
                        add              dword ptr [rbp + 2048], 1
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00209_assign_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n00213_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00210_assign_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n00214_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00211_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              rax, qword ptr [rip + .Lx00215_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n00216_scan_match_α
n00211_lit_string_β:
                                                                                        jmp   n00207_disjunction_af
.Lx00215_0:
                        .quad            .Lx00215_0_s
.Lx00215_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00213_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n00217_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00214_call_builtin_icon_α:
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
.Lbynamefn212:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn212]
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
                                                                                        je    n00167_disjunction_af
                                                                                        jmp   n00218_disjunction_α
n00214_call_builtin_icon_β:
                                                                                        jmp   n00167_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00216_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00219_239
                        add              rsp, 16
                                                                                        jmp   n00207_disjunction_af
.Lx00219_239:
                        mov              rdi, qword ptr [rip + .Lx00219_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00219_240
                        add              rsp, 16
                                                                                        jmp   n00207_disjunction_af
.Lx00219_240:
                        mov              qword ptr [rbp + 2144], 6
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n00220_scan_tab_α
.Lx00219_0:
                        .quad            .Lx00219_0_s
.Lx00219_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00217_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00221_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00218_disjunction_α:
                        mov              qword ptr [rbp + 1344], 0
                        mov              qword ptr [rbp + 1352], 0
                        mov              dword ptr [rbp + 1360], 0
                                                                                        jmp   n00222_lit_string_α
n00218_disjunction_as:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        jne   .Lx00223_0
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00224_assign_α
.Lx00223_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00223_1
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00224_assign_α
.Lx00223_1:
                        cmp              eax, 2
                                                                                        jne   .Lx00223_2
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00224_assign_α
.Lx00223_2:
                                                                                        jmp   n00224_assign_α
n00218_disjunction_β:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        je    n00218_disjunction_af
                        cmp              eax, 1
                                                                                        je    n00218_disjunction_af
                                                                                        jmp   n00218_disjunction_af
n00218_disjunction_af:
                        add              dword ptr [rbp + 1360], 1
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 1
                                                                                        je    n00225_var_α
                        cmp              eax, 2
                                                                                        je    n00226_lit_string_α
                                                                                        jmp   n00227_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00220_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2152]
                        cmp              rax, 1
                                                                                        jge   .Lx00228_0
                        add              rax, r15
                        add              rax, 1
.Lx00228_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00228_239
                        add              rsp, 16
                                                                                        jmp   n00207_disjunction_af
.Lx00228_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00228_240
                        add              rsp, 16
                                                                                        jmp   n00207_disjunction_af
.Lx00228_240:
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
                                                                                        jmp   n00229_lit_integer_α
n00220_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00207_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00221_subscript_α:
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00166_lit_integer_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n00167_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00224_assign_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n00227_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00222_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              rax, qword ptr [rip + .Lx00230_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n00231_lit_integer_α
n00222_lit_string_β:
                                                                                        jmp   n00218_disjunction_af
.Lx00230_0:
                        .quad            .Lx00230_0_s
.Lx00230_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00225_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n00232_call_builtin_icon_α
n00225_var_β:
                                                                                        jmp   n00218_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00226_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx00233_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n00234_var_α
n00226_lit_string_β:
                                                                                        jmp   n00218_disjunction_af
.Lx00233_0:
                        .quad            .Lx00233_0_s
.Lx00233_0_s:
                        .string          "No parameter following -"
#-----------------------------------------------------------------------------------------------------------------------
n00235_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        mov              r8d, 17
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00218_disjunction_af
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n00218_disjunction_as
n00235_binop_test_β:
                                                                                        jmp   n00218_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00232_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn585:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn585]
                        lea              rsi, [rbp + 1472]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 99
                                                                                        je    n00218_disjunction_af
                                                                                        jmp   n00218_disjunction_as
n00232_call_builtin_icon_β:
                                                                                        jmp   n00218_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00236_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1560], rax
                        .section         .rodata
.Lrkfn587:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn587]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 99
                                                                                        je    n00218_disjunction_af
                                                                                        jmp   n00218_disjunction_as
n00236_call_builtin_icon_β:
                                                                                        jmp   n00218_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00229_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 6
                        mov              rax, qword ptr [rip + .Lx00237_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n00238_scan_pos_α
.Lx00237_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00227_var_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00239_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00231_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 6
                        mov              rax, qword ptr [rip + .Lx00240_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n00241_scan_tab_α
.Lx00240_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00234_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n00236_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00238_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00242_0
                        add              rax, r15
                        add              rax, 1
.Lx00242_0:
                        cmp              rax, 1
                                                                                        jl    n00220_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00220_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00220_scan_tab_β
                        mov              qword ptr [rbp + 2080], 6
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n00243_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00239_lit_string_α:
                        mov              qword ptr [rbp + 1248], 1
                        mov              rax, qword ptr [rip + .Lx00244_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n00245_call_builtin_α
.Lx00244_0:
                        .quad            .Lx00244_0_s
.Lx00244_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n00241_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00246_0
                        add              rax, r15
                        add              rax, 1
.Lx00246_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00246_239
                        add              rsp, 16
                                                                                        jmp   n00218_disjunction_af
.Lx00246_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00246_240
                        add              rsp, 16
                                                                                        jmp   n00218_disjunction_af
.Lx00246_240:
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
                                                                                        jmp   n00235_binop_test_α
n00241_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00218_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00243_conjunction_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n00146_var_α
n00243_conjunction_β:
                                                                                        jmp   n00207_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00245_call_builtin_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lrkfn601:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn601]
                        lea              rsi, [rbp + 1296]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n00247_lit_string_α
                                                                                        jmp   n00248_var_α
n00245_call_builtin_β:
                                                                                        jmp   n00247_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00248_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00249_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00247_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx00250_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n00251_call_builtin_α
.Lx00250_0:
                        .quad            .Lx00250_0_s
.Lx00250_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n00249_assign_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00252_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00251_call_builtin_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lrkfn607:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn607]
                        lea              rsi, [rbp + 1200]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n00253_lit_string_α
                                                                                        jmp   n00254_disjunction_α
n00251_call_builtin_β:
                                                                                        jmp   n00253_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00252_var_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00192_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00254_disjunction_α:
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              dword ptr [rbp + 976], 0
                                                                                        jmp   n00255_var_α
n00254_disjunction_as:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        jne   .Lx00256_0
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00257_assign_α
.Lx00256_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00256_1
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00257_assign_α
.Lx00256_1:
                                                                                        jmp   n00257_assign_α
n00254_disjunction_β:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        je    n00254_disjunction_af
                                                                                        jmp   n00254_disjunction_af
n00254_disjunction_af:
                        add              dword ptr [rbp + 976], 1
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 1
                                                                                        je    n00258_lit_string_α
                                                                                        jmp   n00166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00253_lit_string_α:
                        mov              qword ptr [rbp + 640], 1
                        mov              rax, qword ptr [rip + .Lx00259_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00260_call_builtin_α
.Lx00259_0:
                        .quad            .Lx00259_0_s
.Lx00259_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n00257_assign_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00252_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00255_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n00261_call_builtin_icon_α
n00255_var_β:
                                                                                        jmp   n00254_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00258_lit_string_α:
                        mov              qword ptr [rbp + 1136], 1
                        mov              rax, qword ptr [rip + .Lx00262_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00263_var_α
n00258_lit_string_β:
                                                                                        jmp   n00254_disjunction_af
.Lx00262_0:
                        .quad            .Lx00262_0_s
.Lx00262_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00261_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn618:              .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn618]
                        lea              rsi, [rbp + 1008]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n00254_disjunction_af
                                                                                        jmp   n00254_disjunction_as
n00261_call_builtin_icon_β:
                                                                                        jmp   n00254_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00264_call_builtin_icon_α:
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
.Lrkfn620:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn620]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n00254_disjunction_af
                                                                                        jmp   n00254_disjunction_as
n00264_call_builtin_icon_β:
                                                                                        jmp   n00254_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00260_call_builtin_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 920], rax
                        .section         .rodata
.Lrkfn622:              .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn622]
                        lea              rsi, [rbp + 896]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n00166_lit_integer_α
                                                                                        jmp   n00265_disjunction_α
n00260_call_builtin_β:
                                                                                        jmp   n00166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00263_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00266_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00265_disjunction_α:
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              dword ptr [rbp + 672], 0
                                                                                        jmp   n00267_var_α
n00265_disjunction_as:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        jne   .Lx00268_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00269_assign_α
.Lx00268_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00268_1
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00269_assign_α
.Lx00268_1:
                                                                                        jmp   n00269_assign_α
n00265_disjunction_β:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        je    n00265_disjunction_af
                                                                                        jmp   n00265_disjunction_af
n00265_disjunction_af:
                        add              dword ptr [rbp + 672], 1
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 1
                                                                                        je    n00270_lit_string_α
                                                                                        jmp   n00166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00266_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              rax, qword ptr [rip + .Lx00271_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00264_call_builtin_icon_α
.Lx00271_0:
                        .quad            .Lx00271_0_s
.Lx00271_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00269_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00252_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00267_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00272_call_builtin_icon_α
n00267_var_β:
                                                                                        jmp   n00265_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00270_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx00273_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00274_var_α
n00270_lit_string_β:
                                                                                        jmp   n00265_disjunction_af
.Lx00273_0:
                        .quad            .Lx00273_0_s
.Lx00273_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00272_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn633:              .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn633]
                        lea              rsi, [rbp + 704]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n00265_disjunction_af
                                                                                        jmp   n00265_disjunction_as
n00272_call_builtin_icon_β:
                                                                                        jmp   n00265_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00275_call_builtin_icon_α:
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
.Lrkfn635:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn635]
                        lea              rsi, [rbp + 768]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n00265_disjunction_af
                                                                                        jmp   n00265_disjunction_as
n00275_call_builtin_icon_β:
                                                                                        jmp   n00265_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00274_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00276_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00276_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx00277_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00275_call_builtin_icon_α
.Lx00277_0:
                        .quad            .Lx00277_0_s
.Lx00277_0_s:
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
                        lea              rax, [rip + .Lx00278_2]
                        mov              qword ptr [rbp + 2744], rax
                        lea              rax, [rip + .Lx00278_3]
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
.Lx00278_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -2768
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00278_3:
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
n00279_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00280_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00280_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [1879052384], rax
                        mov              qword ptr [1879052392], rdx
                                                                                        jmp   n00281_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00281_call_proc_staged_α:
                        call             proc_Signature___dcα
                                                                                        jmp   .Lx00282_2
.Lx00282_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n00283_call_proc_staged_α
                                                                                        jmp   n00283_call_proc_staged_α
n00281_call_proc_staged_β:
                                                                                        jmp   n00283_call_proc_staged_α
.Lx00282_0:
                        .quad            .Lx00282_0_s
.Lx00282_0_s:
                        .string          "Signature__"
#-----------------------------------------------------------------------------------------------------------------------
n00283_call_proc_staged_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00284_2
.Lx00284_2:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n00285_call_proc_staged_α
                                                                                        jmp   n00285_call_proc_staged_α
n00283_call_proc_staged_β:
                                                                                        jmp   n00285_call_proc_staged_α
.Lx00284_0:
                        .quad            .Lx00284_0_s
.Lx00284_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00285_call_proc_staged_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00286_2
.Lx00286_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00287_disjunction_α
                                                                                        jmp   n00287_disjunction_α
n00285_call_proc_staged_β:
                                                                                        jmp   n00287_disjunction_α
.Lx00286_0:
                        .quad            .Lx00286_0_s
.Lx00286_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00287_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n00288_lit_string_α
n00287_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00289_0
                                                                                        jmp   n00290_var_α
.Lx00289_0:
                                                                                        jmp   n00290_var_α
n00287_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00290_var_α
n00287_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00290_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00290_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx00291_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx00291_240
                        add              rsp, 16
                                                                                        jmp   n00292_var_α
.Lx00291_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n00293_assign_α
.Lx00291_0:
                        .quad            .Lx00291_0_s
.Lx00291_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00288_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx00294_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00295_call_builtin_icon_α
n00288_lit_string_β:
                                                                                        jmp   n00287_disjunction_af
.Lx00294_0:
                        .quad            .Lx00294_0_s
.Lx00294_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00296_conjunction_α:
                                                                                        jmp   n00287_disjunction_as
n00296_conjunction_β:
                                                                                        jmp   n00290_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00293_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052352], rax
                        mov              qword ptr [1879052360], rdx
                                                                                        jmp   n00292_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00292_var_α:
                        sub              rsp, 16
                        mov              rdi, qword ptr [rip + .Lx00297_0]
                        call             NV_GET_fn@PLT
                        cmp              eax, 99
                                                                                        jne   .Lx00297_240
                        add              rsp, 16
                                                                                        jmp   n00298_lit_integer_α
.Lx00297_240:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                                                                                        jmp   n00299_assign_α
.Lx00297_0:
                        .quad            .Lx00297_0_s
.Lx00297_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00295_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn677:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn677]
                        lea              rsi, [rbp + 240]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n00287_disjunction_af
                                                                                        jmp   n00300_lit_string_α
n00295_call_builtin_icon_β:
                                                                                        jmp   n00287_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00299_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052368], rax
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n00298_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00298_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00301_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00302_assign_α
.Lx00301_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00300_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx00303_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00304_call_builtin_icon_α
.Lx00303_0:
                        .quad            .Lx00303_0_s
.Lx00303_0_s:
                        .string          "*** Benchmarking with output ***"
#-----------------------------------------------------------------------------------------------------------------------
n00302_assign_α:
                        mov              rsi, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        mov              rdi, qword ptr [rip + .Lx00305_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n00306_assign_α
.Lx00305_0:
                        .quad            .Lx00305_0_s
.Lx00305_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00304_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn683:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn683]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00307_return_α
                                                                                        jmp   n00307_return_α
n00304_call_builtin_icon_β:
                                                                                        jmp   n00307_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00306_assign_α:
                        mov              rsi, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              rdi, qword ptr [rip + .Lx00308_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00309_return_α
.Lx00308_0:
                        .quad            .Lx00308_0_s
.Lx00308_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00307_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Init___γ
#-----------------------------------------------------------------------------------------------------------------------
n00309_return_α:
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
                        lea              rax, [rip + .Lx00310_2]
                        mov              qword ptr [rbp + 440], rax
                        lea              rax, [rip + .Lx00310_3]
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
.Lx00310_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -464
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00310_3:
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
n00311_disjunction_α:
                        mov              qword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], 0
                        mov              dword ptr [rbp + 272], 0
                                                                                        jmp   n00312_lit_string_α
n00311_disjunction_as:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 0
                                                                                        jne   .Lx00313_0
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00314_var_α
.Lx00313_0:
                                                                                        jmp   n00314_var_α
n00311_disjunction_β:
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   n00314_var_α
n00311_disjunction_af:
                        add              dword ptr [rbp + 272], 1
                        mov              eax, dword ptr [rbp + 272]
                                                                                        jmp   n00314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00314_var_α:
                        mov              rax, qword ptr [1879052384]
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00315_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00312_lit_string_α:
                        mov              qword ptr [rbp + 432], 1
                        mov              rax, qword ptr [rip + .Lx00316_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00317_call_builtin_icon_α
n00312_lit_string_β:
                                                                                        jmp   n00318_var_α
.Lx00316_0:
                        .quad            .Lx00316_0_s
.Lx00316_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00319_conjunction_α:
                                                                                        jmp   n00311_disjunction_as
n00319_conjunction_β:
                                                                                        jmp   n00314_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00315_lit_string_α:
                        mov              qword ptr [rbp + 208], 1
                        mov              rax, qword ptr [rip + .Lx00320_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00321_call_proc_staged_α
.Lx00320_0:
                        .quad            .Lx00320_0_s
.Lx00320_0_s:
                        .string          " elapsed time = "
#-----------------------------------------------------------------------------------------------------------------------
n00322_call_proc_staged_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00323_2
.Lx00323_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n00324_call_proc_staged_α
                                                                                        jmp   n00324_call_proc_staged_α
n00322_call_proc_staged_β:
                                                                                        jmp   n00324_call_proc_staged_α
.Lx00323_0:
                        .quad            .Lx00323_0_s
.Lx00323_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00317_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn714:              .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn714]
                        lea              rsi, [rbp + 400]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n00318_var_α
                                                                                        jmp   n00311_disjunction_af
n00317_call_builtin_icon_β:
                                                                                        jmp   n00318_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00321_call_proc_staged_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00325_2
.Lx00325_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n00322_call_proc_staged_α
                                                                                        jmp   n00326_call_builtin_icon_α
n00321_call_proc_staged_β:
                                                                                        jmp   n00322_call_proc_staged_α
.Lx00325_0:
                        .quad            .Lx00325_0_s
.Lx00325_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00324_call_proc_staged_α:
                        call             proc_Storage___dcα
                                                                                        jmp   .Lx00327_2
.Lx00327_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    n00328_call_proc_staged_α
                                                                                        jmp   n00328_call_proc_staged_α
n00324_call_proc_staged_β:
                                                                                        jmp   n00328_call_proc_staged_α
.Lx00327_0:
                        .quad            .Lx00327_0_s
.Lx00327_0_s:
                        .string          "Storage__"
#-----------------------------------------------------------------------------------------------------------------------
n00318_var_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                                                                                        jmp   n00329_var_α
n00318_var_β:
                                                                                        jmp   n00311_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00326_call_builtin_icon_α:
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
.Lrkfn721:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn721]
                        lea              rsi, [rbp + 128]
                        mov              edx, 3
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n00322_call_proc_staged_α
                                                                                        jmp   n00322_call_proc_staged_α
n00326_call_builtin_icon_β:
                                                                                        jmp   n00322_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00328_call_proc_staged_α:
                        call             proc_Collections___dcα
                                                                                        jmp   .Lx00330_2
.Lx00330_2:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n00331_return_α
                                                                                        jmp   n00331_return_α
n00328_call_proc_staged_β:
                                                                                        jmp   n00331_return_α
.Lx00330_0:
                        .quad            .Lx00330_0_s
.Lx00330_0_s:
                        .string          "Collections__"
#-----------------------------------------------------------------------------------------------------------------------
n00329_var_α:
                        mov              rax, qword ptr [1879052352]
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00332_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00331_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Term___γ
#-----------------------------------------------------------------------------------------------------------------------
n00332_assign_α:
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              rdi, qword ptr [rip + .Lx00333_0]
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00334_var_α
.Lx00333_0:
                        .quad            .Lx00333_0_s
.Lx00333_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00334_var_α:
                        mov              rax, qword ptr [1879052368]
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n00335_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00335_assign_α:
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              rdi, qword ptr [rip + .Lx00336_0]
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n00319_conjunction_α
.Lx00336_0:
                        .quad            .Lx00336_0_s
.Lx00336_0_s:
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
                        lea              rax, [rip + .Lx00337_2]
                        mov              qword ptr [rbp + 488], rax
                        lea              rax, [rip + .Lx00337_3]
                        mov              qword ptr [rbp + 496], rax
                        mov              rdi, rbp
                        mov              esi, 448
                        mov              edx, 480
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Term___α_body
.Lx00337_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -512
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00337_3:
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
n00338_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00339_var_ref_α
n00338_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00340_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00341_make_list_α
.Lx00340_0:
                                                                                        jmp   n00341_make_list_α
n00338_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00341_make_list_α
n00338_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00341_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00341_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00342_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00339_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052416
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00343_nulltest_var_α
n00339_var_ref_β:
                                                                                        jmp   n00338_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00344_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052400], rax
                        mov              qword ptr [1879052408], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00338_disjunction_as
n00344_assign_β:
                                                                                        jmp   n00341_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00342_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n00345_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00343_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 99
                                                                                        je    n00338_disjunction_af
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00338_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00338_disjunction_af
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00346_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00345_var_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00347_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00346_lit_integer_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx00348_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00349_assign_var_α
.Lx00348_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00347_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00350_1:
                        mov              rdi, qword ptr [rip + .Lx00350_0]
                        mov              rsi, qword ptr [rbp + 592]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00351_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00352_call_builtin_icon_α
n00347_keyword_icon_gen_β:
                                                                                        jmp   .Lx00350_1
.Lx00350_0:
                        .quad            .Lx00350_0_s
.Lx00350_0_s:
                        .string          "&collections"
#-----------------------------------------------------------------------------------------------------------------------
n00351_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx00353_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00354_call_builtin_icon_α
.Lx00353_0:
                        .quad            .Lx00353_0_s
.Lx00353_0_s:
                        .string          "collections"
#-----------------------------------------------------------------------------------------------------------------------
n00349_assign_var_α:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00338_disjunction_af
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00355_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00352_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn783:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn783]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n00347_keyword_icon_gen_β
                                                                                        jmp   n00347_keyword_icon_gen_β
n00352_call_builtin_icon_β:
                                                                                        jmp   n00347_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00354_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn785:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn785]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n00356_lit_integer_α
                                                                                        jmp   n00356_lit_integer_α
n00354_call_builtin_icon_β:
                                                                                        jmp   n00356_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00355_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx00357_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00358_lit_string_α
.Lx00357_0:
                        .quad            .Lx00357_0_s
.Lx00357_0_s:
                        .string          "total"
#-----------------------------------------------------------------------------------------------------------------------
n00356_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00359_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00360_var_α
.Lx00359_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00358_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx00361_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00362_lit_string_α
.Lx00361_0:
                        .quad            .Lx00361_0_s
.Lx00361_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00360_var_α:
                        mov              rax, qword ptr [1879052400]
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00363_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00362_lit_string_α:
                        mov              qword ptr [rbp + 784], 1
                        mov              rax, qword ptr [rip + .Lx00364_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00365_lit_string_α
.Lx00364_0:
                        .quad            .Lx00364_0_s
.Lx00364_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00363_unop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00366_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00367_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Collections___γ
#-----------------------------------------------------------------------------------------------------------------------
n00365_lit_string_α:
                        mov              qword ptr [rbp + 800], 1
                        mov              rax, qword ptr [rip + .Lx00368_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00369_make_list_α
.Lx00368_0:
                        .quad            .Lx00368_0_s
.Lx00368_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00366_to_α:
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
.Lx00370_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00367_return_α
                        mov              qword ptr [rbp + 32], 6
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00371_assign_α
n00366_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00370_0
#-----------------------------------------------------------------------------------------------------------------------
n00369_make_list_α:
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
                                                                                        jmp   n00344_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00371_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n00372_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00372_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00373_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00373_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052400
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00374_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00374_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00375_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00375_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00376_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00377_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00376_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00366_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00377_deref_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00376_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00378_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00378_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00379_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00379_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00380_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00380_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00376_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00381_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00381_deref_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00376_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00382_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00382_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00383_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00384_call_builtin_icon_α
.Lx00383_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00384_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn817:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn817]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00376_unmark_α
                                                                                        jmp   n00385_call_builtin_icon_α
n00384_call_builtin_icon_β:
                                                                                        jmp   n00376_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00385_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn819:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn819]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00376_unmark_α
                                                                                        jmp   n00376_unmark_α
n00385_call_builtin_icon_β:
                                                                                        jmp   n00376_unmark_α
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
                        lea              rax, [rip + .Lx00386_2]
                        mov              qword ptr [rbp + 920], rax
                        lea              rax, [rip + .Lx00386_3]
                        mov              qword ptr [rbp + 928], rax
                        mov              rdi, rbp
                        mov              esi, 880
                        mov              edx, 912
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Collections___α_body
.Lx00386_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -944
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00386_3:
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
n00387_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00388_var_ref_α
n00387_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00389_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00390_make_list_α
.Lx00389_0:
                                                                                        jmp   n00390_make_list_α
n00387_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00390_make_list_α
n00387_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00390_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00390_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00391_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00388_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052448
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00392_nulltest_var_α
n00388_var_ref_β:
                                                                                        jmp   n00387_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00393_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052432], rax
                        mov              qword ptr [1879052440], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00387_disjunction_as
n00393_assign_β:
                                                                                        jmp   n00390_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00391_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00394_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00392_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 99
                                                                                        je    n00387_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00387_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00387_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00395_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00394_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00396_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00395_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx00397_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00398_assign_var_α
.Lx00397_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00396_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00399_1:
                        mov              rdi, qword ptr [rip + .Lx00399_0]
                        mov              rsi, qword ptr [rbp + 592]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00400_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00401_call_builtin_icon_α
n00396_keyword_icon_gen_β:
                                                                                        jmp   .Lx00399_1
.Lx00399_0:
                        .quad            .Lx00399_0_s
.Lx00399_0_s:
                        .string          "&regions"
#-----------------------------------------------------------------------------------------------------------------------
n00400_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx00402_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00403_call_builtin_icon_α
.Lx00402_0:
                        .quad            .Lx00402_0_s
.Lx00402_0_s:
                        .string          "regions"
#-----------------------------------------------------------------------------------------------------------------------
n00398_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00387_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00404_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00401_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn873:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn873]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n00396_keyword_icon_gen_β
                                                                                        jmp   n00396_keyword_icon_gen_β
n00401_call_builtin_icon_β:
                                                                                        jmp   n00396_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00403_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn875:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn875]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n00405_lit_integer_α
                                                                                        jmp   n00405_lit_integer_α
n00403_call_builtin_icon_β:
                                                                                        jmp   n00405_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00404_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx00406_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00407_lit_string_α
.Lx00406_0:
                        .quad            .Lx00406_0_s
.Lx00406_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00405_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00408_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00409_var_α
.Lx00408_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00407_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx00410_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00411_lit_string_α
.Lx00410_0:
                        .quad            .Lx00410_0_s
.Lx00410_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00409_var_α:
                        mov              rax, qword ptr [1879052432]
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00412_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00411_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx00413_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00414_make_list_α
.Lx00413_0:
                        .quad            .Lx00413_0_s
.Lx00413_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00412_unop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00415_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00416_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Regions___γ
#-----------------------------------------------------------------------------------------------------------------------
n00414_make_list_α:
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
                                                                                        jmp   n00393_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00415_to_α:
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
.Lx00417_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00416_return_α
                        mov              qword ptr [rbp + 32], 6
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00418_assign_α
n00415_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00417_0
#-----------------------------------------------------------------------------------------------------------------------
n00418_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00419_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00419_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00420_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00420_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052432
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00421_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00421_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00422_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00422_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00423_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00424_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00423_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00415_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00424_deref_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00423_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00425_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00425_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00426_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00426_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00427_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00427_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00423_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00428_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00428_deref_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00423_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00429_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00429_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00430_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00431_call_builtin_icon_α
.Lx00430_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00431_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn906:              .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn906]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00423_unmark_α
                                                                                        jmp   n00432_call_builtin_icon_α
n00431_call_builtin_icon_β:
                                                                                        jmp   n00423_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00432_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn908:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn908]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00423_unmark_α
                                                                                        jmp   n00423_unmark_α
n00432_call_builtin_icon_β:
                                                                                        jmp   n00423_unmark_α
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
                        lea              rax, [rip + .Lx00433_2]
                        mov              qword ptr [rbp + 888], rax
                        lea              rax, [rip + .Lx00433_3]
                        mov              qword ptr [rbp + 896], rax
                        mov              rdi, rbp
                        mov              esi, 848
                        mov              edx, 880
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Regions___α_body
.Lx00433_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00433_3:
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
n00434_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00435_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00436_keyword_icon_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00437_call_builtin_icon_α
n00434_keyword_icon_β:
                                                                                        jmp   n00436_keyword_icon_α
.Lx00435_0:
                        .quad            .Lx00435_0_s
.Lx00435_0_s:
                        .string          "&version"
#-----------------------------------------------------------------------------------------------------------------------
n00437_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn919:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn919]
                        lea              rsi, [rbp + 192]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n00436_keyword_icon_α
                                                                                        jmp   n00436_keyword_icon_α
n00437_call_builtin_icon_β:
                                                                                        jmp   n00436_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00436_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00438_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00439_keyword_icon_gen_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00440_call_builtin_icon_α
n00436_keyword_icon_β:
                                                                                        jmp   n00439_keyword_icon_gen_α
.Lx00438_0:
                        .quad            .Lx00438_0_s
.Lx00438_0_s:
                        .string          "&host"
#-----------------------------------------------------------------------------------------------------------------------
n00440_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn922:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn922]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n00439_keyword_icon_gen_α
                                                                                        jmp   n00439_keyword_icon_gen_α
n00440_call_builtin_icon_β:
                                                                                        jmp   n00439_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00439_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 80], 0
.Lx00441_1:
                        mov              rdi, qword ptr [rip + .Lx00441_0]
                        mov              rsi, qword ptr [rbp + 80]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00442_return_α
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        mov              rax, qword ptr [rbp + 80]
                        add              rax, 1
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   n00443_call_builtin_icon_α
n00439_keyword_icon_gen_β:
                                                                                        jmp   .Lx00441_1
.Lx00441_0:
                        .quad            .Lx00441_0_s
.Lx00441_0_s:
                        .string          "&features"
#-----------------------------------------------------------------------------------------------------------------------
n00443_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lrkfn925:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn925]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    n00439_keyword_icon_gen_β
                                                                                        jmp   n00439_keyword_icon_gen_β
n00443_call_builtin_icon_β:
                                                                                        jmp   n00439_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00442_return_α:
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
                        lea              rax, [rip + .Lx00444_2]
                        mov              qword ptr [rbp + 264], rax
                        lea              rax, [rip + .Lx00444_3]
                        mov              qword ptr [rbp + 272], rax
                        mov              rdi, rbp
                        mov              esi, 256
                        mov              edx, 256
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Signature___α_body
.Lx00444_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00444_3:
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
n00445_disjunction_α:
                        mov              qword ptr [rbp + 624], 0
                        mov              qword ptr [rbp + 632], 0
                        mov              dword ptr [rbp + 640], 0
                                                                                        jmp   n00446_var_ref_α
n00445_disjunction_as:
                        mov              eax, dword ptr [rbp + 640]
                        cmp              eax, 0
                                                                                        jne   .Lx00447_0
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00448_make_list_α
.Lx00447_0:
                                                                                        jmp   n00448_make_list_α
n00445_disjunction_β:
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00448_make_list_α
n00445_disjunction_af:
                        add              dword ptr [rbp + 640], 1
                        mov              eax, dword ptr [rbp + 640]
                                                                                        jmp   n00448_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00448_make_list_α:
                        lea              rdi, [rbp + 624]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00449_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00446_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052480
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00450_nulltest_var_α
n00446_var_ref_β:
                                                                                        jmp   n00445_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00451_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052464], rax
                        mov              qword ptr [1879052472], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00445_disjunction_as
n00451_assign_β:
                                                                                        jmp   n00448_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00449_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00452_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00450_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 99
                                                                                        je    n00445_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00445_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00445_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00453_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00452_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00454_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00453_lit_integer_α:
                        mov              qword ptr [rbp + 832], 6
                        mov              rax, qword ptr [rip + .Lx00455_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00456_assign_var_α
.Lx00455_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00454_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00457_1:
                        mov              rdi, qword ptr [rip + .Lx00457_0]
                        mov              rsi, qword ptr [rbp + 592]
                        call             rt_keyword_gen@PLT
                        cmp              eax, 99
                                                                                        je    n00458_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00459_call_builtin_icon_α
n00454_keyword_icon_gen_β:
                                                                                        jmp   .Lx00457_1
.Lx00457_0:
                        .quad            .Lx00457_0_s
.Lx00457_0_s:
                        .string          "&storage"
#-----------------------------------------------------------------------------------------------------------------------
n00458_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx00460_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00461_call_builtin_icon_α
.Lx00460_0:
                        .quad            .Lx00460_0_s
.Lx00460_0_s:
                        .string          "storage"
#-----------------------------------------------------------------------------------------------------------------------
n00456_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00445_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00462_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00459_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lrkfn980:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn980]
                        lea              rsi, [rbp + 512]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n00454_keyword_icon_gen_β
                                                                                        jmp   n00454_keyword_icon_gen_β
n00459_call_builtin_icon_β:
                                                                                        jmp   n00454_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00461_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn982:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn982]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n00463_lit_integer_α
                                                                                        jmp   n00463_lit_integer_α
n00461_call_builtin_icon_β:
                                                                                        jmp   n00463_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00462_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx00464_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00465_lit_string_α
.Lx00464_0:
                        .quad            .Lx00464_0_s
.Lx00464_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00463_lit_integer_α:
                        mov              qword ptr [rbp + 64], 6
                        mov              rax, qword ptr [rip + .Lx00466_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00467_var_α
.Lx00466_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00465_lit_string_α:
                        mov              qword ptr [rbp + 752], 1
                        mov              rax, qword ptr [rip + .Lx00468_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00469_lit_string_α
.Lx00468_0:
                        .quad            .Lx00468_0_s
.Lx00468_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00467_var_α:
                        mov              rax, qword ptr [1879052464]
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00470_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00469_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              rax, qword ptr [rip + .Lx00471_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00472_make_list_α
.Lx00471_0:
                        .quad            .Lx00471_0_s
.Lx00471_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00470_unop_α:
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00473_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00474_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Storage___γ
#-----------------------------------------------------------------------------------------------------------------------
n00472_make_list_α:
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
                                                                                        jmp   n00451_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00473_to_α:
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
.Lx00475_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00474_return_α
                        mov              qword ptr [rbp + 32], 6
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00476_assign_α
n00473_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00475_0
#-----------------------------------------------------------------------------------------------------------------------
n00476_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00477_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00477_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00478_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00478_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052464
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00479_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00479_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00480_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00480_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00481_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00482_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00481_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00473_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00482_deref_α:
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00481_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00483_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00483_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00484_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00484_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00485_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00485_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00481_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00486_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00486_deref_α:
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00481_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00487_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00487_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx00488_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00489_call_builtin_icon_α
.Lx00488_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00489_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn1013:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1013]
                        lea              rsi, [rbp + 304]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n00481_unmark_α
                                                                                        jmp   n00490_call_builtin_icon_α
n00489_call_builtin_icon_β:
                                                                                        jmp   n00481_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00490_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lrkfn1015:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1015]
                        lea              rsi, [rbp + 176]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n00481_unmark_α
                                                                                        jmp   n00481_unmark_α
n00490_call_builtin_icon_β:
                                                                                        jmp   n00481_unmark_α
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
                        lea              rax, [rip + .Lx00491_2]
                        mov              qword ptr [rbp + 888], rax
                        lea              rax, [rip + .Lx00491_3]
                        mov              qword ptr [rbp + 896], rax
                        mov              rdi, rbp
                        mov              esi, 848
                        mov              edx, 880
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Storage___α_body
.Lx00491_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -912
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00491_3:
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
n00492_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n00493_var_ref_α
n00492_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00494_0
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00495_keyword_icon_α
.Lx00494_0:
                                                                                        jmp   n00495_keyword_icon_α
n00492_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00495_keyword_icon_α
n00492_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                                                                                        jmp   n00495_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00495_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00496_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    proc_Time___ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                                                                                        jmp   n00497_var_α
n00495_keyword_icon_β:
                                                                                        jmp   proc_Time___ω
.Lx00496_0:
                        .quad            .Lx00496_0_s
.Lx00496_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00493_var_ref_α:
                        mov              rax, 4294967305
                        mov              rdx, 1879052512
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00498_nulltest_var_α
n00493_var_ref_β:
                                                                                        jmp   n00492_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00499_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052496], rax
                        mov              qword ptr [1879052504], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00492_disjunction_as
n00499_assign_β:
                                                                                        jmp   n00495_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00497_var_α:
                        mov              rax, qword ptr [1879052496]
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00500_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n00498_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 99
                                                                                        je    n00492_disjunction_af
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00492_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00492_disjunction_af
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00501_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00500_op75_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 7
                                                                                        je    .Lx00502_1
                        cmp              eax, 6
                                                                                        jne   .Lx00502_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 6
                                                                                        jne   .Lx00502_0
.Lx00502_1:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00503_op75_α
.Lx00502_0:
                        lea              rdi, [rbp + 64]
                        lea              rsi, [rbp + 96]
                        lea              rdx, [rbp + 48]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00503_op75_α
#-----------------------------------------------------------------------------------------------------------------------
n00501_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx00504_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00505_assign_var_α
.Lx00504_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00503_op75_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 7
                                                                                        je    .Lx00506_1
                        cmp              eax, 6
                                                                                        jne   .Lx00506_0
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 6
                                                                                        jne   .Lx00506_0
.Lx00506_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00507_binop_α
.Lx00506_0:
                        lea              rdi, [rbp + 96]
                        lea              rsi, [rbp + 64]
                        lea              rdx, [rbp + 32]
                        mov              rcx, 0
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00507_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00505_assign_var_α:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        call             rt_assign_var@PLT
                        cmp              eax, 99
                                                                                        je    n00492_disjunction_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00508_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00507_binop_α:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 6
                                                                                        jne   .Lx00509_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 6
                                                                                        jne   .Lx00509_0
                        mov              rax, qword ptr [rbp + 56]
                        mov              rcx, qword ptr [rbp + 40]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 16], 6
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n00510_return_α
.Lx00509_0:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        call             rt_sub@PLT
                        cmp              eax, 99
                                                                                        je    proc_Time___ω
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n00510_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00508_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00511_0]
                        call             rt_keyword_read@PLT
                        cmp              eax, 99
                                                                                        je    n00495_keyword_icon_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n00499_assign_α
n00508_keyword_icon_β:
                                                                                        jmp   n00495_keyword_icon_α
.Lx00511_0:
                        .quad            .Lx00511_0_s
.Lx00511_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00510_return_α:
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
                        lea              rax, [rip + .Lx00512_2]
                        mov              qword ptr [rbp + 264], rax
                        lea              rax, [rip + .Lx00512_3]
                        mov              qword ptr [rbp + 272], rax
                        mov              rdi, rbp
                        mov              esi, 256
                        mov              edx, 256
                        mov              ecx, 0
                        mov              r8d, 0
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_Time___α_body
.Lx00512_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -288
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx00512_3:
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
.Lstartup_pname0:       .string          "tabulate"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_tabulate_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1376
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_tabulate_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "format"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_format_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 880
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_format_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "item"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_item_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 832
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
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
.Lgvan0:                .string          "uses"
.Lgvan1:                .string          "colmax"
.Lgvan2:                .string          "namewidth"
.Lgvan3:                .string          "lineno"
.Lgvan4:                .string          "Save__"
.Lgvan5:                .string          "Saves__"
.Lgvan6:                .string          "Name__"
.Lgvan7:                .string          "Collections____STATIC__labels"
.Lgvan8:                .string          "Collections____INITFLAG__0"
.Lgvan9:                .string          "Regions____STATIC__labels"
.Lgvan10:               .string          "Regions____INITFLAG__0"
.Lgvan11:               .string          "Storage____STATIC__labels"
.Lgvan12:               .string          "Storage____INITFLAG__0"
.Lgvan13:               .string          "Time____STATIC__lasttime"
.Lgvan14:               .string          "Time____INITFLAG__0"
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
                        .section         .text
                        .intel_syntax    noprefix
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              edi, 15
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 15
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
                        sub              rsp, 1144
                        mov              rdi, rsp
                        mov              ecx, 1144
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 1136], rbp
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
n00513_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              rax, qword ptr [rip + .Lx00514_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n00515_call_proc_staged_α
.Lx00514_0:
                        .quad            .Lx00514_0_s
.Lx00514_0_s:
                        .string          "concord"
#-----------------------------------------------------------------------------------------------------------------------
n00515_call_proc_staged_α:
                        lea              rsi, [rbp + 1072]
                        call             proc_Init___dcα
                                                                                        jmp   .Lx00516_2
.Lx00516_2:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n00517_var_α
                                                                                        jmp   n00517_var_α
n00515_call_proc_staged_β:
                                                                                        jmp   n00517_var_α
.Lx00516_0:
                        .quad            .Lx00516_0_s
.Lx00516_0_s:
                        .string          "Init__"
#-----------------------------------------------------------------------------------------------------------------------
n00517_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n00518_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00518_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              rax, qword ptr [rip + .Lx00519_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n00520_call_proc_staged_α
.Lx00519_0:
                        .quad            .Lx00519_0_s
.Lx00519_0_s:
                        .string          "l+w+"
#-----------------------------------------------------------------------------------------------------------------------
n00521_disjunction_α:
                        mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              dword ptr [rbp + 816], 0
                                                                                        jmp   n00522_var_ref_α
n00521_disjunction_as:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        jne   .Lx00523_0
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00524_assign_α
.Lx00523_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00523_1
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00524_assign_α
.Lx00523_1:
                                                                                        jmp   n00524_assign_α
n00521_disjunction_β:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0
                                                                                        je    n00521_disjunction_af
                                                                                        jmp   n00521_disjunction_af
n00521_disjunction_af:
                        add              dword ptr [rbp + 816], 1
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 1
                                                                                        je    n00525_lit_integer_α
                                                                                        jmp   n00526_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00520_call_proc_staged_α:
                        lea              rsi, [rbp + 992]
                        lea              rdx, [rbp + 1008]
                        call             proc_options_dcα
                                                                                        jmp   .Lx00527_2
.Lx00527_2:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n00521_disjunction_α
                                                                                        jmp   n00528_assign_α
n00520_call_proc_staged_β:
                                                                                        jmp   n00521_disjunction_α
.Lx00527_0:
                        .quad            .Lx00527_0_s
.Lx00527_0_s:
                        .string          "options"
#-----------------------------------------------------------------------------------------------------------------------
n00524_assign_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [1879052304], rax
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n00526_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00522_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00529_lit_string_α
n00522_var_ref_β:
                                                                                        jmp   n00521_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00525_lit_integer_α:
                        mov              qword ptr [rbp + 912], 6
                        mov              rax, qword ptr [rip + .Lx00530_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n00521_disjunction_as
n00525_lit_integer_β:
                                                                                        jmp   n00521_disjunction_af
.Lx00530_0:
                        .quad            72
#-----------------------------------------------------------------------------------------------------------------------
n00531_unop_test_α:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 99
                                                                                        je    n00521_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00521_disjunction_af
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00521_disjunction_as
n00531_unop_test_β:
                                                                                        jmp   n00521_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00528_assign_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n00521_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00526_disjunction_α:
                        mov              qword ptr [rbp + 672], 0
                        mov              qword ptr [rbp + 680], 0
                        mov              dword ptr [rbp + 688], 0
                                                                                        jmp   n00532_var_ref_α
n00526_disjunction_as:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0
                                                                                        jne   .Lx00533_0
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00534_assign_α
.Lx00533_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00533_1
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00534_assign_α
.Lx00533_1:
                                                                                        jmp   n00534_assign_α
n00526_disjunction_β:
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 0
                                                                                        je    n00526_disjunction_af
                                                                                        jmp   n00526_disjunction_af
n00526_disjunction_af:
                        add              dword ptr [rbp + 688], 1
                        mov              eax, dword ptr [rbp + 688]
                        cmp              eax, 1
                                                                                        je    n00535_lit_integer_α
                                                                                        jmp   n00536_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00529_lit_string_α:
                        mov              qword ptr [rbp + 864], 1
                        mov              rax, qword ptr [rip + .Lx00537_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00538_subscript_α
.Lx00537_0:
                        .quad            .Lx00537_0_s
.Lx00537_0_s:
                        .string          "l"
#-----------------------------------------------------------------------------------------------------------------------
n00534_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052320], rax
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n00536_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00532_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n00539_lit_string_α
n00532_var_ref_β:
                                                                                        jmp   n00526_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00535_lit_integer_α:
                        mov              qword ptr [rbp + 784], 6
                        mov              rax, qword ptr [rip + .Lx00540_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00526_disjunction_as
n00535_lit_integer_β:
                                                                                        jmp   n00526_disjunction_af
.Lx00540_0:
                        .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n00541_unop_test_α:
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 99
                                                                                        je    n00526_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00526_disjunction_af
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n00526_disjunction_as
n00541_unop_test_β:
                                                                                        jmp   n00526_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00538_subscript_α:
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 872]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00521_disjunction_af
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n00542_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00536_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              rax, qword ptr [rip + .Lx00543_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00544_call_builtin_icon_α
.Lx00543_0:
                        .quad            .Lx00543_0_s
.Lx00543_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00539_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              rax, qword ptr [rip + .Lx00545_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00546_subscript_α
.Lx00545_0:
                        .quad            .Lx00545_0_s
.Lx00545_0_s:
                        .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n00542_deref_α:
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00521_disjunction_af
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n00531_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00544_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lrkfn1122:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1122]
                        lea              rsi, [rbp + 624]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 99
                                                                                        je    n00547_lit_integer_α
                                                                                        jmp   n00548_assign_α
n00544_call_builtin_icon_β:
                                                                                        jmp   n00547_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00546_subscript_α:
                        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        mov              rdx, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 744]
                        call             rt_subscript_var@PLT
                        cmp              eax, 99
                                                                                        je    n00526_disjunction_af
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n00549_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00548_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [1879052288], rax
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n00547_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00547_lit_integer_α:
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 6
                        mov              rax, qword ptr [rip + .Lx00550_0]
                        mov              qword ptr [rsp + 8], rax
                                                                                        jmp   n00551_assign_α
.Lx00550_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00549_deref_α:
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        call             rt_deref@PLT
                        cmp              eax, 99
                                                                                        je    n00526_disjunction_af
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n00541_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00551_assign_α:
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
                        mov              qword ptr [1879052336], rax
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n00552_proc_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00552_proc_gen_α:
                        mov              qword ptr [rbp + 544], 0
                        mov              edi, 2
                        mov              esi, 0
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx00553_1
                        lea              rcx, [rip + .Lx00553_3]
                        lea              rdx, [rip + .Lx00553_4]
                                                                                        jmp   rax
.Lx00553_3:
                        mov              qword ptr [rbp + 552], rsp
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax
                                                                                        jne   .Lx00553_5
                        mov              qword ptr [rbp + 544], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx00553_2
.Lx00553_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx00553_2
.Lx00553_4:
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax
                                                                                        jne   .Lx00553_6
                        mov              qword ptr [rbp + 544], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx00553_2
.Lx00553_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx00553_2
.Lx00553_1:
                        call             rt_faildescr@PLT
.Lx00553_2:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n00554_var_α
                                                                                        jmp   n00555_var_α
n00552_proc_gen_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 552]
                                                                                        jmp   qword ptr [rsp]
.Lx00553_0:
                        .quad            .Lx00553_0_s
.Lx00553_0_s:
                        .string          "item"
#-----------------------------------------------------------------------------------------------------------------------
n00555_var_α:
                        mov              rax, qword ptr [1879052336]
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n00556_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00554_var_α:
                        mov              rax, qword ptr [1879052288]
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n00557_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00556_call_proc_staged_α:
                        lea              rsi, [rbp + 528]
                        lea              rdx, [rbp + 576]
                        call             proc_tabulate_dcα
                                                                                        jmp   .Lx00558_2
.Lx00558_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n00552_proc_gen_β
                                                                                        jmp   n00552_proc_gen_β
n00556_call_proc_staged_β:
                                                                                        jmp   n00552_proc_gen_β
.Lx00558_0:
                        .quad            .Lx00558_0_s
.Lx00558_0_s:
                        .string          "tabulate"
#-----------------------------------------------------------------------------------------------------------------------
n00557_lit_integer_α:
                        mov              qword ptr [rbp + 448], 6
                        mov              rax, qword ptr [rip + .Lx00559_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00560_call_builtin_icon_α
.Lx00559_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00561_var_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00562_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00560_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn1138:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1138]
                        lea              rsi, [rbp + 384]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n00561_var_α
                                                                                        jmp   n00563_assign_α
n00560_call_builtin_icon_β:
                                                                                        jmp   n00561_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00562_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lrkfn1140:             .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1140]
                        lea              rsi, [rbp + 96]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n00564_call_proc_staged_α
                                                                                        jmp   n00565_assign_α
n00562_call_builtin_icon_β:
                                                                                        jmp   n00564_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00564_call_proc_staged_α:
                        call             proc_Term___dcα
                                                                                        jmp   .Lx00566_2
.Lx00566_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n00564_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx00566_0:
                        .quad            .Lx00566_0_s
.Lx00566_0_s:
                        .string          "Term__"
#-----------------------------------------------------------------------------------------------------------------------
n00563_assign_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n00561_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00565_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n00567_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00567_var_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00568_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00568_var_α:
                        mov              rax, qword ptr [1879052320]
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00569_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00569_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn1149:             .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1149]
                        lea              rsi, [rbp + 224]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n00561_var_α
                                                                                        jmp   n00570_var_α
n00569_call_builtin_icon_β:
                                                                                        jmp   n00561_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00570_var_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n00571_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00571_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn1153:             .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1153]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n00561_var_α
                                                                                        jmp   n00572_binop_α
n00571_call_builtin_icon_β:
                                                                                        jmp   n00561_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00572_binop_α:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00573_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00573_call_proc_staged_α:
                        lea              rsi, [rbp + 192]
                        call             proc_format_dcα
                                                                                        jmp   .Lx00574_2
.Lx00574_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n00561_var_α
                                                                                        jmp   n00561_var_α
n00573_call_proc_staged_β:
                                                                                        jmp   n00561_var_α
.Lx00574_0:
                        .quad            .Lx00574_0_s
.Lx00574_0_s:
                        .string          "format"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 1136]
                        add              rsp, 1144
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 1136]
                        add              rsp, 1144
                        ret
                        .section         .note.GNU-stack,"",@progbits
