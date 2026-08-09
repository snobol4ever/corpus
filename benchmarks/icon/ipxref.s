                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_addword_α
proc_addword_α:
                        sub              rsp, 1472
                        mov              qword ptr [rsp + 1448], rcx
                        mov              qword ptr [rsp + 1456], rdx
                        mov              qword ptr [rsp + 1464], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 1440
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
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
                                                                                        jmp   proc_addword_γ
.Lx67_0:
                                                                                        jmp   proc_addword_γ
n0_disjunction_β:
                        mov              eax, dword ptr [rbp + 80]
                                                                                        jmp   n8_disjunction_β
n0_disjunction_af:
                        add              dword ptr [rbp + 80], 1
                        mov              eax, dword ptr [rbp + 80]
                                                                                        jmp   proc_addword_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:
                        mov              qword ptr [rbp + 1264], 0
                        mov              qword ptr [rbp + 1272], 0
                        mov              dword ptr [rbp + 1280], 0
                                                                                        jmp   n63_var_α
n1_disjunction_as:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 0
                                                                                        jne   .Lx69_0
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n2_var_ref_α
.Lx69_0:
                        cmp              eax, 1
                                                                                        jne   .Lx69_1
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n2_var_ref_α
.Lx69_1:
                                                                                        jmp   n2_var_ref_α
n1_disjunction_β:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 0
                                                                                        je    n1_disjunction_af
                                                                                        jmp   n1_disjunction_af
n1_disjunction_af:
                        add              dword ptr [rbp + 1280], 1
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 1
                                                                                        je    n61_var_α
                                                                                        jmp   n0_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052352                                # var
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n3_var_α
#-----------------------------------------------------------------------------------------------------------------------
n3_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n4_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n4_subscript_α:
                        mov              rdi, qword ptr [rbp + 1152]                    # base
                        mov              rsi, qword ptr [rbp + 1160]                    # base
                        mov              rdx, qword ptr [rbp + 1168]                    # idx
                        mov              rcx, qword ptr [rbp + 1176]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n8_disjunction_α
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n5_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n5_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 104
                                                                                        je    n8_disjunction_α
                        mov              rdi, qword ptr [rbp + 1184]                    # d
                        mov              rsi, qword ptr [rbp + 1192]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n8_disjunction_α
                        cmp              eax, 0
                                                                                        jne   n8_disjunction_α
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n6_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn77:               .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn77]                          # fn
                        lea              rsi, [rbp + 1248]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              eax, 104
                                                                                        je    n8_disjunction_α
                                                                                        jmp   n7_assign_var_α
n6_call_builtin_icon_β:
                                                                                        jmp   n8_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1200]                    # var
                        mov              rsi, qword ptr [rbp + 1208]                    # var
                        mov              rdx, qword ptr [rbp + 1232]                    # val
                        mov              rcx, qword ptr [rbp + 1240]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n8_disjunction_α
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n8_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n8_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n29_disjunction_α
n8_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx80_0
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n9_conjunction_α
.Lx80_0:
                        cmp              eax, 1
                                                                                        jne   .Lx80_1
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n9_conjunction_α
.Lx80_1:
                                                                                        jmp   n9_conjunction_α
n8_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        je    proc_addword_ω
                                                                                        jmp   proc_addword_ω
n8_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 1
                                                                                        je    n10_var_ref_α
                                                                                        jmp   proc_addword_ω
#-----------------------------------------------------------------------------------------------------------------------
n9_conjunction_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 104], rax
                                                                                        jmp   n0_disjunction_as
n9_conjunction_β:
                                                                                        jmp   proc_addword_ω
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052352                                # var
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n11_var_α
n10_var_ref_β:
                                                                                        jmp   n20_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n12_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n12_subscript_α:
                        mov              rdi, qword ptr [rbp + 960]                     # base
                        mov              rsi, qword ptr [rbp + 968]                     # base
                        mov              rdx, qword ptr [rbp + 976]                     # idx
                        mov              rcx, qword ptr [rbp + 984]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n20_var_ref_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n13_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_string_α:
                        mov              qword ptr [rbp + 1008], 2                      # result
                        mov              dword ptr [rbp + 1012], 6
                        mov              rax, qword ptr [rip + .Lx87_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n14_subscript_α
.Lx87_0:
                        .quad            .Lx87_0_s
.Lx87_0_s:
                        .string          "global"
#-----------------------------------------------------------------------------------------------------------------------
n14_subscript_α:
                        mov              rdi, qword ptr [rbp + 992]                     # base
                        mov              rsi, qword ptr [rbp + 1000]                    # base
                        mov              rdx, qword ptr [rbp + 1008]                    # idx
                        mov              rcx, qword ptr [rbp + 1016]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n20_var_ref_α
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n15_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n15_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 104
                                                                                        je    n20_var_ref_α
                        mov              rdi, qword ptr [rbp + 1024]                    # d
                        mov              rsi, qword ptr [rbp + 1032]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n20_var_ref_α
                        cmp              eax, 0
                                                                                        jne   n20_var_ref_α
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n16_var_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n17_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], 6
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n18_make_list_α
.Lx92_0:
                        .quad            .Lx92_0_s
.Lx92_0_s:
                        .string          "global"
#-----------------------------------------------------------------------------------------------------------------------
n18_make_list_α:
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
                                                                                        jmp   n19_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1040]                    # var
                        mov              rsi, qword ptr [rbp + 1048]                    # var
                        mov              rdx, qword ptr [rbp + 1072]                    # val
                        mov              rcx, qword ptr [rbp + 1080]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n20_var_ref_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n20_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052352                                # var
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n21_var_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n22_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n22_subscript_α:
                        mov              rdi, qword ptr [rbp + 848]                     # base
                        mov              rsi, qword ptr [rbp + 856]                     # base
                        mov              rdx, qword ptr [rbp + 864]                     # idx
                        mov              rcx, qword ptr [rbp + 872]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    proc_addword_ω
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n23_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 896], 2                       # result
                        mov              dword ptr [rbp + 900], 6
                        mov              rax, qword ptr [rip + .Lx00001_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n24_subscript_α
.Lx00001_0:
                        .quad            .Lx00001_0_s
.Lx00001_0_s:
                        .string          "global"
#-----------------------------------------------------------------------------------------------------------------------
n24_subscript_α:
                        mov              rdi, qword ptr [rbp + 880]                     # base
                        mov              rsi, qword ptr [rbp + 888]                     # base
                        mov              rdx, qword ptr [rbp + 896]                     # idx
                        mov              rcx, qword ptr [rbp + 904]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    proc_addword_ω
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n25_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n25_deref_α:
                        mov              rdi, qword ptr [rbp + 912]                     # d
                        mov              rsi, qword ptr [rbp + 920]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    proc_addword_ω
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n26_var_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n27_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lrkfn107:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn107]                         # fn
                        lea              rsi, [rbp + 800]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 104
                                                                                        je    proc_addword_ω
                                                                                        jmp   n28_conjunction_α
n27_call_builtin_icon_β:
                                                                                        jmp   proc_addword_ω
#-----------------------------------------------------------------------------------------------------------------------
n28_conjunction_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n8_disjunction_as
n28_conjunction_β:
                                                                                        jmp   proc_addword_ω
#-----------------------------------------------------------------------------------------------------------------------
n29_disjunction_α:
                        mov              qword ptr [rbp + 528], 0
                        mov              qword ptr [rbp + 536], 0
                        mov              dword ptr [rbp + 544], 0
                                                                                        jmp   n54_var_ref_α
n29_disjunction_as:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 0
                                                                                        jne   .Lx00002_0
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n30_var_ref_α
.Lx00002_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00002_1
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n30_var_ref_α
.Lx00002_1:
                                                                                        jmp   n30_var_ref_α
n29_disjunction_β:
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 0
                                                                                        je    n29_disjunction_af
                                                                                        jmp   n52_iterate_β
n29_disjunction_af:
                        add              dword ptr [rbp + 544], 1
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 1
                                                                                        je    n49_var_α
                                                                                        jmp   n8_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052352                                # var
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n31_var_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n32_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n32_subscript_α:
                        mov              rdi, qword ptr [rbp + 336]                     # base
                        mov              rsi, qword ptr [rbp + 344]                     # base
                        mov              rdx, qword ptr [rbp + 352]                     # idx
                        mov              rcx, qword ptr [rbp + 360]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n40_var_ref_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n33_var_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n34_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n34_subscript_α:
                        mov              rdi, qword ptr [rbp + 368]                     # base
                        mov              rsi, qword ptr [rbp + 376]                     # base
                        mov              rdx, qword ptr [rbp + 384]                     # idx
                        mov              rcx, qword ptr [rbp + 392]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n40_var_ref_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n35_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n35_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 104
                                                                                        je    n40_var_ref_α
                        mov              rdi, qword ptr [rbp + 400]                     # d
                        mov              rsi, qword ptr [rbp + 408]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n40_var_ref_α
                        cmp              eax, 0
                                                                                        jne   n40_var_ref_α
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n36_var_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n38_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n38_make_list_α:
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
                                                                                        jmp   n39_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_var_α:
                        mov              rdi, qword ptr [rbp + 416]                     # var
                        mov              rsi, qword ptr [rbp + 424]                     # var
                        mov              rdx, qword ptr [rbp + 448]                     # val
                        mov              rcx, qword ptr [rbp + 456]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n40_var_ref_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n40_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052352                                # var
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n42_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n42_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]                     # base
                        mov              rsi, qword ptr [rbp + 232]                     # base
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        mov              rcx, qword ptr [rbp + 248]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    proc_addword_ω
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n43_var_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n44_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n44_subscript_α:
                        mov              rdi, qword ptr [rbp + 256]                     # base
                        mov              rsi, qword ptr [rbp + 264]                     # base
                        mov              rdx, qword ptr [rbp + 272]                     # idx
                        mov              rcx, qword ptr [rbp + 280]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    proc_addword_ω
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n45_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n45_deref_α:
                        mov              rdi, qword ptr [rbp + 288]                     # d
                        mov              rsi, qword ptr [rbp + 296]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    proc_addword_ω
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n46_var_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 328], rax
                                                                                        jmp   n47_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn139:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn139]                         # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    proc_addword_ω
                                                                                        jmp   n48_conjunction_α
n47_call_builtin_icon_β:
                                                                                        jmp   proc_addword_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_conjunction_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n8_disjunction_as
n48_conjunction_β:
                                                                                        jmp   proc_addword_ω
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n50_var_α
n49_var_β:
                                                                                        jmp   n29_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:
                        mov              rax, qword ptr [1879052480]                    # localvar
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rbp + 752], rax                     # result
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n51_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n51_unop_test_α:
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 104
                                                                                        je    n29_disjunction_af
                        cmp              eax, 0
                                                                                        je    n29_disjunction_af
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n52_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n52_iterate_α:
                        mov              qword ptr [rbp + 720], 0
.Lx00003_0:
                        mov              rdi, qword ptr [rbp + 736]                     # obj
                        mov              rsi, qword ptr [rbp + 744]                     # obj
                        mov              rdx, qword ptr [rbp + 720]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              rax, 104
                                                                                        je    n29_disjunction_af
                                                                                        jmp   n53_binop_test_α
n52_iterate_β:
                        inc              qword ptr [rbp + 720]
                                                                                        jmp   .Lx00003_0
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_test_α:
                        mov              rdi, qword ptr [rbp + 16]                      # lhs
                        mov              rsi, qword ptr [rbp + 24]                      # lhs
                        mov              rdx, qword ptr [rbp + 704]                     # rhs
                        mov              rcx, qword ptr [rbp + 712]                     # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n52_iterate_β
                        mov              rdi, qword ptr [rbp + 704]                     # d
                        mov              rsi, qword ptr [rbp + 712]                     # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n29_disjunction_as
n53_binop_test_β:
                                                                                        jmp   n52_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052352                                # var
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n55_var_α
n54_var_ref_β:
                                                                                        jmp   n29_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n56_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n56_subscript_α:
                        mov              rdi, qword ptr [rbp + 576]                     # base
                        mov              rsi, qword ptr [rbp + 584]                     # base
                        mov              rdx, qword ptr [rbp + 592]                     # idx
                        mov              rcx, qword ptr [rbp + 600]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n29_disjunction_af
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n57_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 624], 2                       # result
                        mov              dword ptr [rbp + 628], 6
                        mov              rax, qword ptr [rip + .Lx00004_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n58_subscript_α
.Lx00004_0:
                        .quad            .Lx00004_0_s
.Lx00004_0_s:
                        .string          "global"
#-----------------------------------------------------------------------------------------------------------------------
n58_subscript_α:
                        mov              rdi, qword ptr [rbp + 608]                     # base
                        mov              rsi, qword ptr [rbp + 616]                     # base
                        mov              rdx, qword ptr [rbp + 624]                     # idx
                        mov              rcx, qword ptr [rbp + 632]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n29_disjunction_af
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n59_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n59_deref_α:
                        mov              rdi, qword ptr [rbp + 640]                     # d
                        mov              rsi, qword ptr [rbp + 648]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n29_disjunction_af
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n60_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n60_unop_test_α:
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 104
                                                                                        je    n29_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n29_disjunction_af
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                                                                                        jmp   n29_disjunction_as
n60_unop_test_β:
                                                                                        jmp   n29_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n61_var_α:
                        mov              rax, qword ptr [1879052416]                    # xflag
                        mov              rdx, qword ptr [1879052424]
                        mov              qword ptr [rbp + 1408], rax                    # result
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n62_unop_test_α
n61_var_β:
                                                                                        jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n62_unop_test_α:
                        mov              eax, dword ptr [rbp + 1408]
                        cmp              eax, 104
                                                                                        je    n1_disjunction_af
                        cmp              eax, 0
                                                                                        je    n1_disjunction_af
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n1_disjunction_as
n62_unop_test_β:
                                                                                        jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:
                        mov              rax, qword ptr [1879052320]                    # letters
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 1360], rax                    # result
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n64_var_α
n63_var_β:
                                                                                        jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n65_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn66:           .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn66]                      # fn
                        lea              rsi, [rbp + 1312]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n1_disjunction_af
                                                                                        jmp   n1_disjunction_as
n65_call_builtin_icon_β:
                                                                                        jmp   n1_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_addword_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_addword_β:
                                                                                        jmp   proc_addword_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_addword_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1472]
                        mov              rcx, qword ptr [rbp + 1448]
                        mov              rbp, qword ptr [rbp + 1464]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_addword_ω:
                        lea              rsp, [rbp + 1472]
                        mov              rcx, qword ptr [rbp + 1456]
                        mov              rbp, qword ptr [rbp + 1464]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_addword_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rcx
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        mov              r10, qword ptr [rsp + 16]
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 32
                        lea              rcx, [rip + .Lx00005_2]
                        lea              rdx, [rip + .Lx00005_3]
                                                                                        jmp   proc_addword_α
.Lx00005_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00005_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_getword_α
proc_getword_α:
                        sub              rsp, 2944
                        mov              qword ptr [rsp + 2920], rcx
                        mov              qword ptr [rsp + 2928], rdx
                        mov              qword ptr [rsp + 2936], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 2912
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
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
n00007_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052592                                # getword__INITFLAG__0
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                                                                                        jmp   n00010_nulltest_var_α
n00007_var_ref_β:
                                                                                        jmp   n00006_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00010_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2800]
                        cmp              eax, 104
                                                                                        je    n00006_disjunction_af
                        mov              rdi, qword ptr [rbp + 2800]                    # d
                        mov              rsi, qword ptr [rbp + 2808]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00006_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00006_disjunction_af
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n00011_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00011_lit_integer_α:
                        mov              qword ptr [rbp + 2848], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00012_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n00013_assign_var_α
.Lx00012_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00013_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2816]                    # var
                        mov              rsi, qword ptr [rbp + 2824]                    # var
                        mov              rdx, qword ptr [rbp + 2848]                    # val
                        mov              rcx, qword ptr [rbp + 2856]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00006_disjunction_af
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                                                                                        jmp   n00014_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00014_lit_charset_α:
                        mov              qword ptr [rbp + 2784], 2                      # result
                        mov              dword ptr [rbp + 2788], -1
                        mov              rax, qword ptr [rip + .Lx00015_0]
                        mov              qword ptr [rbp + 2792], rax
                                                                                        jmp   n00016_unop_α
.Lx00015_0:
                        .quad            .Lx00015_0_s
.Lx00015_0_s:
                        .string          "\t\n "
#-----------------------------------------------------------------------------------------------------------------------
n00016_unop_α:
                        mov              rdi, qword ptr [rbp + 2784]                    # a
                        mov              rsi, qword ptr [rbp + 2792]                    # a
                        call             rt_cset_compl@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                                                                                        jmp   n00017_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00017_assign_α:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              rdx, qword ptr [rbp + 2776]
                        mov              qword ptr [1879052576], rax                    # getword__STATIC__nonwhite
                        mov              qword ptr [1879052584], rdx
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                                                                                        jmp   n00006_disjunction_as
n00017_assign_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00009_disjunction_α:
                        mov              qword ptr [rbp + 2560], 0
                        mov              qword ptr [rbp + 2568], 0
                        mov              dword ptr [rbp + 2576], 0
                                                                                        jmp   n00018_var_α
n00009_disjunction_as:
                        mov              eax, dword ptr [rbp + 2576]
                        cmp              eax, 0
                                                                                        jne   .Lx00019_0
                                                                                        jmp   n00020_disjunction_α
.Lx00019_0:
                                                                                        jmp   n00020_disjunction_α
n00009_disjunction_β:
                        mov              eax, dword ptr [rbp + 2576]
                                                                                        jmp   n00020_disjunction_α
n00009_disjunction_af:
                        add              dword ptr [rbp + 2576], 1
                        mov              eax, dword ptr [rbp + 2576]
                                                                                        jmp   n00020_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00020_disjunction_α:
                        mov              qword ptr [rbp + 2144], 0
                        mov              qword ptr [rbp + 2152], 0
                        mov              dword ptr [rbp + 2160], 0
                                                                                        jmp   n00021_disjunction_α
n00020_disjunction_as:
                        mov              eax, dword ptr [rbp + 2160]
                        cmp              eax, 0
                                                                                        jne   .Lx00022_0
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n00023_disjunction_α
.Lx00022_0:
                                                                                        jmp   n00023_disjunction_α
n00020_disjunction_β:
                        mov              eax, dword ptr [rbp + 2160]
                                                                                        jmp   n00024_disjunction_β
n00020_disjunction_af:
                        add              dword ptr [rbp + 2160], 1
                        mov              eax, dword ptr [rbp + 2160]
                                                                                        jmp   n00023_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00021_disjunction_α:
                        mov              qword ptr [rbp + 2384], 0
                        mov              qword ptr [rbp + 2392], 0
                        mov              dword ptr [rbp + 2400], 0
                                                                                        jmp   n00025_var_α
n00021_disjunction_as:
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 0
                                                                                        jne   .Lx00026_0
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n00024_disjunction_α
.Lx00026_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00026_1
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2392], rax
                                                                                        jmp   n00024_disjunction_α
.Lx00026_1:
                                                                                        jmp   n00024_disjunction_α
n00021_disjunction_β:
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 0
                                                                                        je    n00021_disjunction_af
                                                                                        jmp   n00021_disjunction_af
n00021_disjunction_af:
                        add              dword ptr [rbp + 2400], 1
                        mov              eax, dword ptr [rbp + 2400]
                        cmp              eax, 1
                                                                                        je    n00027_var_α
                                                                                        jmp   n00020_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00024_disjunction_α:
                        mov              qword ptr [rbp + 2176], 0
                        mov              qword ptr [rbp + 2184], 0
                        mov              dword ptr [rbp + 2192], 0
                                                                                        jmp   n00028_var_α
n00024_disjunction_as:
                        mov              eax, dword ptr [rbp + 2192]
                        cmp              eax, 0
                                                                                        jne   .Lx00029_0
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n00020_disjunction_as
.Lx00029_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00029_1
                                                                                        jmp   n00020_disjunction_as
.Lx00029_1:
                                                                                        jmp   n00020_disjunction_as
n00024_disjunction_β:
                        mov              eax, dword ptr [rbp + 2192]
                        cmp              eax, 0
                                                                                        je    n00023_disjunction_α
                                                                                        jmp   n00023_disjunction_α
n00024_disjunction_af:
                        add              dword ptr [rbp + 2192], 1
                        mov              eax, dword ptr [rbp + 2192]
                        cmp              eax, 1
                                                                                        je    proc_getword_ω
                                                                                        jmp   n00023_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00028_var_α:
                        mov              rax, qword ptr [1879052400]                    # infile
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 2368], rax                    # result
                        mov              qword ptr [rbp + 2376], rdx
                                                                                        jmp   n00030_call_builtin_icon_α
n00028_var_β:
                                                                                        jmp   n00024_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00030_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2344], rax
                        .section         .rodata
.Lrkfn343:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn343]                         # fn
                        lea              rsi, [rbp + 2336]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 104
                                                                                        je    n00024_disjunction_af
                                                                                        jmp   n00031_assign_α
n00030_call_builtin_icon_β:
                                                                                        jmp   n00024_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00031_assign_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        mov              qword ptr [1879052496], rax                    # lin
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n00032_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00032_lit_integer_α:
                        mov              qword ptr [rbp + 2304], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00033_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n00034_assign_α
.Lx00033_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00034_assign_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              rdx, qword ptr [rbp + 2312]
                        mov              qword ptr [1879052560], rax                    # getword__STATIC__i
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n00035_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00035_var_α:
                        mov              rax, qword ptr [1879052304]                    # linenum
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 2272], rax                    # result
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n00036_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00036_lit_integer_α:
                        mov              qword ptr [rbp + 2288], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00037_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n00038_coerce_numeric_α
.Lx00037_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00038_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2272]
                        cmp              eax, 5
                                                                                        je    .Lx00039_1
                        cmp              eax, 3
                                                                                        jne   .Lx00039_0
                        mov              eax, dword ptr [rbp + 2288]
                        cmp              eax, 3
                                                                                        jne   .Lx00039_0
.Lx00039_1:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2264], rax
                                                                                        jmp   n00040_binop_α
.Lx00039_0:
                        lea              rdi, [rbp + 2272]                              # self
                        lea              rsi, [rbp + 2288]                              # other
                        lea              rdx, [rbp + 2256]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00040_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00040_binop_α:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 3
                                                                                        jne   .Lx00041_0
                        mov              rax, qword ptr [rbp + 2264]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 2240], 3
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n00042_assign_α
.Lx00041_0:
                        mov              rdi, qword ptr [rbp + 2256]
                        mov              rsi, qword ptr [rbp + 2264]
                        mov              rdx, qword ptr [rbp + 2288]
                        mov              rcx, qword ptr [rbp + 2296]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00023_disjunction_α
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n00042_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00042_assign_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              rdx, qword ptr [rbp + 2248]
                        mov              qword ptr [1879052304], rax                    # linenum
                        mov              qword ptr [1879052312], rdx
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n00043_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00043_conjunction_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n00024_disjunction_as
n00043_conjunction_β:
                                                                                        jmp   n00023_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00023_disjunction_α:
                        mov              qword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], 0
                        mov              dword ptr [rbp + 48], 0
                                                                                        jmp   n00044_var_α
n00023_disjunction_as:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        jne   .Lx00045_0
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00046_conjunction_α
.Lx00045_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00045_1
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00046_conjunction_α
.Lx00045_1:
                                                                                        jmp   n00046_conjunction_α
n00023_disjunction_β:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 0
                                                                                        je    n00047_disjunction_β
                                                                                        jmp   n00009_disjunction_α
n00023_disjunction_af:
                        add              dword ptr [rbp + 48], 1
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 1
                                                                                        je    n00048_var_α
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00046_conjunction_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n00009_disjunction_α
n00046_conjunction_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00048_var_α:
                        mov              rax, qword ptr [1879052496]                    # lin
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 2112], rax                    # result
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n00049_unop_α
n00048_var_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00049_unop_α:
                        mov              rdi, qword ptr [rbp + 2112]                    # lo
                        mov              rsi, qword ptr [rbp + 2120]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n00050_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00050_lit_integer_α:
                        mov              qword ptr [rbp + 2128], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00051_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n00052_coerce_numeric_α
.Lx00051_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00052_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 5
                                                                                        je    .Lx00053_1
                        cmp              eax, 3
                                                                                        jne   .Lx00053_0
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              eax, 3
                                                                                        jne   .Lx00053_0
.Lx00053_1:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n00054_binop_α
.Lx00053_0:
                        lea              rdi, [rbp + 2096]                              # self
                        lea              rsi, [rbp + 2128]                              # other
                        lea              rdx, [rbp + 2080]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00054_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00054_binop_α:
                        mov              eax, dword ptr [rbp + 2080]
                        cmp              eax, 3
                                                                                        jne   .Lx00055_0
                        mov              rax, qword ptr [rbp + 2088]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 2064], 3
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n00056_assign_α
.Lx00055_0:
                        mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              rdx, qword ptr [rbp + 2128]
                        mov              rcx, qword ptr [rbp + 2136]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00009_disjunction_α
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                                                                                        jmp   n00056_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00056_assign_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              rdx, qword ptr [rbp + 2072]
                        mov              qword ptr [1879052560], rax                    # getword__STATIC__i
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                                                                                        jmp   n00023_disjunction_as
n00056_assign_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00044_var_α:
                        mov              rax, qword ptr [1879052576]                    # getword__STATIC__nonwhite
                        mov              rdx, qword ptr [1879052584]
                        mov              qword ptr [rbp + 2000], rax                    # result
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n00057_var_α
n00044_var_β:
                                                                                        jmp   n00023_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00057_var_α:
                        mov              rax, qword ptr [1879052496]                    # lin
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 2016], rax                    # result
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n00058_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00058_var_α:
                        mov              rax, qword ptr [1879052560]                    # getword__STATIC__i
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 2032], rax                    # result
                        mov              qword ptr [rbp + 2040], rdx
                                                                                        jmp   n00059_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00059_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1944], rax
                        mov              qword ptr [rbp + 1984], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx00060_60:
                        .section         .rodata
.Lbynamegenfn101:       .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn101]                  # fn
                        lea              rsi, [rbp + 1936]                              # args
                        mov              edx, 3                                         # nargs
                        lea              rcx, [rbp + 1984]                              # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              eax, 104
                                                                                        je    n00023_disjunction_af
                                                                                        jmp   n00061_assign_α
n00059_call_builtin_gen_β:
                                                                                        jmp   .Lx00060_60
#-----------------------------------------------------------------------------------------------------------------------
n00061_assign_α:
                        mov              rax, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        mov              qword ptr [1879052560], rax                    # getword__STATIC__i
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n00062_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00062_var_α:
                        mov              rax, qword ptr [1879052560]                    # getword__STATIC__i
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 1904], rax                    # result
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n00063_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00063_assign_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                                                                                        jmp   n00047_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00047_disjunction_α:
                        mov              qword ptr [rbp + 80], 0
                        mov              qword ptr [rbp + 88], 0
                        mov              dword ptr [rbp + 96], 0
                                                                                        jmp   n00064_var_ref_α
n00047_disjunction_as:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        jne   .Lx00065_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00066_conjunction_α
.Lx00065_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00065_1
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n00066_conjunction_α
.Lx00065_1:
                                                                                        jmp   n00066_conjunction_α
n00047_disjunction_β:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 0
                                                                                        je    n00067_disjunction_β
                                                                                        jmp   n00068_disjunction_β
n00047_disjunction_af:
                        add              dword ptr [rbp + 96], 1
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 1
                                                                                        je    n00068_disjunction_α
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00066_conjunction_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00023_disjunction_as
n00066_conjunction_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00068_disjunction_α:
                        mov              qword ptr [rbp + 1264], 0
                        mov              qword ptr [rbp + 1272], 0
                        mov              dword ptr [rbp + 1280], 0
                                                                                        jmp   n00069_var_ref_α
n00068_disjunction_as:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 0
                                                                                        jne   .Lx00070_0
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00047_disjunction_as
.Lx00070_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00070_1
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00047_disjunction_as
.Lx00070_1:
                                                                                        jmp   n00047_disjunction_as
n00068_disjunction_β:
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 0
                                                                                        je    n00009_disjunction_α
                                                                                        jmp   n00071_disjunction_β
n00068_disjunction_af:
                        add              dword ptr [rbp + 1280], 1
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              eax, 1
                                                                                        je    n00071_disjunction_α
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00071_disjunction_α:
                        mov              qword ptr [rbp + 1488], 0
                        mov              qword ptr [rbp + 1496], 0
                        mov              dword ptr [rbp + 1504], 0
                                                                                        jmp   n00072_var_α
n00071_disjunction_as:
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 0
                                                                                        jne   .Lx00073_0
                                                                                        jmp   n00068_disjunction_as
.Lx00073_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00073_1
                                                                                        jmp   n00068_disjunction_as
.Lx00073_1:
                                                                                        jmp   n00068_disjunction_as
n00071_disjunction_β:
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 0
                                                                                        je    n00009_disjunction_α
                                                                                        jmp   n00009_disjunction_α
n00071_disjunction_af:
                        add              dword ptr [rbp + 1504], 1
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 1
                                                                                        je    n00074_var_α
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00075_conjunction_α:
                                                                                        jmp   n00071_disjunction_as
n00075_conjunction_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00074_var_α:
                        mov              rax, qword ptr [1879052560]                    # getword__STATIC__i
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 1872], rax                    # result
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n00076_lit_integer_α
n00074_var_β:
                                                                                        jmp   n00077_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00076_lit_integer_α:
                        mov              qword ptr [rbp + 1888], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00078_0]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00079_coerce_numeric_α
.Lx00078_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00079_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              eax, 5
                                                                                        je    .Lx00080_1
                        cmp              eax, 3
                                                                                        jne   .Lx00080_0
                        mov              eax, dword ptr [rbp + 1888]
                        cmp              eax, 3
                                                                                        jne   .Lx00080_0
.Lx00080_1:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n00081_binop_α
.Lx00080_0:
                        lea              rdi, [rbp + 1872]                              # self
                        lea              rsi, [rbp + 1888]                              # other
                        lea              rdx, [rbp + 1856]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00081_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00081_binop_α:
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              eax, 3
                                                                                        jne   .Lx00082_0
                        mov              rax, qword ptr [rbp + 1864]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1840], 3
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n00083_assign_α
.Lx00082_0:
                        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, qword ptr [rbp + 1888]
                        mov              rcx, qword ptr [rbp + 1896]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00077_var_ref_α
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n00083_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00083_assign_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        mov              qword ptr [1879052560], rax                    # getword__STATIC__i
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n00077_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00077_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052496                                # lin
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                                                                                        jmp   n00084_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00084_var_α:
                        mov              rax, qword ptr [1879052560]                    # getword__STATIC__i
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 1776], rax                    # result
                        mov              qword ptr [rbp + 1784], rdx
                                                                                        jmp   n00085_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00085_lit_integer_α:
                        mov              qword ptr [rbp + 1792], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00086_0]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00087_coerce_numeric_α
.Lx00086_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00087_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              eax, 5
                                                                                        je    .Lx00088_1
                        cmp              eax, 3
                                                                                        jne   .Lx00088_0
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 3
                                                                                        jne   .Lx00088_0
.Lx00088_1:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n00089_binop_α
.Lx00088_0:
                        lea              rdi, [rbp + 1776]                              # self
                        lea              rsi, [rbp + 1792]                              # other
                        lea              rdx, [rbp + 1760]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00089_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00089_binop_α:
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 3
                                                                                        jne   .Lx00090_0
                        mov              rax, qword ptr [rbp + 1768]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1744], 3
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n00091_subscript_α
.Lx00090_0:
                        mov              rdi, qword ptr [rbp + 1760]
                        mov              rsi, qword ptr [rbp + 1768]
                        mov              rdx, qword ptr [rbp + 1792]
                        mov              rcx, qword ptr [rbp + 1800]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    proc_getword_ω
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00091_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00091_subscript_α:
                        mov              rdi, qword ptr [rbp + 1728]                    # base
                        mov              rsi, qword ptr [rbp + 1736]                    # base
                        mov              rdx, qword ptr [rbp + 1744]                    # idx
                        mov              rcx, qword ptr [rbp + 1752]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    proc_getword_ω
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n00092_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00092_deref_α:
                        mov              rdi, qword ptr [rbp + 1808]                    # d
                        mov              rsi, qword ptr [rbp + 1816]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    proc_getword_ω
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n00093_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00093_return_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_getword_γ
#-----------------------------------------------------------------------------------------------------------------------
n00072_var_α:
                        mov              rax, qword ptr [1879052336]                    # alphas
                        mov              rdx, qword ptr [1879052344]
                        mov              qword ptr [rbp + 1664], rax                    # result
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n00094_var_α
n00072_var_β:
                                                                                        jmp   n00071_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00094_var_α:
                        mov              rax, qword ptr [1879052496]                    # lin
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 1680], rax                    # result
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n00095_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00095_var_α:
                        mov              rax, qword ptr [1879052560]                    # getword__STATIC__i
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 1696], rax                    # result
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n00096_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00096_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn126:          .string          "many"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn126]                     # fn
                        lea              rsi, [rbp + 1600]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n00071_disjunction_af
                                                                                        jmp   n00097_assign_α
n00096_call_builtin_icon_β:
                                                                                        jmp   n00071_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00097_assign_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              rdx, qword ptr [rbp + 1592]
                        mov              qword ptr [1879052560], rax                    # getword__STATIC__i
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n00098_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00098_var_α:
                        mov              rax, qword ptr [1879052496]                    # lin
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 1536], rax                    # result
                        mov              qword ptr [rbp + 1544], rdx
                                                                                        jmp   n00099_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00099_var_α:
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n00100_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00100_var_α:
                        mov              rax, qword ptr [1879052560]                    # getword__STATIC__i
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 1568], rax                    # result
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n00101_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00101_subscript_α:
                        mov              rdi, qword ptr [rbp + 1536]                    # arr
                        mov              rsi, qword ptr [rbp + 1544]                    # arr
                        mov              rdx, qword ptr [rbp + 1552]                    # i
                        mov              rcx, qword ptr [rbp + 1560]                    # i
                        mov              r8, qword ptr [rbp + 1568]                     # j
                        mov              r9, qword ptr [rbp + 1576]                     # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    proc_getword_ω
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n00102_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00102_return_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              rdx, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_getword_γ
#-----------------------------------------------------------------------------------------------------------------------
n00069_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052496                                # lin
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                                                                                        jmp   n00103_var_α
n00069_var_ref_β:
                                                                                        jmp   n00068_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00103_var_α:
                        mov              rax, qword ptr [1879052560]                    # getword__STATIC__i
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 1424], rax                    # result
                        mov              qword ptr [rbp + 1432], rdx
                                                                                        jmp   n00104_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00104_subscript_α:
                        mov              rdi, qword ptr [rbp + 1408]                    # base
                        mov              rsi, qword ptr [rbp + 1416]                    # base
                        mov              rdx, qword ptr [rbp + 1424]                    # idx
                        mov              rcx, qword ptr [rbp + 1432]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00068_disjunction_af
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n00105_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00105_deref_α:
                        mov              rdi, qword ptr [rbp + 1440]                    # d
                        mov              rsi, qword ptr [rbp + 1448]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00068_disjunction_af
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                                                                                        jmp   n00106_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00106_lit_string_α:
                        mov              qword ptr [rbp + 1472], 2                      # result
                        mov              dword ptr [rbp + 1476], 1
                        mov              rax, qword ptr [rip + .Lx00107_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n00108_binop_test_α
.Lx00107_0:
                        .quad            .Lx00107_0_s
.Lx00107_0_s:
                        .string          "#"
#-----------------------------------------------------------------------------------------------------------------------
n00108_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1456]                    # lhs
                        mov              rsi, qword ptr [rbp + 1464]                    # lhs
                        mov              rdx, qword ptr [rbp + 1472]                    # rhs
                        mov              rcx, qword ptr [rbp + 1480]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00068_disjunction_af
                        mov              rdi, qword ptr [rbp + 1472]                    # d
                        mov              rsi, qword ptr [rbp + 1480]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n00109_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00109_var_α:
                        mov              rax, qword ptr [1879052496]                    # lin
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 1360], rax                    # result
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n00110_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00110_unop_α:
                        mov              rdi, qword ptr [rbp + 1360]                    # lo
                        mov              rsi, qword ptr [rbp + 1368]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n00111_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00111_lit_integer_α:
                        mov              qword ptr [rbp + 1376], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00112_0]
                        mov              qword ptr [rbp + 1384], rax
                                                                                        jmp   n00113_coerce_numeric_α
.Lx00112_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00113_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 5
                                                                                        je    .Lx00114_1
                        cmp              eax, 3
                                                                                        jne   .Lx00114_0
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              eax, 3
                                                                                        jne   .Lx00114_0
.Lx00114_1:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n00115_binop_α
.Lx00114_0:
                        lea              rdi, [rbp + 1344]                              # self
                        lea              rsi, [rbp + 1376]                              # other
                        lea              rdx, [rbp + 1328]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00115_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00115_binop_α:
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 3
                                                                                        jne   .Lx00116_0
                        mov              rax, qword ptr [rbp + 1336]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1312], 3
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n00117_assign_α
.Lx00116_0:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1384]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00009_disjunction_α
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n00117_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00117_assign_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        mov              qword ptr [1879052560], rax                    # getword__STATIC__i
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n00068_disjunction_as
n00117_assign_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00064_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052496                                # lin
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n00118_var_α
n00064_var_ref_β:
                                                                                        jmp   n00047_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00118_var_α:
                        mov              rax, qword ptr [1879052560]                    # getword__STATIC__i
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 1152], rax                    # result
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n00119_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00119_subscript_α:
                        mov              rdi, qword ptr [rbp + 1136]                    # base
                        mov              rsi, qword ptr [rbp + 1144]                    # base
                        mov              rdx, qword ptr [rbp + 1152]                    # idx
                        mov              rcx, qword ptr [rbp + 1160]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00047_disjunction_af
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                                                                                        jmp   n00120_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00120_deref_α:
                        mov              rdi, qword ptr [rbp + 1168]                    # d
                        mov              rsi, qword ptr [rbp + 1176]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00047_disjunction_af
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n00121_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00121_disjunction_α:
                        mov              qword ptr [rbp + 1200], 0
                        mov              qword ptr [rbp + 1208], 0
                        mov              dword ptr [rbp + 1216], 0
                                                                                        jmp   n00122_lit_string_α
n00121_disjunction_as:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 0
                                                                                        jne   .Lx00123_0
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n00124_binop_test_α
.Lx00123_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00123_1
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n00124_binop_test_α
.Lx00123_1:
                                                                                        jmp   n00124_binop_test_α
n00121_disjunction_β:
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 0
                                                                                        je    n00121_disjunction_af
                                                                                        jmp   n00121_disjunction_af
n00121_disjunction_af:
                        add              dword ptr [rbp + 1216], 1
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 1
                                                                                        je    n00125_lit_string_α
                                                                                        jmp   n00047_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00124_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1184]                    # lhs
                        mov              rsi, qword ptr [rbp + 1192]                    # lhs
                        mov              rdx, qword ptr [rbp + 1200]                    # rhs
                        mov              rcx, qword ptr [rbp + 1208]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00121_disjunction_β
                        mov              rdi, qword ptr [rbp + 1200]                    # d
                        mov              rsi, qword ptr [rbp + 1208]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n00067_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00067_disjunction_α:
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0
                                                                                        jmp   n00126_var_α
n00067_disjunction_as:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        jne   .Lx00127_0
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00047_disjunction_as
.Lx00127_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00127_1
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00047_disjunction_as
.Lx00127_1:
                                                                                        jmp   n00047_disjunction_as
n00067_disjunction_β:
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0
                                                                                        je    n00128_conjunction_β
                                                                                        jmp   n00009_disjunction_α
n00067_disjunction_af:
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 1
                                                                                        je    n00129_var_α
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00129_var_α:
                        mov              rax, qword ptr [1879052560]                    # getword__STATIC__i
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 1088], rax                    # result
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n00130_lit_integer_α
n00129_var_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00130_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00131_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n00132_coerce_numeric_α
.Lx00131_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00132_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              eax, 5
                                                                                        je    .Lx00133_1
                        cmp              eax, 3
                                                                                        jne   .Lx00133_0
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 3
                                                                                        jne   .Lx00133_0
.Lx00133_1:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n00134_binop_α
.Lx00133_0:
                        lea              rdi, [rbp + 1088]                              # self
                        lea              rsi, [rbp + 1104]                              # other
                        lea              rdx, [rbp + 1072]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00134_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00134_binop_α:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 3
                                                                                        jne   .Lx00135_0
                        mov              rax, qword ptr [rbp + 1080]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1056], 3
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n00136_assign_α
.Lx00135_0:
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1104]
                        mov              rcx, qword ptr [rbp + 1112]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00009_disjunction_α
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n00136_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00136_assign_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [1879052560], rax                    # getword__STATIC__i
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n00067_disjunction_as
n00136_assign_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00126_var_α:
                        mov              rax, qword ptr [1879052384]                    # qflag
                        mov              rdx, qword ptr [1879052392]
                        mov              qword ptr [rbp + 1024], rax                    # result
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n00137_unop_test_α
n00126_var_β:
                                                                                        jmp   n00067_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00137_unop_test_α:
                        mov              eax, dword ptr [rbp + 1024]
                        cmp              eax, 104
                                                                                        je    n00067_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00067_disjunction_af
                        mov              qword ptr [rbp + 1008], 0
                        mov              qword ptr [rbp + 1016], 0
                                                                                        jmp   n00138_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00138_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052496                                # lin
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n00139_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00139_var_α:
                        mov              rax, qword ptr [1879052560]                    # getword__STATIC__i
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 960], rax                     # result
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n00140_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00140_subscript_α:
                        mov              rdi, qword ptr [rbp + 944]                     # base
                        mov              rsi, qword ptr [rbp + 952]                     # base
                        mov              rdx, qword ptr [rbp + 960]                     # idx
                        mov              rcx, qword ptr [rbp + 968]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00141_var_α
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n00142_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00142_deref_α:
                        mov              rdi, qword ptr [rbp + 976]                     # d
                        mov              rsi, qword ptr [rbp + 984]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00141_var_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n00143_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00143_assign_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                                                                                        jmp   n00141_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00141_var_α:
                        mov              rax, qword ptr [1879052560]                    # getword__STATIC__i
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 912], rax                     # result
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n00144_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00144_lit_integer_α:
                        mov              qword ptr [rbp + 928], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00145_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n00146_coerce_numeric_α
.Lx00145_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00146_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 5
                                                                                        je    .Lx00147_1
                        cmp              eax, 3
                                                                                        jne   .Lx00147_0
                        mov              eax, dword ptr [rbp + 928]
                        cmp              eax, 3
                                                                                        jne   .Lx00147_0
.Lx00147_1:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n00148_binop_α
.Lx00147_0:
                        lea              rdi, [rbp + 912]                               # self
                        lea              rsi, [rbp + 928]                               # other
                        lea              rdx, [rbp + 896]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00148_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00148_binop_α:
                        mov              eax, dword ptr [rbp + 896]
                        cmp              eax, 3
                                                                                        jne   .Lx00149_0
                        mov              rax, qword ptr [rbp + 904]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 880], 3
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n00150_assign_α
.Lx00149_0:
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              rdx, qword ptr [rbp + 928]
                        mov              rcx, qword ptr [rbp + 936]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00151_disjunction_α
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n00150_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00150_assign_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [1879052560], rax                    # getword__STATIC__i
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n00151_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00151_disjunction_α:
                        mov              qword ptr [rbp + 160], 0
                        mov              qword ptr [rbp + 168], 0
                        mov              dword ptr [rbp + 176], 0
                                                                                        jmp   n00152_var_α
n00151_disjunction_as:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 0
                                                                                        jne   .Lx00153_0
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00151_disjunction_α
.Lx00153_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00153_1
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 168], rax
                                                                                        jmp   n00151_disjunction_α
.Lx00153_1:
                                                                                        jmp   n00151_disjunction_α
n00151_disjunction_β:
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 0
                                                                                        je    n00154_disjunction_β
                                                                                        jmp   n00155_disjunction_β
n00151_disjunction_af:
                        add              dword ptr [rbp + 176], 1
                        mov              eax, dword ptr [rbp + 176]
                        cmp              eax, 1
                                                                                        je    n00156_lit_integer_α
                                                                                        jmp   n00151_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00156_lit_integer_α:
                        mov              qword ptr [rbp + 864], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00157_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00158_assign_α
n00156_lit_integer_β:
                                                                                        jmp   n00159_var_α
.Lx00157_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00158_assign_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
                        mov              qword ptr [1879052560], rax                    # getword__STATIC__i
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n00159_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00159_var_α:
                        mov              rax, qword ptr [1879052304]                    # linenum
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 832], rax                     # result
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n00160_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00160_lit_integer_α:
                        mov              qword ptr [rbp + 848], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00161_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00162_coerce_numeric_α
.Lx00161_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00162_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 832]
                        cmp              eax, 5
                                                                                        je    .Lx00163_1
                        cmp              eax, 3
                                                                                        jne   .Lx00163_0
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 3
                                                                                        jne   .Lx00163_0
.Lx00163_1:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n00164_binop_α
.Lx00163_0:
                        lea              rdi, [rbp + 832]                               # self
                        lea              rsi, [rbp + 848]                               # other
                        lea              rdx, [rbp + 816]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00164_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00164_binop_α:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 3
                                                                                        jne   .Lx00165_0
                        mov              rax, qword ptr [rbp + 824]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 800], 3
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00166_assign_α
.Lx00165_0:
                        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00155_disjunction_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n00166_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00166_assign_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [1879052304], rax                    # linenum
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n00155_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00155_disjunction_α:
                        mov              qword ptr [rbp + 704], 0
                        mov              qword ptr [rbp + 712], 0
                        mov              dword ptr [rbp + 720], 0
                                                                                        jmp   n00167_var_α
n00155_disjunction_as:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 0
                                                                                        jne   .Lx00168_0
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n00169_assign_α
.Lx00168_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00168_1
                                                                                        jmp   n00169_assign_α
.Lx00168_1:
                                                                                        jmp   n00169_assign_α
n00155_disjunction_β:
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 0
                                                                                        je    n00155_disjunction_af
                                                                                        jmp   n00155_disjunction_af
n00155_disjunction_af:
                        add              dword ptr [rbp + 720], 1
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 1
                                                                                        je    proc_getword_ω
                                                                                        jmp   n00151_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00169_assign_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [1879052496], rax                    # lin
                        mov              qword ptr [1879052504], rdx
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n00170_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00170_conjunction_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00151_disjunction_as
n00170_conjunction_β:
                                                                                        jmp   n00151_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00167_var_α:
                        mov              rax, qword ptr [1879052400]                    # infile
                        mov              rdx, qword ptr [1879052408]
                        mov              qword ptr [rbp + 784], rax                     # result
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00171_call_builtin_icon_α
n00167_var_β:
                                                                                        jmp   n00155_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00171_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lrkfn466:              .string          "read"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn466]                         # fn
                        lea              rsi, [rbp + 752]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 104
                                                                                        je    n00155_disjunction_af
                                                                                        jmp   n00155_disjunction_as
n00171_call_builtin_icon_β:
                                                                                        jmp   n00155_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00152_var_α:
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00172_lit_charset_α
n00152_var_β:
                                                                                        jmp   n00151_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00172_lit_charset_α:
                        mov              qword ptr [rbp + 608], 2                       # result
                        mov              dword ptr [rbp + 612], -1
                        mov              rax, qword ptr [rip + .Lx00173_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00174_binop_α
.Lx00173_0:
                        .quad            .Lx00173_0_s
.Lx00173_0_s:
                        .string          "\\"
#-----------------------------------------------------------------------------------------------------------------------
n00174_binop_α:
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        call             rt_cunion@PLT
                        cmp              eax, 104
                                                                                        je    n00151_disjunction_af
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n00175_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00175_var_α:
                        mov              rax, qword ptr [1879052496]                    # lin
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 624], rax                     # result
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n00176_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00176_var_α:
                        mov              rax, qword ptr [1879052560]                    # getword__STATIC__i
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 640], rax                     # result
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n00177_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00177_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 520], rax
                        mov              qword ptr [rbp + 560], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx00178_60:
                        .section         .rodata
.Lbynamegenfn187:       .string          "upto"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn187]                  # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 3                                         # nargs
                        lea              rcx, [rbp + 560]                               # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n00151_disjunction_af
                                                                                        jmp   n00179_lit_integer_α
n00177_call_builtin_gen_β:
                                                                                        jmp   .Lx00178_60
#-----------------------------------------------------------------------------------------------------------------------
n00179_lit_integer_α:
                        mov              qword ptr [rbp + 656], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00180_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00181_coerce_numeric_α
.Lx00180_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00181_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 5
                                                                                        je    .Lx00182_1
                        cmp              eax, 3
                                                                                        jne   .Lx00182_0
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 3
                                                                                        jne   .Lx00182_0
.Lx00182_1:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00183_binop_α
.Lx00182_0:
                        lea              rdi, [rbp + 496]                               # self
                        lea              rsi, [rbp + 656]                               # other
                        lea              rdx, [rbp + 480]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00183_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00183_binop_α:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 3
                                                                                        jne   .Lx00184_0
                        mov              rax, qword ptr [rbp + 488]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 464], 3
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00185_assign_α
.Lx00184_0:
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00151_disjunction_af
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n00185_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00185_assign_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [1879052560], rax                    # getword__STATIC__i
                        mov              qword ptr [1879052568], rdx
                                                                                        jmp   n00154_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00154_disjunction_α:
                        mov              qword ptr [rbp + 192], 0
                        mov              qword ptr [rbp + 200], 0
                        mov              dword ptr [rbp + 208], 0
                                                                                        jmp   n00186_var_ref_α
n00154_disjunction_as:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 0
                                                                                        jne   .Lx00187_0
                                                                                        jmp   n00151_disjunction_as
.Lx00187_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00187_1
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00151_disjunction_as
.Lx00187_1:
                                                                                        jmp   n00151_disjunction_as
n00154_disjunction_β:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 0
                                                                                        je    n00151_disjunction_α
                                                                                        jmp   n00151_disjunction_α
n00154_disjunction_af:
                        add              dword ptr [rbp + 208], 1
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 1
                                                                                        je    n00188_var_α
                                                                                        jmp   n00151_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00188_var_α:
                        mov              rax, qword ptr [1879052560]                    # getword__STATIC__i
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 416], rax                     # result
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n00189_lit_integer_α
n00188_var_β:
                                                                                        jmp   n00151_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00189_lit_integer_α:
                        mov              qword ptr [rbp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00190_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00191_coerce_numeric_α
.Lx00190_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00191_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 5
                                                                                        je    .Lx00192_1
                        cmp              eax, 3
                                                                                        jne   .Lx00192_0
                        mov              eax, dword ptr [rbp + 432]
                        cmp              eax, 3
                                                                                        jne   .Lx00192_0
.Lx00192_1:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n00193_binop_α
.Lx00192_0:
                        lea              rdi, [rbp + 416]                               # self
                        lea              rsi, [rbp + 432]                               # other
                        lea              rdx, [rbp + 400]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00193_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00193_binop_α:
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 3
                                                                                        jne   .Lx00194_0
                        mov              rax, qword ptr [rbp + 408]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 384], 3
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n00195_assign_α
.Lx00194_0:
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 432]
                        mov              rcx, qword ptr [rbp + 440]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00151_disjunction_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00195_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00195_assign_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [1879052560], rax                    # getword__STATIC__i
                        mov              qword ptr [1879052568], rdx
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n00154_disjunction_as
n00195_assign_β:
                                                                                        jmp   n00151_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00186_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052496                                # lin
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n00196_var_α
n00186_var_ref_β:
                                                                                        jmp   n00154_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00196_var_α:
                        mov              rax, qword ptr [1879052560]                    # getword__STATIC__i
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 288], rax                     # result
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n00197_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00197_lit_integer_α:
                        mov              qword ptr [rbp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00198_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n00199_coerce_numeric_α
.Lx00198_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00199_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 5
                                                                                        je    .Lx00200_1
                        cmp              eax, 3
                                                                                        jne   .Lx00200_0
                        mov              eax, dword ptr [rbp + 304]
                        cmp              eax, 3
                                                                                        jne   .Lx00200_0
.Lx00200_1:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00201_binop_α
.Lx00200_0:
                        lea              rdi, [rbp + 288]                               # self
                        lea              rsi, [rbp + 304]                               # other
                        lea              rdx, [rbp + 272]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00201_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00201_binop_α:
                        mov              eax, dword ptr [rbp + 272]
                        cmp              eax, 3
                                                                                        jne   .Lx00202_0
                        mov              rax, qword ptr [rbp + 280]
                        mov              rcx, 1
                        sub              rax, rcx
                        mov              qword ptr [rbp + 256], 3
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00203_subscript_α
.Lx00202_0:
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n00154_disjunction_af
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00203_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00203_subscript_α:
                        mov              rdi, qword ptr [rbp + 240]                     # base
                        mov              rsi, qword ptr [rbp + 248]                     # base
                        mov              rdx, qword ptr [rbp + 256]                     # idx
                        mov              rcx, qword ptr [rbp + 264]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00154_disjunction_af
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n00204_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00204_deref_α:
                        mov              rdi, qword ptr [rbp + 320]                     # d
                        mov              rsi, qword ptr [rbp + 328]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00154_disjunction_af
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n00205_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00205_var_α:
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n00206_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00206_binop_test_α:
                        mov              rdi, qword ptr [rbp + 336]                     # lhs
                        mov              rsi, qword ptr [rbp + 344]                     # lhs
                        mov              rdx, qword ptr [rbp + 2864]                    # rhs
                        mov              rcx, qword ptr [rbp + 2872]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00154_disjunction_af
                        mov              rdi, qword ptr [rbp + 2864]                    # d
                        mov              rsi, qword ptr [rbp + 2872]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00128_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00128_conjunction_α:
                                                                                        jmp   n00067_disjunction_as
n00128_conjunction_β:
                                                                                        jmp   n00009_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00125_lit_string_α:
                        mov              qword ptr [rbp + 1248], 2                      # result
                        mov              dword ptr [rbp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx00207_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n00121_disjunction_as
n00125_lit_string_β:
                                                                                        jmp   n00121_disjunction_af
.Lx00207_0:
                        .quad            .Lx00207_0_s
.Lx00207_0_s:
                        .string          "\""
#-----------------------------------------------------------------------------------------------------------------------
n00122_lit_string_α:
                        mov              qword ptr [rbp + 1232], 2                      # result
                        mov              dword ptr [rbp + 1236], 1
                        mov              rax, qword ptr [rip + .Lx00208_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n00121_disjunction_as
n00122_lit_string_β:
                                                                                        jmp   n00121_disjunction_af
.Lx00208_0:
                        .quad            .Lx00208_0_s
.Lx00208_0_s:
                        .string          "'"
#-----------------------------------------------------------------------------------------------------------------------
n00027_var_α:
                        mov              rax, qword ptr [1879052560]                    # getword__STATIC__i
                        mov              rdx, qword ptr [1879052568]
                        mov              qword ptr [rbp + 2464], rax                    # result
                        mov              qword ptr [rbp + 2472], rdx
                                                                                        jmp   n00209_var_α
n00027_var_β:
                                                                                        jmp   n00021_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00209_var_α:
                        mov              rax, qword ptr [1879052496]                    # lin
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 2528], rax                    # result
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n00210_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00210_unop_α:
                        mov              rdi, qword ptr [rbp + 2528]                    # lo
                        mov              rsi, qword ptr [rbp + 2536]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                                                                                        jmp   n00211_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00211_lit_integer_α:
                        mov              qword ptr [rbp + 2544], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00212_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n00213_coerce_numeric_α
.Lx00212_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00213_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2512]
                        cmp              eax, 5
                                                                                        je    .Lx00214_1
                        cmp              eax, 3
                                                                                        jne   .Lx00214_0
                        mov              eax, dword ptr [rbp + 2544]
                        cmp              eax, 3
                                                                                        jne   .Lx00214_0
.Lx00214_1:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n00215_binop_α
.Lx00214_0:
                        lea              rdi, [rbp + 2512]                              # self
                        lea              rsi, [rbp + 2544]                              # other
                        lea              rdx, [rbp + 2496]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00215_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00215_binop_α:
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 3
                                                                                        jne   .Lx00216_0
                        mov              rax, qword ptr [rbp + 2504]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 2480], 3
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n00217_binop_test_α
.Lx00216_0:
                        mov              rdi, qword ptr [rbp + 2496]
                        mov              rsi, qword ptr [rbp + 2504]
                        mov              rdx, qword ptr [rbp + 2544]
                        mov              rcx, qword ptr [rbp + 2552]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00021_disjunction_af
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                                                                                        jmp   n00217_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00217_binop_test_α:
                        mov              eax, dword ptr [rbp + 2464]
                        cmp              eax, 112
                                                                                        je    .Lx00218_0
                        mov              eax, dword ptr [rbp + 2480]
                        cmp              eax, 112
                                                                                        je    .Lx00218_0
                        mov              eax, dword ptr [rbp + 2464]
                        cmp              eax, 3
                                                                                        jne   .Lx00218_2
                        mov              eax, dword ptr [rbp + 2480]
                        cmp              eax, 3
                                                                                        jne   .Lx00218_2
.Lx00218_1:
                        mov              rax, qword ptr [rbp + 2472]
                        mov              rcx, qword ptr [rbp + 2488]
                        cmp              rax, rcx
                                                                                        jne   n00021_disjunction_af
                        mov              rcx, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2448], rcx
                        mov              rcx, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2456], rcx
                                                                                        jmp   n00021_disjunction_as
.Lx00218_0:
                        mov              rdi, qword ptr [rbp + 2464]                    # a
                        mov              rsi, qword ptr [rbp + 2472]                    # a
                        mov              rdx, qword ptr [rbp + 2480]                    # b
                        mov              rcx, qword ptr [rbp + 2488]                    # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 2448]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00218_1
                        cmp              eax, 1
                                                                                        je    n00021_disjunction_af
                                                                                        jmp   n00021_disjunction_as
.Lx00218_2:
                        mov              rdi, qword ptr [rbp + 2464]                    # lhs
                        mov              rsi, qword ptr [rbp + 2472]                    # lhs
                        mov              rdx, qword ptr [rbp + 2480]                    # rhs
                        mov              rcx, qword ptr [rbp + 2488]                    # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00021_disjunction_af
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n00021_disjunction_as
n00217_binop_test_β:
                                                                                        jmp   n00021_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00025_var_α:
                        mov              rax, qword ptr [1879052496]                    # lin
                        mov              rdx, qword ptr [1879052504]
                        mov              qword ptr [rbp + 2432], rax                    # result
                        mov              qword ptr [rbp + 2440], rdx
                                                                                        jmp   n00219_unop_test_α
n00025_var_β:
                                                                                        jmp   n00021_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00219_unop_test_α:
                        mov              eax, dword ptr [rbp + 2432]
                        cmp              eax, 104
                                                                                        je    n00021_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00021_disjunction_af
                        mov              qword ptr [rbp + 2416], 0
                        mov              qword ptr [rbp + 2424], 0
                                                                                        jmp   n00021_disjunction_as
n00219_unop_test_β:
                                                                                        jmp   n00021_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00018_var_α:
                        mov              rax, qword ptr [1879052368]                    # buffer
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 2688], rax                    # result
                        mov              qword ptr [rbp + 2696], rdx
                                                                                        jmp   n00220_unop_α
n00018_var_β:
                                                                                        jmp   n00009_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00220_unop_α:
                        mov              rdi, qword ptr [rbp + 2688]                    # lo
                        mov              rsi, qword ptr [rbp + 2696]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00221_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00221_lit_integer_α:
                        mov              qword ptr [rbp + 2704], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00222_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n00223_binop_test_α
.Lx00222_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00223_binop_test_α:
                        mov              eax, dword ptr [rbp + 2672]
                        cmp              eax, 112
                                                                                        je    .Lx00224_0
                        mov              eax, dword ptr [rbp + 2704]
                        cmp              eax, 112
                                                                                        je    .Lx00224_0
                        mov              eax, dword ptr [rbp + 2672]
                        cmp              eax, 3
                                                                                        jne   .Lx00224_2
                        mov              eax, dword ptr [rbp + 2704]
                        cmp              eax, 3
                                                                                        jne   .Lx00224_2
.Lx00224_1:
                        mov              rax, qword ptr [rbp + 2680]
                        mov              rcx, qword ptr [rbp + 2712]
                        cmp              rax, rcx
                                                                                        jle   n00009_disjunction_af
                        mov              rcx, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2656], rcx
                        mov              rcx, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2664], rcx
                                                                                        jmp   n00225_var_α
.Lx00224_0:
                        mov              rdi, qword ptr [rbp + 2672]                    # a
                        mov              rsi, qword ptr [rbp + 2680]                    # a
                        mov              rdx, qword ptr [rbp + 2704]                    # b
                        mov              rcx, qword ptr [rbp + 2712]                    # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 2656]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00224_1
                        cmp              eax, 1
                                                                                        je    n00009_disjunction_af
                                                                                        jmp   n00225_var_α
.Lx00224_2:
                        mov              rdi, qword ptr [rbp + 2672]                    # lhs
                        mov              rsi, qword ptr [rbp + 2680]                    # lhs
                        mov              rdx, qword ptr [rbp + 2704]                    # rhs
                        mov              rcx, qword ptr [rbp + 2712]                    # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00009_disjunction_af
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n00225_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00225_var_α:
                        mov              rax, qword ptr [1879052368]                    # buffer
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 2640], rax                    # result
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n00226_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00226_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2616], rax
                        .section         .rodata
.Lrkfn518:              .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn518]                         # fn
                        lea              rsi, [rbp + 2608]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              eax, 104
                                                                                        je    proc_getword_ω
                                                                                        jmp   n00227_return_α
n00226_call_builtin_icon_β:
                                                                                        jmp   proc_getword_ω
#-----------------------------------------------------------------------------------------------------------------------
n00227_return_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              rdx, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_getword_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_getword_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_getword_β:
                                                                                        jmp   proc_getword_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_getword_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 2944]
                        mov              rcx, qword ptr [rbp + 2920]
                        mov              rbp, qword ptr [rbp + 2936]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_getword_ω:
                        lea              rsp, [rbp + 2944]
                        mov              rcx, qword ptr [rbp + 2928]
                        mov              rbp, qword ptr [rbp + 2936]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_getword_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00228_2]
                        lea              rdx, [rip + .Lx00228_3]
                                                                                        jmp   proc_getword_α
.Lx00228_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00228_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_format_α
proc_format_α:
                        sub              rsp, 2368
                        mov              qword ptr [rsp + 2344], rcx
                        mov              qword ptr [rsp + 2352], rdx
                        mov              qword ptr [rsp + 2360], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 2336
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 9
                        call             rt_icn_zframe_args_install@PLT
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
n00234_assign_α:
                        mov              rax, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   n00235_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00235_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00236_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00236_assign_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n00237_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00237_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n00238_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00238_iterate_α:
                        mov              qword ptr [rbp + 240], 0
.Lx00239_0:
                        mov              rdi, qword ptr [rbp + 256]                     # obj
                        mov              rsi, qword ptr [rbp + 264]                     # obj
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              rax, 104
                                                                                        je    n00240_var_α
                                                                                        jmp   n00241_assign_α
n00238_iterate_β:
                        inc              qword ptr [rbp + 240]
                                                                                        jmp   .Lx00239_0
#-----------------------------------------------------------------------------------------------------------------------
n00241_assign_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                                                                                        jmp   n00242_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00242_bound_α:
                        mov              qword ptr [rbp + 272], rsp
                                                                                        jmp   n00243_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00243_var_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n00244_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00244_iterate_α:
                        mov              qword ptr [rbp + 336], 0
.Lx00245_0:
                        mov              rdi, qword ptr [rbp + 352]                     # obj
                        mov              rsi, qword ptr [rbp + 360]                     # obj
                        mov              rdx, qword ptr [rbp + 336]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              rax, 104
                                                                                        je    n00246_unmark_α
                                                                                        jmp   n00247_assign_α
n00244_iterate_β:
                        inc              qword ptr [rbp + 336]
                                                                                        jmp   .Lx00245_0
#-----------------------------------------------------------------------------------------------------------------------
n00247_assign_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                                                                                        jmp   n00248_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00248_bound_α:
                        mov              qword ptr [rbp + 368], rsp
                                                                                        jmp   n00249_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00249_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n00250_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00250_lit_integer_α:
                        mov              qword ptr [rbp + 1488], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00251_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n00252_subscript_α
.Lx00251_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00252_subscript_α:
                        mov              rdi, qword ptr [rbp + 1472]                    # base
                        mov              rsi, qword ptr [rbp + 1480]                    # base
                        mov              rdx, qword ptr [rbp + 1488]                    # idx
                        mov              rcx, qword ptr [rbp + 1496]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00253_var_α
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                                                                                        jmp   n00254_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00254_deref_α:
                        mov              rdi, qword ptr [rbp + 1504]                    # d
                        mov              rsi, qword ptr [rbp + 1512]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00253_var_α
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n00255_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00255_lit_integer_α:
                        mov              qword ptr [rbp + 1536], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00256_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n00257_lit_string_α
.Lx00256_0:
                        .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n00257_lit_string_α:
                        mov              qword ptr [rbp + 1552], 2                      # result
                        mov              dword ptr [rbp + 1556], 1
                        mov              rax, qword ptr [rip + .Lx00258_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n00259_call_builtin_icon_α
.Lx00258_0:
                        .quad            .Lx00258_0_s
.Lx00258_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00259_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1416], rax
                        .section         .rodata
.Lrkfn665:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn665]                         # fn
                        lea              rsi, [rbp + 1408]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 104
                                                                                        je    n00253_var_α
                                                                                        jmp   n00260_var_ref_α
n00259_call_builtin_icon_β:
                                                                                        jmp   n00253_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00260_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n00261_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00261_lit_integer_α:
                        mov              qword ptr [rbp + 1664], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00262_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n00263_subscript_α
.Lx00262_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n00263_subscript_α:
                        mov              rdi, qword ptr [rbp + 1648]                    # base
                        mov              rsi, qword ptr [rbp + 1656]                    # base
                        mov              rdx, qword ptr [rbp + 1664]                    # idx
                        mov              rcx, qword ptr [rbp + 1672]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00253_var_α
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                                                                                        jmp   n00264_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00264_deref_α:
                        mov              rdi, qword ptr [rbp + 1680]                    # d
                        mov              rsi, qword ptr [rbp + 1688]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00253_var_α
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n00265_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00265_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n00266_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00266_lit_integer_α:
                        mov              qword ptr [rbp + 1760], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00267_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n00268_coerce_numeric_α
.Lx00267_0:
                        .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n00268_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 5
                                                                                        je    .Lx00269_1
                        cmp              eax, 3
                                                                                        jne   .Lx00269_0
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              eax, 3
                                                                                        jne   .Lx00269_0
.Lx00269_1:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n00270_binop_α
.Lx00269_0:
                        lea              rdi, [rbp + 2256]                              # self
                        lea              rsi, [rbp + 1760]                              # other
                        lea              rdx, [rbp + 1728]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00270_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00270_binop_α:
                        mov              eax, dword ptr [rbp + 1728]
                        cmp              eax, 3
                                                                                        jne   .Lx00271_0
                        mov              rax, qword ptr [rbp + 1736]
                        mov              rcx, 16
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1712], 3
                        mov              qword ptr [rbp + 1720], rax
                                                                                        jmp   n00272_lit_string_α
.Lx00271_0:
                        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
                        mov              rdx, qword ptr [rbp + 1760]
                        mov              rcx, qword ptr [rbp + 1768]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n00253_var_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n00272_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00272_lit_string_α:
                        mov              qword ptr [rbp + 1776], 2                      # result
                        mov              dword ptr [rbp + 1780], 1
                        mov              rax, qword ptr [rip + .Lx00273_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n00274_call_builtin_icon_α
.Lx00273_0:
                        .quad            .Lx00273_0_s
.Lx00273_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00274_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1592], rax
                        .section         .rodata
.Lrkfn679:              .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn679]                         # fn
                        lea              rsi, [rbp + 1584]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              eax, 104
                                                                                        je    n00253_var_α
                                                                                        jmp   n00275_binop_α
n00274_call_builtin_icon_β:
                                                                                        jmp   n00253_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00275_binop_α:
                        mov              rdi, qword ptr [rbp + 1392]                    # a
                        mov              rsi, qword ptr [rbp + 1400]                    # a
                        mov              rdx, qword ptr [rbp + 1568]                    # b
                        mov              rcx, qword ptr [rbp + 1576]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n00276_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00276_assign_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              rdx, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n00253_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00253_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00277_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00277_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n00278_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00278_lit_integer_α:
                        mov              qword ptr [rbp + 880], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00279_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n00280_var_α
.Lx00279_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n00280_var_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n00281_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00281_unop_α:
                        mov              rdi, qword ptr [rbp + 2224]                    # lo
                        mov              rsi, qword ptr [rbp + 2232]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n00282_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00282_to_α:
                        mov              rdi, qword ptr [rbp + 880]                     # v
                        mov              rsi, qword ptr [rbp + 888]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 880], 3
                        mov              qword ptr [rbp + 888], rax
                        mov              rdi, qword ptr [rbp + 896]                     # v
                        mov              rsi, qword ptr [rbp + 904]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 896], 3
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 864], rax
.Lx00283_0:
                        mov              rax, qword ptr [rbp + 864]
                        mov              rcx, qword ptr [rbp + 904]
                        cmp              rax, rcx
                                                                                        jg    n00284_disjunction_α
                        mov              qword ptr [rbp + 848], 3
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00285_subscript_α
n00282_to_β:
                        inc              qword ptr [rbp + 864]
                                                                                        jmp   .Lx00283_0
#-----------------------------------------------------------------------------------------------------------------------
n00285_subscript_α:
                        mov              rdi, qword ptr [rbp + 832]                     # base
                        mov              rsi, qword ptr [rbp + 840]                     # base
                        mov              rdx, qword ptr [rbp + 848]                     # idx
                        mov              rcx, qword ptr [rbp + 856]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00282_to_β
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n00286_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00286_deref_α:
                        mov              rdi, qword ptr [rbp + 928]                     # d
                        mov              rsi, qword ptr [rbp + 936]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00282_to_β
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n00287_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00287_var_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00288_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00288_lit_string_α:
                        mov              qword ptr [rbp + 976], 2                       # result
                        mov              dword ptr [rbp + 980], 1
                        mov              rax, qword ptr [rip + .Lx00289_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n00290_call_builtin_icon_α
.Lx00289_0:
                        .quad            .Lx00289_0_s
.Lx00289_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n00290_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn698:              .string          "center"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn698]                         # fn
                        lea              rsi, [rbp + 768]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n00282_to_β
                                                                                        jmp   n00291_binop_α
n00290_call_builtin_icon_β:
                                                                                        jmp   n00282_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00291_binop_α:
                        mov              rdi, qword ptr [rbp + 2272]                    # a
                        mov              rsi, qword ptr [rbp + 2280]                    # a
                        mov              rdx, qword ptr [rbp + 752]                     # b
                        mov              rcx, qword ptr [rbp + 760]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n00292_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00292_assign_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n00293_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00293_bound_α:
                        mov              qword ptr [rbp + 992], rsp
                                                                                        jmp   n00294_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00294_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00295_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00295_var_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n00296_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00296_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 5
                                                                                        je    .Lx00297_1
                        cmp              eax, 3
                                                                                        jne   .Lx00297_0
                        mov              eax, dword ptr [rbp + 2288]
                        cmp              eax, 3
                                                                                        jne   .Lx00297_0
.Lx00297_1:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n00298_coerce_numeric_α
.Lx00297_0:
                        lea              rdi, [rbp + 2240]                              # self
                        lea              rsi, [rbp + 2288]                              # other
                        lea              rdx, [rbp + 1328]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00298_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00298_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2288]
                        cmp              eax, 5
                                                                                        je    .Lx00299_1
                        cmp              eax, 3
                                                                                        jne   .Lx00299_0
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 3
                                                                                        jne   .Lx00299_0
.Lx00299_1:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n00300_binop_α
.Lx00299_0:
                        lea              rdi, [rbp + 2288]                              # self
                        lea              rsi, [rbp + 2240]                              # other
                        lea              rdx, [rbp + 1312]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00300_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00300_binop_α:
                        mov              eax, dword ptr [rbp + 1328]
                        cmp              eax, 3
                                                                                        jne   .Lx00301_0
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              eax, 3
                                                                                        jne   .Lx00301_0
                        mov              rax, qword ptr [rbp + 1336]
                        mov              rcx, qword ptr [rbp + 1320]
                        add              rax, rcx
                        mov              qword ptr [rbp + 1296], 3
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n00302_assign_α
.Lx00301_0:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1312]
                        mov              rcx, qword ptr [rbp + 1320]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00303_disjunction_α
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n00302_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00302_assign_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                                                                                        jmp   n00303_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00303_disjunction_α:
                        mov              qword ptr [rbp + 1056], 0
                        mov              qword ptr [rbp + 1064], 0
                        mov              dword ptr [rbp + 1072], 0
                                                                                        jmp   n00304_var_α
n00303_disjunction_as:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 0
                                                                                        jne   .Lx00305_0
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n00306_conjunction_α
.Lx00305_0:
                                                                                        jmp   n00306_conjunction_α
n00303_disjunction_β:
                        mov              eax, dword ptr [rbp + 1072]
                                                                                        jmp   n00307_unmark_α
n00303_disjunction_af:
                        add              dword ptr [rbp + 1072], 1
                        mov              eax, dword ptr [rbp + 1072]
                                                                                        jmp   n00307_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00306_conjunction_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n00307_unmark_α
n00306_conjunction_β:
                                                                                        jmp   n00307_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00304_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n00308_var_α
n00304_var_β:
                                                                                        jmp   n00303_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00308_var_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00309_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00309_var_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n00310_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00310_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2304]
                        cmp              eax, 5
                                                                                        je    .Lx00311_1
                        cmp              eax, 3
                                                                                        jne   .Lx00311_0
                        mov              eax, dword ptr [rbp + 2288]
                        cmp              eax, 3
                                                                                        jne   .Lx00311_0
.Lx00311_1:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n00312_coerce_numeric_α
.Lx00311_0:
                        lea              rdi, [rbp + 2304]                              # self
                        lea              rsi, [rbp + 2288]                              # other
                        lea              rdx, [rbp + 1248]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00312_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00312_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 2288]
                        cmp              eax, 5
                                                                                        je    .Lx00313_1
                        cmp              eax, 3
                                                                                        jne   .Lx00313_0
                        mov              eax, dword ptr [rbp + 2304]
                        cmp              eax, 3
                                                                                        jne   .Lx00313_0
.Lx00313_1:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n00314_binop_α
.Lx00313_0:
                        lea              rdi, [rbp + 2288]                              # self
                        lea              rsi, [rbp + 2304]                              # other
                        lea              rdx, [rbp + 1232]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00314_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00314_binop_α:
                        mov              eax, dword ptr [rbp + 1248]
                        cmp              eax, 3
                                                                                        jne   .Lx00315_0
                        mov              eax, dword ptr [rbp + 1232]
                        cmp              eax, 3
                                                                                        jne   .Lx00315_0
                        mov              rax, qword ptr [rbp + 1256]
                        mov              rcx, qword ptr [rbp + 1240]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 1216], 3
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n00316_binop_test_α
.Lx00315_0:
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              rdx, qword ptr [rbp + 1232]
                        mov              rcx, qword ptr [rbp + 1240]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    n00303_disjunction_af
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n00316_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00316_binop_test_α:
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 112
                                                                                        je    .Lx00317_0
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 112
                                                                                        je    .Lx00317_0
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 3
                                                                                        jne   .Lx00317_2
                        mov              eax, dword ptr [rbp + 1216]
                        cmp              eax, 3
                                                                                        jne   .Lx00317_2
.Lx00317_1:
                        mov              rax, qword ptr [rbp + 2248]
                        mov              rcx, qword ptr [rbp + 1224]
                        cmp              rax, rcx
                                                                                        jl    n00303_disjunction_af
                        mov              rcx, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rcx
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rcx
                                                                                        jmp   n00318_var_α
.Lx00317_0:
                        mov              rdi, qword ptr [rbp + 2240]                    # a
                        mov              rsi, qword ptr [rbp + 2248]                    # a
                        mov              rdx, qword ptr [rbp + 1216]                    # b
                        mov              rcx, qword ptr [rbp + 1224]                    # b
                        mov              r8d, 8                                         # op
                        lea              r9, [rbp + 1184]                               # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00317_1
                        cmp              eax, 1
                                                                                        je    n00303_disjunction_af
                                                                                        jmp   n00318_var_α
.Lx00317_2:
                        mov              rdi, qword ptr [rbp + 2240]                    # lhs
                        mov              rsi, qword ptr [rbp + 2248]                    # lhs
                        mov              rdx, qword ptr [rbp + 1216]                    # rhs
                        mov              rcx, qword ptr [rbp + 1224]                    # rhs
                        mov              r8d, 8                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00303_disjunction_af
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n00318_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00318_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00319_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00319_lit_string_α:
                        mov              qword ptr [rbp + 1168], 2                      # result
                        mov              dword ptr [rbp + 1172], 6
                        mov              rax, qword ptr [rip + .Lx00320_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00321_binop_α
.Lx00320_0:
                        .quad            .Lx00320_0_s
.Lx00320_0_s:
                        .string          "\n\t\t\t\t\t"
#-----------------------------------------------------------------------------------------------------------------------
n00321_binop_α:
                        mov              rdi, qword ptr [rbp + 2272]                    # a
                        mov              rsi, qword ptr [rbp + 2280]                    # a
                        mov              rdx, qword ptr [rbp + 1168]                    # b
                        mov              rcx, qword ptr [rbp + 1176]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n00322_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00322_assign_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                                                                                        jmp   n00323_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00323_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n00324_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00324_assign_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              rdx, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n00325_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00325_conjunction_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n00303_disjunction_as
n00325_conjunction_β:
                                                                                        jmp   n00307_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00307_unmark_α:
                        mov              rsp, qword ptr [rbp + 992]
                                                                                        jmp   n00282_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00284_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n00326_var_α
n00284_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx00327_0
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00328_var_α
.Lx00327_0:
                                                                                        jmp   n00328_var_α
n00284_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                                                                                        jmp   n00328_var_α
n00284_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                                                                                        jmp   n00328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00326_var_α:
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 696], rax
                                                                                        jmp   n00329_var_α
n00326_var_β:
                                                                                        jmp   n00284_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00329_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n00330_binop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00330_binop_test_α:
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 112
                                                                                        je    .Lx00331_0
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 112
                                                                                        je    .Lx00331_0
                        mov              eax, dword ptr [rbp + 2240]
                        cmp              eax, 3
                                                                                        jne   .Lx00331_2
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 3
                                                                                        jne   .Lx00331_2
.Lx00331_1:
                        mov              rax, qword ptr [rbp + 2248]
                        mov              rcx, qword ptr [rbp + 2264]
                        cmp              rax, rcx
                                                                                        jne   n00284_disjunction_af
                        mov              rcx, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 672], rcx
                        mov              rcx, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 680], rcx
                                                                                        jmp   n00332_var_α
.Lx00331_0:
                        mov              rdi, qword ptr [rbp + 2240]                    # a
                        mov              rsi, qword ptr [rbp + 2248]                    # a
                        mov              rdx, qword ptr [rbp + 2256]                    # b
                        mov              rcx, qword ptr [rbp + 2264]                    # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 672]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx00331_1
                        cmp              eax, 1
                                                                                        je    n00284_disjunction_af
                                                                                        jmp   n00332_var_α
.Lx00331_2:
                        mov              rdi, qword ptr [rbp + 2240]                    # lhs
                        mov              rsi, qword ptr [rbp + 2248]                    # lhs
                        mov              rdx, qword ptr [rbp + 2256]                    # rhs
                        mov              rcx, qword ptr [rbp + 2264]                    # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00284_disjunction_af
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n00332_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00332_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00333_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00333_lit_integer_α:
                        mov              qword ptr [rbp + 640], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00334_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00335_lit_integer_α
.Lx00334_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00335_lit_integer_α:
                        mov              qword ptr [rbp + 656], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00336_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00337_subscript_α
.Lx00336_0:
                        .quad            18446744073709551610
#-----------------------------------------------------------------------------------------------------------------------
n00337_subscript_α:
                        mov              rdi, qword ptr [rbp + 624]                     # arr
                        mov              rsi, qword ptr [rbp + 632]                     # arr
                        mov              rdx, qword ptr [rbp + 640]                     # i
                        mov              rcx, qword ptr [rbp + 648]                     # i
                        mov              r8, qword ptr [rbp + 656]                      # j
                        mov              r9, qword ptr [rbp + 664]                      # j
                        call             subscript_get2@PLT
                        cmp              eax, 104
                                                                                        je    n00328_var_α
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n00338_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00338_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n00284_disjunction_as
n00338_assign_β:
                                                                                        jmp   n00328_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00328_var_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n00339_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00339_var_α:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n00340_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00340_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        .section         .rodata
.Lrkfn757:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn757]                         # fn
                        lea              rsi, [rbp + 480]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        je    n00341_var_α
                                                                                        jmp   n00341_var_α
n00340_call_builtin_icon_β:
                                                                                        jmp   n00341_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00341_var_α:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00342_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00342_assign_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n00343_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00343_conjunction_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00344_unmark_α
n00343_conjunction_β:
                                                                                        jmp   n00344_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00344_unmark_α:
                        mov              rsp, qword ptr [rbp + 368]
                                                                                        jmp   n00244_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00246_unmark_α:
                        mov              rsp, qword ptr [rbp + 272]
                                                                                        jmp   n00238_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n00240_var_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00345_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00345_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn769:              .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn769]                         # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00346_var_α
                                                                                        jmp   n00347_assign_α
n00345_call_builtin_icon_β:
                                                                                        jmp   n00346_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00347_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                                                                                        jmp   n00346_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00346_var_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n00348_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00348_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 33
                        mov              rax, qword ptr [rip + .Lx00349_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00350_call_builtin_icon_α
.Lx00349_0:
                        .quad            .Lx00349_0_s
.Lx00349_0_s:
                        .string          "variable\tprocedure\t\tline numbers\n"
#-----------------------------------------------------------------------------------------------------------------------
n00350_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lrkfn775:              .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn775]                         # fn
                        lea              rsi, [rbp + 64]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n00351_var_α
                                                                                        jmp   n00351_var_α
n00350_call_builtin_icon_β:
                                                                                        jmp   n00351_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00351_var_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00352_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00352_return_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_format_γ
#-----------------------------------------------------------------------------------------------------------------------
n00230_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052608                                # format__INITFLAG__0
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                                                                                        jmp   n00353_nulltest_var_α
n00230_var_ref_β:
                                                                                        jmp   n00229_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00353_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              eax, 104
                                                                                        je    n00229_disjunction_af
                        mov              rdi, qword ptr [rbp + 2128]                    # d
                        mov              rsi, qword ptr [rbp + 2136]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00229_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00229_disjunction_af
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n00354_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00354_lit_integer_α:
                        mov              qword ptr [rbp + 2176], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00355_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n00356_assign_var_α
.Lx00355_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00356_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2144]                    # var
                        mov              rsi, qword ptr [rbp + 2152]                    # var
                        mov              rdx, qword ptr [rbp + 2176]                    # val
                        mov              rcx, qword ptr [rbp + 2184]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00229_disjunction_af
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                                                                                        jmp   n00357_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00357_disjunction_α:
                        mov              qword ptr [rbp + 2048], 0
                        mov              qword ptr [rbp + 2056], 0
                        mov              dword ptr [rbp + 2064], 0
                                                                                        jmp   n00358_var_α
n00357_disjunction_as:
                        mov              eax, dword ptr [rbp + 2064]
                        cmp              eax, 0
                                                                                        jne   .Lx00359_0
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n00360_assign_α
.Lx00359_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00359_1
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n00360_assign_α
.Lx00359_1:
                                                                                        jmp   n00360_assign_α
n00357_disjunction_β:
                        mov              eax, dword ptr [rbp + 2064]
                        cmp              eax, 0
                                                                                        je    n00357_disjunction_af
                                                                                        jmp   n00357_disjunction_af
n00357_disjunction_af:
                        add              dword ptr [rbp + 2064], 1
                        mov              eax, dword ptr [rbp + 2064]
                        cmp              eax, 1
                                                                                        je    n00361_lit_integer_α
                                                                                        jmp   n00362_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00360_assign_α:
                        mov              rax, qword ptr [rbp + 2048]
                        mov              rdx, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n00362_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00362_disjunction_α:
                        mov              qword ptr [rbp + 1968], 0
                        mov              qword ptr [rbp + 1976], 0
                        mov              dword ptr [rbp + 1984], 0
                                                                                        jmp   n00363_var_α
n00362_disjunction_as:
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 0
                                                                                        jne   .Lx00364_0
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n00365_assign_α
.Lx00364_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00364_1
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n00365_assign_α
.Lx00364_1:
                                                                                        jmp   n00365_assign_α
n00362_disjunction_β:
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 0
                                                                                        je    n00362_disjunction_af
                                                                                        jmp   n00362_disjunction_af
n00362_disjunction_af:
                        add              dword ptr [rbp + 1984], 1
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              eax, 1
                                                                                        je    n00366_lit_integer_α
                                                                                        jmp   n00233_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00365_assign_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              rdx, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                                                                                        jmp   n00233_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00233_disjunction_α:
                        mov              qword ptr [rbp + 1888], 0
                        mov              qword ptr [rbp + 1896], 0
                        mov              dword ptr [rbp + 1904], 0
                                                                                        jmp   n00367_var_α
n00233_disjunction_as:
                        mov              eax, dword ptr [rbp + 1904]
                        cmp              eax, 0
                                                                                        jne   .Lx00368_0
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00369_assign_α
.Lx00368_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00368_1
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00369_assign_α
.Lx00368_1:
                                                                                        jmp   n00369_assign_α
n00233_disjunction_β:
                        mov              eax, dword ptr [rbp + 1904]
                        cmp              eax, 0
                                                                                        je    n00233_disjunction_af
                                                                                        jmp   n00233_disjunction_af
n00233_disjunction_af:
                        add              dword ptr [rbp + 1904], 1
                        mov              eax, dword ptr [rbp + 1904]
                        cmp              eax, 1
                                                                                        je    n00370_lit_integer_α
                                                                                        jmp   n00232_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00369_assign_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              rdx, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                                                                                        jmp   n00371_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00371_conjunction_α:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n00229_disjunction_as
n00371_conjunction_β:
                                                                                        jmp   n00232_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00370_lit_integer_α:
                        mov              qword ptr [rbp + 1952], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00372_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n00233_disjunction_as
n00370_lit_integer_β:
                                                                                        jmp   n00233_disjunction_af
.Lx00372_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n00367_var_α:
                        mov              rax, qword ptr [1879052464]                    # inchunk
                        mov              rdx, qword ptr [1879052472]
                        mov              qword ptr [rbp + 1936], rax                    # result
                        mov              qword ptr [rbp + 1944], rdx
                                                                                        jmp   n00373_unop_test_α
n00367_var_β:
                                                                                        jmp   n00233_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00373_unop_test_α:
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              eax, 104
                                                                                        je    n00233_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00233_disjunction_af
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n00233_disjunction_as
n00373_unop_test_β:
                                                                                        jmp   n00233_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00366_lit_integer_α:
                        mov              qword ptr [rbp + 2032], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00374_0]
                        mov              qword ptr [rbp + 2040], rax
                                                                                        jmp   n00362_disjunction_as
n00366_lit_integer_β:
                                                                                        jmp   n00362_disjunction_af
.Lx00374_0:
                        .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n00363_var_α:
                        mov              rax, qword ptr [1879052448]                    # inlmarg
                        mov              rdx, qword ptr [1879052456]
                        mov              qword ptr [rbp + 2016], rax                    # result
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n00375_unop_test_α
n00363_var_β:
                                                                                        jmp   n00362_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00375_unop_test_α:
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              eax, 104
                                                                                        je    n00362_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00362_disjunction_af
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n00362_disjunction_as
n00375_unop_test_β:
                                                                                        jmp   n00362_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00361_lit_integer_α:
                        mov              qword ptr [rbp + 2112], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00376_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n00357_disjunction_as
n00361_lit_integer_β:
                                                                                        jmp   n00357_disjunction_af
.Lx00376_0:
                        .quad            80
#-----------------------------------------------------------------------------------------------------------------------
n00358_var_α:
                        mov              rax, qword ptr [1879052432]                    # inmaxcol
                        mov              rdx, qword ptr [1879052440]
                        mov              qword ptr [rbp + 2096], rax                    # result
                        mov              qword ptr [rbp + 2104], rdx
                                                                                        jmp   n00377_unop_test_α
n00358_var_β:
                                                                                        jmp   n00357_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00377_unop_test_α:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 104
                                                                                        je    n00357_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00357_disjunction_af
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n00357_disjunction_as
n00377_unop_test_β:
                                                                                        jmp   n00357_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
proc_format_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_format_β:
                                                                                        jmp   proc_format_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_format_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 2368]
                        mov              rcx, qword ptr [rbp + 2344]
                        mov              rbp, qword ptr [rbp + 2360]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_format_ω:
                        lea              rsp, [rbp + 2368]
                        mov              rcx, qword ptr [rbp + 2352]
                        mov              rbp, qword ptr [rbp + 2360]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_format_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00378_2]
                        lea              rdx, [rip + .Lx00378_3]
                                                                                        jmp   proc_format_α
.Lx00378_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00378_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_options_α
proc_options_α:
                        sub              rsp, 2784
                        mov              qword ptr [rsp + 2760], rcx
                        mov              qword ptr [rsp + 2768], rdx
                        mov              qword ptr [rsp + 2776], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 2752
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 2
                        mov              edx, 7
                        call             rt_icn_zframe_args_install@PLT
proc_options_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00379_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                                                                                        jmp   n00380_nulltest_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00380_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 2496]
                        cmp              eax, 104
                                                                                        je    n00381_call_builtin_icon_α
                        mov              rdi, qword ptr [rbp + 2496]                    # d
                        mov              rsi, qword ptr [rbp + 2504]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
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
                        mov              qword ptr [rbp + 2592], 2                      # result
                        mov              dword ptr [rbp + 2596], -1
                        mov              rax, qword ptr [rip + .Lx00383_0]
                        mov              qword ptr [rbp + 2600], rax
                                                                                        jmp   n00384_call_builtin_icon_α
.Lx00383_0:
                        .quad            .Lx00383_0_s
.Lx00383_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#-----------------------------------------------------------------------------------------------------------------------
n00384_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lrkfn915:              .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn915]                         # fn
                        lea              rsi, [rbp + 2560]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 104
                                                                                        je    n00381_call_builtin_icon_α
                                                                                        jmp   n00385_assign_var_α
n00384_call_builtin_icon_β:
                                                                                        jmp   n00381_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00385_assign_var_α:
                        mov              rdi, qword ptr [rbp + 2512]                    # var
                        mov              rsi, qword ptr [rbp + 2520]                    # var
                        mov              rdx, qword ptr [rbp + 2544]                    # val
                        mov              rcx, qword ptr [rbp + 2552]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00381_call_builtin_icon_α
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n00381_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00381_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn918:              .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn918]                         # fn
                        lea              rsi, [rbp + 2480]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              eax, 104
                                                                                        je    n00386_make_list_α
                                                                                        jmp   n00387_assign_α
n00381_call_builtin_icon_β:
                                                                                        jmp   n00386_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00387_assign_α:
                        mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n00386_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00386_make_list_α:
                        lea              rdi, [rbp + 2464]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n00388_assign_α
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
                        lea              rdi, [rip + .Lrkfn926]                         # fn
                        lea              rsi, [rbp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n00391_var_α
                                                                                        jmp   n00392_assign_α
n00390_call_builtin_icon_β:
                                                                                        jmp   n00391_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00392_assign_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n00393_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00393_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n00394_scan_enter_α
#-----------------------------------------------------------------------------------------------------------------------
n00394_scan_enter_α:
                        mov              rdi, qword ptr [rbp + 2432]                    # lo
                        mov              rsi, qword ptr [rbp + 2440]                    # hi
                        mov              rdx, r13                                       # sigma
                        mov              rcx, r14                                       # delta
                        mov              r8, r15                                        # Delta
                        call             rt_scan_enter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0
                                                                                        jmp   n00395_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00395_disjunction_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0
                                                                                        jmp   n00396_lit_string_α
n00395_disjunction_as:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        jne   .Lx00397_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00398_scan_α
.Lx00397_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00397_1
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00398_scan_α
.Lx00397_1:
                                                                                        jmp   n00398_scan_α
n00395_disjunction_β:
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0
                                                                                        je    n00399_disjunction_β
                                                                                        jmp   n00400_scan_α
n00395_disjunction_af:
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 1
                                                                                        je    n00401_var_α
                                                                                        jmp   n00400_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00398_scan_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00389_var_α
n00398_scan_β:
                        call             rt_scan_reenter@PLT
                        mov              r13, rax
                        mov              r15, rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                                                                                        jmp   n00395_disjunction_β
                                                                                        jmp   n00389_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00402_conjunction_α:
                                                                                        jmp   n00395_disjunction_as
n00402_conjunction_β:
                                                                                        jmp   n00400_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00401_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n00403_var_α
n00401_var_β:
                                                                                        jmp   n00400_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00403_var_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n00404_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00404_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2360], rax
                        .section         .rodata
.Lrkfn942:              .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn942]                         # fn
                        lea              rsi, [rbp + 2352]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 104
                                                                                        je    n00400_scan_α
                                                                                        jmp   n00395_disjunction_as
n00404_call_builtin_icon_β:
                                                                                        jmp   n00400_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00396_lit_string_α:
                        mov              qword ptr [rbp + 2320], 2                      # result
                        mov              dword ptr [rbp + 2324], 1
                        mov              rax, qword ptr [rip + .Lx00405_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n00406_scan_match_α
n00396_lit_string_β:
                                                                                        jmp   n00395_disjunction_af
.Lx00405_0:
                        .quad            .Lx00405_0_s
.Lx00405_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00406_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00407_239
                        add              rsp, 16
                                                                                        jmp   n00395_disjunction_af
.Lx00407_239:
                        mov              rdi, qword ptr [rip + .Lx00407_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00407_240
                        add              rsp, 16
                                                                                        jmp   n00395_disjunction_af
.Lx00407_240:
                        mov              qword ptr [rbp + 2288], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n00408_scan_tab_α
.Lx00407_0:
                        .quad            .Lx00407_0_s
.Lx00407_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00408_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2296]
                        cmp              rax, 1
                                                                                        jge   .Lx00409_0
                        add              rax, r15
                        add              rax, 1
.Lx00409_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00409_239
                        add              rsp, 16
                                                                                        jmp   n00395_disjunction_af
.Lx00409_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00409_240
                        add              rsp, 16
                                                                                        jmp   n00395_disjunction_af
.Lx00409_240:
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
                                                                                        jmp   n00410_lit_integer_α
n00408_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00395_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00410_lit_integer_α:
                        mov              qword ptr [rbp + 2240], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00411_0]
                        mov              qword ptr [rbp + 2248], rax
                                                                                        jmp   n00412_scan_pos_α
.Lx00411_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00412_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00413_0
                        add              rax, r15
                        add              rax, 1
.Lx00413_0:
                        cmp              rax, 1
                                                                                        jl    n00414_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00414_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00414_var_α
                        mov              qword ptr [rbp + 2224], 3
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n00408_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00414_var_α:
                        mov              qword ptr [rbp + 2208], 0
                        mov              qword ptr [rbp + 2216], 0
                                                                                        jmp   n00415_conjunction_α
n00414_var_β:
                                                                                        jmp   n00408_scan_tab_β
#-----------------------------------------------------------------------------------------------------------------------
n00415_conjunction_α:
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n00416_disjunction_α
n00415_conjunction_β:
                                                                                        jmp   n00395_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00416_disjunction_α:
                        mov              qword ptr [rbp + 2032], 0
                        mov              qword ptr [rbp + 2040], 0
                        mov              dword ptr [rbp + 2048], 0
                                                                                        jmp   n00417_lit_string_α
n00416_disjunction_as:
                        mov              eax, dword ptr [rbp + 2048]
                        cmp              eax, 0
                                                                                        jne   .Lx00418_0
                                                                                        jmp   n00419_lit_integer_α
.Lx00418_0:
                                                                                        jmp   n00419_lit_integer_α
n00416_disjunction_β:
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00419_lit_integer_α
n00416_disjunction_af:
                        add              dword ptr [rbp + 2048], 1
                        mov              eax, dword ptr [rbp + 2048]
                                                                                        jmp   n00419_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00419_lit_integer_α:
                        mov              qword ptr [rbp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00420_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n00421_scan_move_α
.Lx00420_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00421_scan_move_α:
                        sub              rsp, 16
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1
                                                                                        jge   .Lx00422_239
                        add              rsp, 16
                                                                                        jmp   n00400_scan_α
.Lx00422_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00422_240
                        add              rsp, 16
                                                                                        jmp   n00400_scan_α
.Lx00422_240:
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
                                                                                        jmp   n00423_assign_α
n00421_scan_move_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00400_scan_α
#-----------------------------------------------------------------------------------------------------------------------
n00423_assign_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n00399_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00399_disjunction_α:
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0
                                                                                        jmp   n00424_var_α
n00399_disjunction_as:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        jne   .Lx00425_0
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00419_lit_integer_α
.Lx00425_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00425_1
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n00419_lit_integer_α
.Lx00425_1:
                                                                                        jmp   n00419_lit_integer_α
n00399_disjunction_β:
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0
                                                                                        je    n00426_disjunction_β
                                                                                        jmp   n00419_lit_integer_α
n00399_disjunction_af:
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1
                                                                                        je    n00427_lit_string_α
                                                                                        jmp   n00419_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00427_lit_string_α:
                        mov              qword ptr [rbp + 2000], 2                      # result
                        mov              dword ptr [rbp + 2004], 22
                        mov              rax, qword ptr [rip + .Lx00428_0]
                        mov              qword ptr [rbp + 2008], rax
                                                                                        jmp   n00429_var_α
n00427_lit_string_β:
                                                                                        jmp   n00419_lit_integer_α
.Lx00428_0:
                        .quad            .Lx00428_0_s
.Lx00428_0_s:
                        .string          "Unrecognized option: -"
#-----------------------------------------------------------------------------------------------------------------------
n00429_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n00430_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00430_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
                        .section         .rodata
.Lrkfn965:              .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn965]                         # fn
                        lea              rsi, [rbp + 1952]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 104
                                                                                        je    n00419_lit_integer_α
                                                                                        jmp   n00399_disjunction_as
n00430_call_builtin_icon_β:
                                                                                        jmp   n00419_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00424_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1896], rax
                                                                                        jmp   n00431_var_α
n00424_var_β:
                                                                                        jmp   n00399_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00431_var_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 1912], rax
                                                                                        jmp   n00432_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00432_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1848], rax
                        mov              qword ptr [rbp + 1872], 0
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
.Lx00433_60:
                        .section         .rodata
.Lbynamegenfn377:       .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn377]                  # fn
                        lea              rsi, [rbp + 1840]                              # args
                        mov              edx, 2                                         # nargs
                        lea              rcx, [rbp + 1872]                              # resume
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 104
                                                                                        je    n00399_disjunction_af
                                                                                        jmp   n00434_lit_integer_α
n00432_call_builtin_gen_β:
                                                                                        jmp   .Lx00433_60
#-----------------------------------------------------------------------------------------------------------------------
n00434_lit_integer_α:
                        mov              qword ptr [rbp + 1920], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00435_0]
                        mov              qword ptr [rbp + 1928], rax
                                                                                        jmp   n00436_coerce_numeric_α
.Lx00435_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00436_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 5
                                                                                        je    .Lx00437_1
                        cmp              eax, 3
                                                                                        jne   .Lx00437_0
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              eax, 3
                                                                                        jne   .Lx00437_0
.Lx00437_1:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1816], rax
                                                                                        jmp   n00438_binop_α
.Lx00437_0:
                        lea              rdi, [rbp + 1824]                              # self
                        lea              rsi, [rbp + 1920]                              # other
                        lea              rdx, [rbp + 1808]                              # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00438_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00438_binop_α:
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              eax, 3
                                                                                        jne   .Lx00439_0
                        mov              rax, qword ptr [rbp + 1816]
                        mov              rcx, 1
                        add              rax, rcx
                        mov              qword ptr [rbp + 1792], 3
                        mov              qword ptr [rbp + 1800], rax
                                                                                        jmp   n00440_assign_α
.Lx00439_0:
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        call             rt_add@PLT
                        cmp              eax, 104
                                                                                        je    n00399_disjunction_af
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n00440_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00440_assign_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx
                                                                                        jmp   n00441_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00441_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2608]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n00442_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00442_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n00443_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00443_subscript_α:
                        mov              rdi, qword ptr [rbp + 496]                     # base
                        mov              rsi, qword ptr [rbp + 504]                     # base
                        mov              rdx, qword ptr [rbp + 512]                     # idx
                        mov              rcx, qword ptr [rbp + 520]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00419_lit_integer_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n00426_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00426_disjunction_α:
                        mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0
                                                                                        jmp   n00444_lit_charset_α
n00426_disjunction_as:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        jne   .Lx00445_0
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00446_assign_var_α
.Lx00445_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00445_1
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00446_assign_var_α
.Lx00445_1:
                                                                                        jmp   n00446_assign_var_α
n00426_disjunction_β:
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0
                                                                                        je    n00419_lit_integer_α
                                                                                        jmp   n00419_lit_integer_α
n00426_disjunction_af:
                        add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1
                                                                                        je    n00447_lit_integer_α
                                                                                        jmp   n00419_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00446_assign_var_α:
                        mov              rdi, qword ptr [rbp + 528]                     # var
                        mov              rsi, qword ptr [rbp + 536]                     # var
                        mov              rdx, qword ptr [rbp + 560]                     # val
                        mov              rcx, qword ptr [rbp + 568]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00419_lit_integer_α
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n00399_disjunction_as
n00446_assign_var_β:
                                                                                        jmp   n00419_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00447_lit_integer_α:
                        mov              qword ptr [rbp + 1776], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00448_0]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n00426_disjunction_as
n00447_lit_integer_β:
                                                                                        jmp   n00419_lit_integer_α
.Lx00448_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00444_lit_charset_α:
                        mov              qword ptr [rbp + 1680], 2                      # result
                        mov              dword ptr [rbp + 1684], -1
                        mov              rax, qword ptr [rip + .Lx00449_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n00450_var_ref_α
n00444_lit_charset_β:
                                                                                        jmp   n00426_disjunction_af
.Lx00449_0:
                        .quad            .Lx00449_0_s
.Lx00449_0_s:
                        .string          "+.:"
#-----------------------------------------------------------------------------------------------------------------------
n00450_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                                                                                        jmp   n00451_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00451_var_α:
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n00452_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00452_subscript_α:
                        mov              rdi, qword ptr [rbp + 1712]                    # base
                        mov              rsi, qword ptr [rbp + 1720]                    # base
                        mov              rdx, qword ptr [rbp + 1728]                    # idx
                        mov              rcx, qword ptr [rbp + 1736]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00426_disjunction_af
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                                                                                        jmp   n00453_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00453_deref_α:
                        mov              rdi, qword ptr [rbp + 1744]                    # d
                        mov              rsi, qword ptr [rbp + 1752]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00426_disjunction_af
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n00454_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00454_assign_α:
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                                                                                        jmp   n00455_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00455_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rdi, r14
                        call             rt_scan_sync_out@PLT
                        .section         .rodata
.Lbynamefn394:          .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamefn394]                     # fn
                        lea              rsi, [rbp + 1632]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        push             rax
                        push             rdx
                        call             rt_scan_sync_in@PLT
                        mov              r14, rax
                        pop              rdx
                        pop              rax
                        cmp              eax, 104
                                                                                        je    n00426_disjunction_af
                                                                                        jmp   n00456_disjunction_α
n00455_call_builtin_icon_β:
                                                                                        jmp   n00426_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00456_disjunction_α:
                        mov              qword ptr [rbp + 1344], 0
                        mov              qword ptr [rbp + 1352], 0
                        mov              dword ptr [rbp + 1360], 0
                                                                                        jmp   n00457_lit_string_α
n00456_disjunction_as:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        jne   .Lx00458_0
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00459_assign_α
.Lx00458_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00458_1
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00459_assign_α
.Lx00458_1:
                        cmp              eax, 2
                                                                                        jne   .Lx00458_2
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n00459_assign_α
.Lx00458_2:
                                                                                        jmp   n00459_assign_α
n00456_disjunction_β:
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 0
                                                                                        je    n00456_disjunction_af
                        cmp              eax, 1
                                                                                        je    n00456_disjunction_af
                                                                                        jmp   n00456_disjunction_af
n00456_disjunction_af:
                        add              dword ptr [rbp + 1360], 1
                        mov              eax, dword ptr [rbp + 1360]
                        cmp              eax, 1
                                                                                        je    n00460_var_α
                        cmp              eax, 2
                                                                                        je    n00461_lit_string_α
                                                                                        jmp   n00462_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00459_assign_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              rdx, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                                                                                        jmp   n00462_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00462_var_α:
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n00463_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00463_lit_string_α:
                        mov              qword ptr [rbp + 1248], 2                      # result
                        mov              dword ptr [rbp + 1252], 1
                        mov              rax, qword ptr [rip + .Lx00464_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n00465_call_builtin_α
.Lx00464_0:
                        .quad            .Lx00464_0_s
.Lx00464_0_s:
                        .string          ":"
#-----------------------------------------------------------------------------------------------------------------------
n00465_call_builtin_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lrkfn1001:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1001]                        # fn
                        lea              rsi, [rbp + 1296]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 104
                                                                                        je    n00466_lit_string_α
                                                                                        jmp   n00467_var_α
n00465_call_builtin_β:
                                                                                        jmp   n00466_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00467_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n00468_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00468_assign_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00469_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00466_lit_string_α:
                        mov              qword ptr [rbp + 944], 2                       # result
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Lx00470_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n00471_call_builtin_α
.Lx00470_0:
                        .quad            .Lx00470_0_s
.Lx00470_0_s:
                        .string          "+"
#-----------------------------------------------------------------------------------------------------------------------
n00471_call_builtin_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn1007:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1007]                        # fn
                        lea              rsi, [rbp + 1200]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n00472_lit_string_α
                                                                                        jmp   n00473_disjunction_α
n00471_call_builtin_β:
                                                                                        jmp   n00472_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00473_disjunction_α:
                        mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              dword ptr [rbp + 976], 0
                                                                                        jmp   n00474_var_α
n00473_disjunction_as:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        jne   .Lx00475_0
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00476_assign_α
.Lx00475_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00475_1
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n00476_assign_α
.Lx00475_1:
                                                                                        jmp   n00476_assign_α
n00473_disjunction_β:
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0
                                                                                        je    n00473_disjunction_af
                                                                                        jmp   n00473_disjunction_af
n00473_disjunction_af:
                        add              dword ptr [rbp + 976], 1
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 1
                                                                                        je    n00477_lit_string_α
                                                                                        jmp   n00419_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00476_assign_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00469_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00477_lit_string_α:
                        mov              qword ptr [rbp + 1136], 2                      # result
                        mov              dword ptr [rbp + 1140], 1
                        mov              rax, qword ptr [rip + .Lx00478_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n00479_var_α
n00477_lit_string_β:
                                                                                        jmp   n00473_disjunction_af
.Lx00478_0:
                        .quad            .Lx00478_0_s
.Lx00478_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00479_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n00480_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00480_lit_string_α:
                        mov              qword ptr [rbp + 1168], 2                      # result
                        mov              dword ptr [rbp + 1172], 24
                        mov              rax, qword ptr [rip + .Lx00481_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n00482_call_builtin_icon_α
.Lx00481_0:
                        .quad            .Lx00481_0_s
.Lx00481_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00482_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lrkfn1016:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1016]                        # fn
                        lea              rsi, [rbp + 1072]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    n00473_disjunction_af
                                                                                        jmp   n00473_disjunction_as
n00482_call_builtin_icon_β:
                                                                                        jmp   n00473_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00474_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n00483_call_builtin_icon_α
n00474_var_β:
                                                                                        jmp   n00473_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00483_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        .section         .rodata
.Lrkfn1020:             .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1020]                        # fn
                        lea              rsi, [rbp + 1008]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    n00473_disjunction_af
                                                                                        jmp   n00473_disjunction_as
n00483_call_builtin_icon_β:
                                                                                        jmp   n00473_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00472_lit_string_α:
                        mov              qword ptr [rbp + 640], 2                       # result
                        mov              dword ptr [rbp + 644], 1
                        mov              rax, qword ptr [rip + .Lx00484_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n00485_call_builtin_α
.Lx00484_0:
                        .quad            .Lx00484_0_s
.Lx00484_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n00485_call_builtin_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lrkfn1023:             .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1023]                        # fn
                        lea              rsi, [rbp + 896]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 104
                                                                                        je    n00419_lit_integer_α
                                                                                        jmp   n00486_disjunction_α
n00485_call_builtin_β:
                                                                                        jmp   n00419_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00486_disjunction_α:
                        mov              qword ptr [rbp + 656], 0
                        mov              qword ptr [rbp + 664], 0
                        mov              dword ptr [rbp + 672], 0
                                                                                        jmp   n00487_var_α
n00486_disjunction_as:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        jne   .Lx00488_0
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00489_assign_α
.Lx00488_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00488_1
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n00489_assign_α
.Lx00488_1:
                                                                                        jmp   n00489_assign_α
n00486_disjunction_β:
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 0
                                                                                        je    n00486_disjunction_af
                                                                                        jmp   n00486_disjunction_af
n00486_disjunction_af:
                        add              dword ptr [rbp + 672], 1
                        mov              eax, dword ptr [rbp + 672]
                        cmp              eax, 1
                                                                                        je    n00490_lit_string_α
                                                                                        jmp   n00419_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00489_assign_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                                                                                        jmp   n00469_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00469_var_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n00491_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00491_conjunction_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n00426_disjunction_as
n00491_conjunction_β:
                                                                                        jmp   n00419_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00490_lit_string_α:
                        mov              qword ptr [rbp + 832], 2                       # result
                        mov              dword ptr [rbp + 836], 1
                        mov              rax, qword ptr [rip + .Lx00492_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00493_var_α
n00490_lit_string_β:
                                                                                        jmp   n00486_disjunction_af
.Lx00492_0:
                        .quad            .Lx00492_0_s
.Lx00492_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00493_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n00494_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00494_lit_string_α:
                        mov              qword ptr [rbp + 864], 2                       # result
                        mov              dword ptr [rbp + 868], 24
                        mov              rax, qword ptr [rip + .Lx00495_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00496_call_builtin_icon_α
.Lx00495_0:
                        .quad            .Lx00495_0_s
.Lx00495_0_s:
                        .string          " needs numeric parameter"
#-----------------------------------------------------------------------------------------------------------------------
n00496_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn1035:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1035]                        # fn
                        lea              rsi, [rbp + 768]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n00486_disjunction_af
                                                                                        jmp   n00486_disjunction_as
n00496_call_builtin_icon_β:
                                                                                        jmp   n00486_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00487_var_α:
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00497_call_builtin_icon_α
n00487_var_β:
                                                                                        jmp   n00486_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00497_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn1039:             .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1039]                        # fn
                        lea              rsi, [rbp + 704]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n00486_disjunction_af
                                                                                        jmp   n00486_disjunction_as
n00497_call_builtin_icon_β:
                                                                                        jmp   n00486_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00461_lit_string_α:
                        mov              qword ptr [rbp + 1584], 2                      # result
                        mov              dword ptr [rbp + 1588], 24
                        mov              rax, qword ptr [rip + .Lx00498_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n00499_var_α
n00461_lit_string_β:
                                                                                        jmp   n00456_disjunction_af
.Lx00498_0:
                        .quad            .Lx00498_0_s
.Lx00498_0_s:
                        .string          "No parameter following -"
#-----------------------------------------------------------------------------------------------------------------------
n00499_var_α:
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1608], rax
                                                                                        jmp   n00500_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00500_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lrkfn1044:             .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1044]                        # fn
                        lea              rsi, [rbp + 1536]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        cmp              eax, 104
                                                                                        je    n00456_disjunction_af
                                                                                        jmp   n00456_disjunction_as
n00500_call_builtin_icon_β:
                                                                                        jmp   n00456_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00460_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n00501_call_builtin_icon_α
n00460_var_β:
                                                                                        jmp   n00456_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00501_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lrkfn1048:             .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1048]                        # fn
                        lea              rsi, [rbp + 1472]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              eax, 104
                                                                                        je    n00456_disjunction_af
                                                                                        jmp   n00456_disjunction_as
n00501_call_builtin_icon_β:
                                                                                        jmp   n00456_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00457_lit_string_α:
                        mov              qword ptr [rbp + 1392], 2                      # result
                        mov              dword ptr [rbp + 1396], 0
                        mov              rax, qword ptr [rip + .Lx00502_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n00503_lit_integer_α
n00457_lit_string_β:
                                                                                        jmp   n00456_disjunction_af
.Lx00502_0:
                        .quad            .Lx00502_0_s
.Lx00502_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n00503_lit_integer_α:
                        mov              qword ptr [rbp + 1440], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00504_0]
                        mov              qword ptr [rbp + 1448], rax
                                                                                        jmp   n00505_scan_tab_α
.Lx00504_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00505_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00506_0
                        add              rax, r15
                        add              rax, 1
.Lx00506_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00506_239
                        add              rsp, 16
                                                                                        jmp   n00456_disjunction_af
.Lx00506_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00506_240
                        add              rsp, 16
                                                                                        jmp   n00456_disjunction_af
.Lx00506_240:
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
                                                                                        jmp   n00507_binop_test_α
n00505_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00456_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00507_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1392]                    # lhs
                        mov              rsi, qword ptr [rbp + 1400]                    # lhs
                        mov              rdx, qword ptr [rbp + 1408]                    # rhs
                        mov              rcx, qword ptr [rbp + 1416]                    # rhs
                        mov              r8d, 17                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00456_disjunction_af
                        mov              rdi, qword ptr [rbp + 1408]                    # d
                        mov              rsi, qword ptr [rbp + 1416]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n00456_disjunction_as
n00507_binop_test_β:
                                                                                        jmp   n00456_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00400_scan_α:
                        lea              rdi, [rbp + 304]                               # out3
                        call             rt_scan_leave@PLT
                        mov              r13, qword ptr [rbp + 304]
                        mov              r14, qword ptr [rbp + 312]
                        mov              r15, qword ptr [rbp + 320]
                                                                                        jmp   n00389_var_α
n00400_scan_β:
                                                                                        jmp   n00389_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00417_lit_string_α:
                        mov              qword ptr [rbp + 2176], 2                      # result
                        mov              dword ptr [rbp + 2180], 1
                        mov              rax, qword ptr [rip + .Lx00508_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n00509_scan_match_α
n00417_lit_string_β:
                                                                                        jmp   n00416_disjunction_af
.Lx00508_0:
                        .quad            .Lx00508_0_s
.Lx00508_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00509_scan_match_α:
                        sub              rsp, 16
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1
                                                                                        jge   .Lx00510_239
                        add              rsp, 16
                                                                                        jmp   n00416_disjunction_af
.Lx00510_239:
                        mov              rdi, qword ptr [rip + .Lx00510_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r10
                        call             memcmp@PLT
                        pop              r10
                        test             eax, eax
                                                                                        je    .Lx00510_240
                        add              rsp, 16
                                                                                        jmp   n00416_disjunction_af
.Lx00510_240:
                        mov              qword ptr [rbp + 2144], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2152], rax
                                                                                        jmp   n00511_scan_tab_α
.Lx00510_0:
                        .quad            .Lx00510_0_s
.Lx00510_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n00511_scan_tab_α:
                        sub              rsp, 16
                        mov              rax, qword ptr [rbp + 2152]
                        cmp              rax, 1
                                                                                        jge   .Lx00512_0
                        add              rax, r15
                        add              rax, 1
.Lx00512_0:
                        cmp              rax, 1
                                                                                        jge   .Lx00512_239
                        add              rsp, 16
                                                                                        jmp   n00416_disjunction_af
.Lx00512_239:
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jle   .Lx00512_240
                        add              rsp, 16
                                                                                        jmp   n00416_disjunction_af
.Lx00512_240:
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
                                                                                        jmp   n00513_lit_integer_α
n00511_scan_tab_β:
                        mov              r14, qword ptr [rsp + 0]
                        add              rsp, 16
                                                                                        jmp   n00416_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00513_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00514_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n00515_scan_pos_α
.Lx00514_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00515_scan_pos_α:
                        mov              rax, 0
                        cmp              rax, 1
                                                                                        jge   .Lx00516_0
                        add              rax, r15
                        add              rax, 1
.Lx00516_0:
                        cmp              rax, 1
                                                                                        jl    n00511_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jg    n00511_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx
                                                                                        jne   n00511_scan_tab_β
                        mov              qword ptr [rbp + 2080], 3
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n00517_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00517_conjunction_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n00391_var_α
n00517_conjunction_β:
                                                                                        jmp   n00416_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00391_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n00518_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00518_var_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n00519_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00519_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn1070:             .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1070]                        # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n00520_var_α
                                                                                        jmp   n00521_call_builtin_icon_α
n00519_call_builtin_icon_β:
                                                                                        jmp   n00520_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00521_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn1072:             .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1072]                        # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n00520_var_α
                                                                                        jmp   n00391_var_α
n00521_call_builtin_icon_β:
                                                                                        jmp   n00520_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00520_var_α:
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00522_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00522_return_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_options_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_options_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_options_β:
                                                                                        jmp   proc_options_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_options_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 2784]
                        mov              rcx, qword ptr [rbp + 2760]
                        mov              rbp, qword ptr [rbp + 2776]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_options_ω:
                        lea              rsp, [rbp + 2784]
                        mov              rcx, qword ptr [rbp + 2768]
                        mov              rbp, qword ptr [rbp + 2776]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_options_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00523_2]
                        lea              rdx, [rip + .Lx00523_3]
                                                                                        jmp   proc_options_α
.Lx00523_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00523_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Init___α
proc_Init___α:
                        sub              rsp, 480
                        mov              qword ptr [rsp + 456], rcx
                        mov              qword ptr [rsp + 464], rdx
                        mov              qword ptr [rsp + 472], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 448
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
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
                        mov              qword ptr [1879052544], rax                    # Name__
                        mov              qword ptr [1879052552], rdx
                                                                                        jmp   n00526_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00526_call_proc_staged_α:
                        call             proc_Signature___dcα
                                                                                        jmp   .Lx00527_2
.Lx00527_2:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
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
                        cmp              eax, 104
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
                        cmp              eax, 104
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
                        mov              rdi, qword ptr [rip + .Lx00536_0]               # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        je    n00537_var_α
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00538_assign_α
.Lx00536_0:
                        .quad            .Lx00536_0_s
.Lx00536_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00538_assign_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [1879052512], rax                    # Save__
                        mov              qword ptr [1879052520], rdx
                                                                                        jmp   n00537_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00537_var_α:
                        mov              rdi, qword ptr [rip + .Lx00539_0]               # name
                        call             NV_GET_fn@PLT
                        cmp              eax, 104
                                                                                        je    n00540_lit_integer_α
                        mov              qword ptr [rbp + 80], rax                      # result
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00541_assign_α
.Lx00539_0:
                        .quad            .Lx00539_0_s
.Lx00539_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00541_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [1879052528], rax                    # Saves__
                        mov              qword ptr [1879052536], rdx
                                                                                        jmp   n00540_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00540_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00542_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00543_assign_α
.Lx00542_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00543_assign_α:
                        mov              rsi, qword ptr [rbp + 64]                      # val
                        mov              rdx, qword ptr [rbp + 72]                      # val
                        mov              rdi, qword ptr [rip + .Lx00544_0]               # name
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                                                                                        jmp   n00545_assign_α
.Lx00544_0:
                        .quad            .Lx00544_0_s
.Lx00544_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00545_assign_α:
                        mov              rsi, qword ptr [rbp + 48]                      # val
                        mov              rdx, qword ptr [rbp + 56]                      # val
                        mov              rdi, qword ptr [rip + .Lx00546_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00547_return_α
.Lx00546_0:
                        .quad            .Lx00546_0_s
.Lx00546_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00547_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Init___γ
#-----------------------------------------------------------------------------------------------------------------------
n00548_conjunction_α:
                                                                                        jmp   n00532_disjunction_as
n00548_conjunction_β:
                                                                                        jmp   n00535_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00533_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 6
                        mov              rax, qword ptr [rip + .Lx00549_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n00550_call_builtin_icon_α
n00533_lit_string_β:
                                                                                        jmp   n00532_disjunction_af
.Lx00549_0:
                        .quad            .Lx00549_0_s
.Lx00549_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00550_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        .section         .rodata
.Lrkfn1119:             .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1119]                        # fn
                        lea              rsi, [rbp + 240]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n00532_disjunction_af
                                                                                        jmp   n00551_lit_string_α
n00550_call_builtin_icon_β:
                                                                                        jmp   n00532_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00551_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 32
                        mov              rax, qword ptr [rip + .Lx00552_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00553_call_builtin_icon_α
.Lx00552_0:
                        .quad            .Lx00552_0_s
.Lx00552_0_s:
                        .string          "*** Benchmarking with output ***"
#-----------------------------------------------------------------------------------------------------------------------
n00553_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn1122:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1122]                        # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00554_return_α
                                                                                        jmp   n00554_return_α
n00553_call_builtin_icon_β:
                                                                                        jmp   n00554_return_α
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 480]
                        mov              rcx, qword ptr [rbp + 456]
                        mov              rbp, qword ptr [rbp + 472]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___ω:
                        lea              rsp, [rbp + 480]
                        mov              rcx, qword ptr [rbp + 464]
                        mov              rbp, qword ptr [rbp + 472]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Init___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx00555_2]
                        lea              rdx, [rip + .Lx00555_3]
                                                                                        jmp   proc_Init___α
.Lx00555_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00555_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Term___α
proc_Term___α:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 504], rcx
                        mov              qword ptr [rsp + 512], rdx
                        mov              qword ptr [rsp + 520], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 496
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
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
n00557_lit_string_α:
                        mov              qword ptr [rbp + 432], 2                       # result
                        mov              dword ptr [rbp + 436], 6
                        mov              rax, qword ptr [rip + .Lx00560_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n00561_call_builtin_icon_α
n00557_lit_string_β:
                                                                                        jmp   n00562_var_α
.Lx00560_0:
                        .quad            .Lx00560_0_s
.Lx00560_0_s:
                        .string          "OUTPUT"
#-----------------------------------------------------------------------------------------------------------------------
n00561_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lrkfn1146:             .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1146]                        # fn
                        lea              rsi, [rbp + 400]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n00562_var_α
                                                                                        jmp   n00556_disjunction_af
n00561_call_builtin_icon_β:
                                                                                        jmp   n00562_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00562_var_α:
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                                                                                        jmp   n00563_var_α
n00562_var_β:
                                                                                        jmp   n00556_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00563_var_α:
                        mov              rax, qword ptr [1879052512]                    # Save__
                        mov              rdx, qword ptr [1879052520]
                        mov              qword ptr [rbp + 352], rax                     # result
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00564_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00564_assign_α:
                        mov              rsi, qword ptr [rbp + 352]                     # val
                        mov              rdx, qword ptr [rbp + 360]                     # val
                        mov              rdi, qword ptr [rip + .Lx00565_0]               # name
                        call             NV_SET_fn@PLT
                                                                                        jmp   n00566_var_α
.Lx00565_0:
                        .quad            .Lx00565_0_s
.Lx00565_0_s:
                        .string          "write"
#-----------------------------------------------------------------------------------------------------------------------
n00566_var_α:
                        mov              rax, qword ptr [1879052528]                    # Saves__
                        mov              rdx, qword ptr [1879052536]
                        mov              qword ptr [rbp + 320], rax                     # result
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n00567_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00567_assign_α:
                        mov              rsi, qword ptr [rbp + 320]                     # val
                        mov              rdx, qword ptr [rbp + 328]                     # val
                        mov              rdi, qword ptr [rip + .Lx00568_0]               # name
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n00569_conjunction_α
.Lx00568_0:
                        .quad            .Lx00568_0_s
.Lx00568_0_s:
                        .string          "writes"
#-----------------------------------------------------------------------------------------------------------------------
n00569_conjunction_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n00556_disjunction_as
n00569_conjunction_β:
                                                                                        jmp   n00559_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00559_var_α:
                        mov              rax, qword ptr [1879052544]                    # Name__
                        mov              rdx, qword ptr [1879052552]
                        mov              qword ptr [rbp + 192], rax                     # result
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00570_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00570_lit_string_α:
                        mov              qword ptr [rbp + 208], 2                       # result
                        mov              dword ptr [rbp + 212], 16
                        mov              rax, qword ptr [rip + .Lx00571_0]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00572_call_proc_staged_α
.Lx00571_0:
                        .quad            .Lx00571_0_s
.Lx00571_0_s:
                        .string          " elapsed time = "
#-----------------------------------------------------------------------------------------------------------------------
n00572_call_proc_staged_α:
                        call             proc_Time___dcα
                                                                                        jmp   .Lx00573_2
.Lx00573_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n00574_call_proc_staged_α
                                                                                        jmp   n00575_call_builtin_icon_α
n00572_call_proc_staged_β:
                                                                                        jmp   n00574_call_proc_staged_α
.Lx00573_0:
                        .quad            .Lx00573_0_s
.Lx00573_0_s:
                        .string          "Time__"
#-----------------------------------------------------------------------------------------------------------------------
n00575_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn1158:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1158]                        # fn
                        lea              rsi, [rbp + 128]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n00574_call_proc_staged_α
                                                                                        jmp   n00574_call_proc_staged_α
n00575_call_builtin_icon_β:
                                                                                        jmp   n00574_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00574_call_proc_staged_α:
                        call             proc_Regions___dcα
                                                                                        jmp   .Lx00576_2
.Lx00576_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    n00577_call_proc_staged_α
                                                                                        jmp   n00577_call_proc_staged_α
n00574_call_proc_staged_β:
                                                                                        jmp   n00577_call_proc_staged_α
.Lx00576_0:
                        .quad            .Lx00576_0_s
.Lx00576_0_s:
                        .string          "Regions__"
#-----------------------------------------------------------------------------------------------------------------------
n00577_call_proc_staged_α:
                        call             proc_Storage___dcα
                                                                                        jmp   .Lx00578_2
.Lx00578_2:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    n00579_call_proc_staged_α
                                                                                        jmp   n00579_call_proc_staged_α
n00577_call_proc_staged_β:
                                                                                        jmp   n00579_call_proc_staged_α
.Lx00578_0:
                        .quad            .Lx00578_0_s
.Lx00578_0_s:
                        .string          "Storage__"
#-----------------------------------------------------------------------------------------------------------------------
n00579_call_proc_staged_α:
                        call             proc_Collections___dcα
                                                                                        jmp   .Lx00580_2
.Lx00580_2:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
                                                                                        je    n00581_return_α
                                                                                        jmp   n00581_return_α
n00579_call_proc_staged_β:
                                                                                        jmp   n00581_return_α
.Lx00580_0:
                        .quad            .Lx00580_0_s
.Lx00580_0_s:
                        .string          "Collections__"
#-----------------------------------------------------------------------------------------------------------------------
n00581_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Term___γ
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___β:
                                                                                        jmp   proc_Term___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 528]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              rbp, qword ptr [rbp + 520]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___ω:
                        lea              rsp, [rbp + 528]
                        mov              rcx, qword ptr [rbp + 512]
                        mov              rbp, qword ptr [rbp + 520]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Term___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00582_2]
                        lea              rdx, [rip + .Lx00582_3]
                                                                                        jmp   proc_Term___α
.Lx00582_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00582_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Collections___α
proc_Collections___α:
                        sub              rsp, 960
                        mov              qword ptr [rsp + 936], rcx
                        mov              qword ptr [rsp + 944], rdx
                        mov              qword ptr [rsp + 952], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 928
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
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
n00587_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n00588_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00588_var_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00589_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00589_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00590_1:
                        mov              rdi, qword ptr [rip + .Lx00590_0]               # sval
                        mov              rsi, qword ptr [rbp + 592]                     # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        je    n00591_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00592_call_builtin_icon_α
n00589_keyword_icon_gen_β:
                                                                                        jmp   .Lx00590_1
.Lx00590_0:
                        .quad            .Lx00590_0_s
.Lx00590_0_s:
                        .string          "&collections"
#-----------------------------------------------------------------------------------------------------------------------
n00592_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn1213:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1213]                        # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n00589_keyword_icon_gen_β
                                                                                        jmp   n00589_keyword_icon_gen_β
n00592_call_builtin_icon_β:
                                                                                        jmp   n00589_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00591_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 11
                        mov              rax, qword ptr [rip + .Lx00593_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00594_call_builtin_icon_α
.Lx00593_0:
                        .quad            .Lx00593_0_s
.Lx00593_0_s:
                        .string          "collections"
#-----------------------------------------------------------------------------------------------------------------------
n00594_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn1216:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1216]                        # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n00595_lit_integer_α
                                                                                        jmp   n00595_lit_integer_α
n00594_call_builtin_icon_β:
                                                                                        jmp   n00595_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00595_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00596_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00597_var_α
.Lx00596_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00597_var_α:
                        mov              rax, qword ptr [1879052624]                    # Collections____STATIC__labels
                        mov              rdx, qword ptr [1879052632]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00598_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00598_unop_α:
                        mov              rdi, qword ptr [rbp + 96]                      # lo
                        mov              rsi, qword ptr [rbp + 104]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00599_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00599_to_α:
                        mov              rdi, qword ptr [rbp + 64]                      # v
                        mov              rsi, qword ptr [rbp + 72]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]                      # v
                        mov              rsi, qword ptr [rbp + 88]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00600_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00601_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00602_assign_α
n00599_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00600_0
#-----------------------------------------------------------------------------------------------------------------------
n00602_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n00603_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00603_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00604_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00604_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052624                                # Collections____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00605_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00605_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00606_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00606_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]                     # base
                        mov              rsi, qword ptr [rbp + 232]                     # base
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        mov              rcx, qword ptr [rbp + 248]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00607_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00608_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00608_deref_α:
                        mov              rdi, qword ptr [rbp + 256]                     # d
                        mov              rsi, qword ptr [rbp + 264]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00607_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00609_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00609_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00610_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00610_var_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00611_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00611_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]                     # base
                        mov              rsi, qword ptr [rbp + 360]                     # base
                        mov              rdx, qword ptr [rbp + 368]                     # idx
                        mov              rcx, qword ptr [rbp + 376]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00607_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00612_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00612_deref_α:
                        mov              rdi, qword ptr [rbp + 384]                     # d
                        mov              rsi, qword ptr [rbp + 392]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00607_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00613_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00613_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00614_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00615_call_builtin_icon_α
.Lx00614_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00615_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn1239:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1239]                        # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n00607_unmark_α
                                                                                        jmp   n00616_call_builtin_icon_α
n00615_call_builtin_icon_β:
                                                                                        jmp   n00607_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00616_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn1241:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1241]                        # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00607_unmark_α
                                                                                        jmp   n00607_unmark_α
n00616_call_builtin_icon_β:
                                                                                        jmp   n00607_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00607_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00599_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00601_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Collections___γ
#-----------------------------------------------------------------------------------------------------------------------
n00584_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052640                                # Collections____INITFLAG__0
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00617_nulltest_var_α
n00584_var_ref_β:
                                                                                        jmp   n00583_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00617_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 104
                                                                                        je    n00583_disjunction_af
                        mov              rdi, qword ptr [rbp + 816]                     # d
                        mov              rsi, qword ptr [rbp + 824]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00583_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00583_disjunction_af
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00618_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00618_lit_integer_α:
                        mov              qword ptr [rbp + 864], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00619_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n00620_assign_var_α
.Lx00619_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00620_assign_var_α:
                        mov              rdi, qword ptr [rbp + 832]                     # var
                        mov              rsi, qword ptr [rbp + 840]                     # var
                        mov              rdx, qword ptr [rbp + 864]                     # val
                        mov              rcx, qword ptr [rbp + 872]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00583_disjunction_af
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00621_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00621_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 5
                        mov              rax, qword ptr [rip + .Lx00622_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00623_lit_string_α
.Lx00622_0:
                        .quad            .Lx00622_0_s
.Lx00622_0_s:
                        .string          "total"
#-----------------------------------------------------------------------------------------------------------------------
n00623_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 6
                        mov              rax, qword ptr [rip + .Lx00624_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00625_lit_string_α
.Lx00624_0:
                        .quad            .Lx00624_0_s
.Lx00624_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00625_lit_string_α:
                        mov              qword ptr [rbp + 784], 2                       # result
                        mov              dword ptr [rbp + 788], 6
                        mov              rax, qword ptr [rip + .Lx00626_0]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n00627_lit_string_α
.Lx00626_0:
                        .quad            .Lx00626_0_s
.Lx00626_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00627_lit_string_α:
                        mov              qword ptr [rbp + 800], 2                       # result
                        mov              dword ptr [rbp + 804], 5
                        mov              rax, qword ptr [rip + .Lx00628_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00629_make_list_α
.Lx00628_0:
                        .quad            .Lx00628_0_s
.Lx00628_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00629_make_list_α:
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
                                                                                        jmp   n00630_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00630_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052624], rax                    # Collections____STATIC__labels
                        mov              qword ptr [1879052632], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00583_disjunction_as
n00630_assign_β:
                                                                                        jmp   n00586_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___β:
                                                                                        jmp   proc_Collections___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 960]
                        mov              rcx, qword ptr [rbp + 936]
                        mov              rbp, qword ptr [rbp + 952]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___ω:
                        lea              rsp, [rbp + 960]
                        mov              rcx, qword ptr [rbp + 944]
                        mov              rbp, qword ptr [rbp + 952]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Collections___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00631_2]
                        lea              rdx, [rip + .Lx00631_3]
                                                                                        jmp   proc_Collections___α
.Lx00631_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00631_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Regions___α
proc_Regions___α:
                        sub              rsp, 928
                        mov              qword ptr [rsp + 904], rcx
                        mov              qword ptr [rsp + 912], rdx
                        mov              qword ptr [rsp + 920], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 896
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
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
n00636_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00637_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00637_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00638_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00638_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00639_1:
                        mov              rdi, qword ptr [rip + .Lx00639_0]               # sval
                        mov              rsi, qword ptr [rbp + 592]                     # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        je    n00640_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00641_call_builtin_icon_α
n00638_keyword_icon_gen_β:
                                                                                        jmp   .Lx00639_1
.Lx00639_0:
                        .quad            .Lx00639_0_s
.Lx00639_0_s:
                        .string          "&regions"
#-----------------------------------------------------------------------------------------------------------------------
n00641_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn1303:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1303]                        # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n00638_keyword_icon_gen_β
                                                                                        jmp   n00638_keyword_icon_gen_β
n00641_call_builtin_icon_β:
                                                                                        jmp   n00638_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00640_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Lx00642_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00643_call_builtin_icon_α
.Lx00642_0:
                        .quad            .Lx00642_0_s
.Lx00642_0_s:
                        .string          "regions"
#-----------------------------------------------------------------------------------------------------------------------
n00643_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn1306:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1306]                        # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n00644_lit_integer_α
                                                                                        jmp   n00644_lit_integer_α
n00643_call_builtin_icon_β:
                                                                                        jmp   n00644_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00644_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00645_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00646_var_α
.Lx00645_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00646_var_α:
                        mov              rax, qword ptr [1879052656]                    # Regions____STATIC__labels
                        mov              rdx, qword ptr [1879052664]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00647_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00647_unop_α:
                        mov              rdi, qword ptr [rbp + 96]                      # lo
                        mov              rsi, qword ptr [rbp + 104]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00648_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00648_to_α:
                        mov              rdi, qword ptr [rbp + 64]                      # v
                        mov              rsi, qword ptr [rbp + 72]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]                      # v
                        mov              rsi, qword ptr [rbp + 88]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00649_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00650_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00651_assign_α
n00648_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00649_0
#-----------------------------------------------------------------------------------------------------------------------
n00651_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00652_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00652_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00653_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00653_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052656                                # Regions____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00654_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00654_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00655_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00655_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]                     # base
                        mov              rsi, qword ptr [rbp + 232]                     # base
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        mov              rcx, qword ptr [rbp + 248]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00656_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00657_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00657_deref_α:
                        mov              rdi, qword ptr [rbp + 256]                     # d
                        mov              rsi, qword ptr [rbp + 264]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00656_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00658_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00658_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00659_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00659_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00660_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00660_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]                     # base
                        mov              rsi, qword ptr [rbp + 360]                     # base
                        mov              rdx, qword ptr [rbp + 368]                     # idx
                        mov              rcx, qword ptr [rbp + 376]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00656_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00661_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00661_deref_α:
                        mov              rdi, qword ptr [rbp + 384]                     # d
                        mov              rsi, qword ptr [rbp + 392]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00656_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00662_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00662_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00663_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00664_call_builtin_icon_α
.Lx00663_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00664_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn1329:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1329]                        # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n00656_unmark_α
                                                                                        jmp   n00665_call_builtin_icon_α
n00664_call_builtin_icon_β:
                                                                                        jmp   n00656_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00665_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn1331:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1331]                        # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00656_unmark_α
                                                                                        jmp   n00656_unmark_α
n00665_call_builtin_icon_β:
                                                                                        jmp   n00656_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00656_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00648_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00650_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Regions___γ
#-----------------------------------------------------------------------------------------------------------------------
n00633_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052672                                # Regions____INITFLAG__0
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00666_nulltest_var_α
n00633_var_ref_β:
                                                                                        jmp   n00632_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00666_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 104
                                                                                        je    n00632_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]                     # d
                        mov              rsi, qword ptr [rbp + 792]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00632_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00632_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00667_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00667_lit_integer_α:
                        mov              qword ptr [rbp + 832], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00668_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00669_assign_var_α
.Lx00668_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00669_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]                     # var
                        mov              rsi, qword ptr [rbp + 808]                     # var
                        mov              rdx, qword ptr [rbp + 832]                     # val
                        mov              rcx, qword ptr [rbp + 840]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00632_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00670_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00670_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 6
                        mov              rax, qword ptr [rip + .Lx00671_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00672_lit_string_α
.Lx00671_0:
                        .quad            .Lx00671_0_s
.Lx00671_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00672_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 6
                        mov              rax, qword ptr [rip + .Lx00673_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00674_lit_string_α
.Lx00673_0:
                        .quad            .Lx00673_0_s
.Lx00673_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00674_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 5
                        mov              rax, qword ptr [rip + .Lx00675_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00676_make_list_α
.Lx00675_0:
                        .quad            .Lx00675_0_s
.Lx00675_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00676_make_list_α:
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
                                                                                        jmp   n00677_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00677_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052656], rax                    # Regions____STATIC__labels
                        mov              qword ptr [1879052664], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00632_disjunction_as
n00677_assign_β:
                                                                                        jmp   n00635_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___β:
                                                                                        jmp   proc_Regions___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___ω:
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 912]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Regions___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00678_2]
                        lea              rdx, [rip + .Lx00678_3]
                                                                                        jmp   proc_Regions___α
.Lx00678_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00678_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Signature___α
proc_Signature___α:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 272
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
proc_Signature___α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00679_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00680_0]               # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
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
                        lea              rdi, [rip + .Lrkfn1356]                        # fn
                        lea              rsi, [rbp + 192]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 104
                                                                                        je    n00681_keyword_icon_α
                                                                                        jmp   n00681_keyword_icon_α
n00682_call_builtin_icon_β:
                                                                                        jmp   n00681_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00681_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00683_0]               # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
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
                        lea              rdi, [rip + .Lrkfn1359]                        # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n00684_keyword_icon_gen_α
                                                                                        jmp   n00684_keyword_icon_gen_α
n00685_call_builtin_icon_β:
                                                                                        jmp   n00684_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00684_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 80], 0
.Lx00686_1:
                        mov              rdi, qword ptr [rip + .Lx00686_0]               # sval
                        mov              rsi, qword ptr [rbp + 80]                      # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
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
                        lea              rdi, [rip + .Lrkfn1362]                        # fn
                        lea              rsi, [rbp + 32]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 104
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
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 304]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___ω:
                        lea              rsp, [rbp + 304]
                        mov              rcx, qword ptr [rbp + 288]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Signature___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00689_2]
                        lea              rdx, [rip + .Lx00689_3]
                                                                                        jmp   proc_Signature___α
.Lx00689_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00689_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Storage___α
proc_Storage___α:
                        sub              rsp, 928
                        mov              qword ptr [rsp + 904], rcx
                        mov              qword ptr [rsp + 912], rdx
                        mov              qword ptr [rsp + 920], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 896
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
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
n00694_assign_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n00695_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00695_var_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n00696_keyword_icon_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n00696_keyword_icon_gen_α:
                        mov              qword ptr [rbp + 592], 0
.Lx00697_1:
                        mov              rdi, qword ptr [rip + .Lx00697_0]               # sval
                        mov              rsi, qword ptr [rbp + 592]                     # idx
                        call             rt_keyword_gen@PLT
                        cmp              eax, 104
                                                                                        je    n00698_lit_string_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              rax, qword ptr [rbp + 592]
                        add              rax, 1
                        mov              qword ptr [rbp + 592], rax
                                                                                        jmp   n00699_call_builtin_icon_α
n00696_keyword_icon_gen_β:
                                                                                        jmp   .Lx00697_1
.Lx00697_0:
                        .quad            .Lx00697_0_s
.Lx00697_0_s:
                        .string          "&storage"
#-----------------------------------------------------------------------------------------------------------------------
n00699_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lrkfn1410:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1410]                        # fn
                        lea              rsi, [rbp + 512]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n00696_keyword_icon_gen_β
                                                                                        jmp   n00696_keyword_icon_gen_β
n00699_call_builtin_icon_β:
                                                                                        jmp   n00696_keyword_icon_gen_β
#-----------------------------------------------------------------------------------------------------------------------
n00698_lit_string_α:
                        mov              qword ptr [rbp + 480], 2                       # result
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Lx00700_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n00701_call_builtin_icon_α
.Lx00700_0:
                        .quad            .Lx00700_0_s
.Lx00700_0_s:
                        .string          "storage"
#-----------------------------------------------------------------------------------------------------------------------
n00701_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lrkfn1413:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1413]                        # fn
                        lea              rsi, [rbp + 448]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    n00702_lit_integer_α
                                                                                        jmp   n00702_lit_integer_α
n00701_call_builtin_icon_β:
                                                                                        jmp   n00702_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00702_lit_integer_α:
                        mov              qword ptr [rbp + 64], 3                        # result
                        mov              rax, qword ptr [rip + .Lx00703_0]
                        mov              qword ptr [rbp + 72], rax
                                                                                        jmp   n00704_var_α
.Lx00703_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00704_var_α:
                        mov              rax, qword ptr [1879052688]                    # Storage____STATIC__labels
                        mov              rdx, qword ptr [1879052696]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00705_unop_α
#-----------------------------------------------------------------------------------------------------------------------
n00705_unop_α:
                        mov              rdi, qword ptr [rbp + 96]                      # lo
                        mov              rsi, qword ptr [rbp + 104]                     # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                                                                                        jmp   n00706_to_α
#-----------------------------------------------------------------------------------------------------------------------
n00706_to_α:
                        mov              rdi, qword ptr [rbp + 64]                      # v
                        mov              rsi, qword ptr [rbp + 72]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]                      # v
                        mov              rsi, qword ptr [rbp + 88]                      # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lx00707_0:
                        mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx
                                                                                        jg    n00708_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00709_assign_α
n00706_to_β:
                        inc              qword ptr [rbp + 48]
                                                                                        jmp   .Lx00707_0
#-----------------------------------------------------------------------------------------------------------------------
n00709_assign_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n00710_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n00710_bound_α:
                        mov              qword ptr [rbp + 112], rsp
                                                                                        jmp   n00711_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00711_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052688                                # Storage____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00712_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00712_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00713_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00713_subscript_α:
                        mov              rdi, qword ptr [rbp + 224]                     # base
                        mov              rsi, qword ptr [rbp + 232]                     # base
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        mov              rcx, qword ptr [rbp + 248]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00714_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n00715_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00715_deref_α:
                        mov              rdi, qword ptr [rbp + 256]                     # d
                        mov              rsi, qword ptr [rbp + 264]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00714_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n00716_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00716_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n00717_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00717_var_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n00718_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n00718_subscript_α:
                        mov              rdi, qword ptr [rbp + 352]                     # base
                        mov              rsi, qword ptr [rbp + 360]                     # base
                        mov              rdx, qword ptr [rbp + 368]                     # idx
                        mov              rcx, qword ptr [rbp + 376]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00714_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n00719_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00719_deref_α:
                        mov              rdi, qword ptr [rbp + 384]                     # d
                        mov              rsi, qword ptr [rbp + 392]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00714_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n00720_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00720_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00721_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n00722_call_builtin_icon_α
.Lx00721_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n00722_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn1436:             .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1436]                        # fn
                        lea              rsi, [rbp + 304]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n00714_unmark_α
                                                                                        jmp   n00723_call_builtin_icon_α
n00722_call_builtin_icon_β:
                                                                                        jmp   n00714_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00723_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lrkfn1438:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1438]                        # fn
                        lea              rsi, [rbp + 176]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n00714_unmark_α
                                                                                        jmp   n00714_unmark_α
n00723_call_builtin_icon_β:
                                                                                        jmp   n00714_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n00714_unmark_α:
                        mov              rsp, qword ptr [rbp + 112]
                                                                                        jmp   n00706_to_β
#-----------------------------------------------------------------------------------------------------------------------
n00708_return_α:
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                                                                                        jmp   proc_Storage___γ
#-----------------------------------------------------------------------------------------------------------------------
n00691_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052704                                # Storage____INITFLAG__0
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n00724_nulltest_var_α
n00691_var_ref_β:
                                                                                        jmp   n00690_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00724_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 104
                                                                                        je    n00690_disjunction_af
                        mov              rdi, qword ptr [rbp + 784]                     # d
                        mov              rsi, qword ptr [rbp + 792]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00690_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00690_disjunction_af
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n00725_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00725_lit_integer_α:
                        mov              qword ptr [rbp + 832], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00726_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n00727_assign_var_α
.Lx00726_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00727_assign_var_α:
                        mov              rdi, qword ptr [rbp + 800]                     # var
                        mov              rsi, qword ptr [rbp + 808]                     # var
                        mov              rdx, qword ptr [rbp + 832]                     # val
                        mov              rcx, qword ptr [rbp + 840]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00690_disjunction_af
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n00728_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00728_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 6
                        mov              rax, qword ptr [rip + .Lx00729_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n00730_lit_string_α
.Lx00729_0:
                        .quad            .Lx00729_0_s
.Lx00729_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00730_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 6
                        mov              rax, qword ptr [rip + .Lx00731_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n00732_lit_string_α
.Lx00731_0:
                        .quad            .Lx00731_0_s
.Lx00731_0_s:
                        .string          "string"
#-----------------------------------------------------------------------------------------------------------------------
n00732_lit_string_α:
                        mov              qword ptr [rbp + 768], 2                       # result
                        mov              dword ptr [rbp + 772], 5
                        mov              rax, qword ptr [rip + .Lx00733_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n00734_make_list_α
.Lx00733_0:
                        .quad            .Lx00733_0_s
.Lx00733_0_s:
                        .string          "block"
#-----------------------------------------------------------------------------------------------------------------------
n00734_make_list_α:
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
                                                                                        jmp   n00735_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00735_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [1879052688], rax                    # Storage____STATIC__labels
                        mov              qword ptr [1879052696], rdx
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n00690_disjunction_as
n00735_assign_β:
                                                                                        jmp   n00693_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___β:
                                                                                        jmp   proc_Storage___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___ω:
                        lea              rsp, [rbp + 928]
                        mov              rcx, qword ptr [rbp + 912]
                        mov              rbp, qword ptr [rbp + 920]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Storage___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00736_2]
                        lea              rdx, [rip + .Lx00736_3]
                                                                                        jmp   proc_Storage___α
.Lx00736_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00736_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_Time___α
proc_Time___α:
                        sub              rsp, 304
                        mov              qword ptr [rsp + 280], rcx
                        mov              qword ptr [rsp + 288], rdx
                        mov              qword ptr [rsp + 296], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 272
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
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
                        mov              rdi, qword ptr [rip + .Lx00741_0]               # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
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
n00742_var_α:
                        mov              rax, qword ptr [1879052720]                    # Time____STATIC__lasttime
                        mov              rdx, qword ptr [1879052728]
                        mov              qword ptr [rbp + 96], rax                      # result
                        mov              qword ptr [rbp + 104], rdx
                                                                                        jmp   n00743_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00743_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 5
                                                                                        je    .Lx00744_1
                        cmp              eax, 3
                                                                                        jne   .Lx00744_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 3
                                                                                        jne   .Lx00744_0
.Lx00744_1:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n00745_coerce_numeric_α
.Lx00744_0:
                        lea              rdi, [rbp + 64]                                # self
                        lea              rsi, [rbp + 96]                                # other
                        lea              rdx, [rbp + 48]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00745_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n00745_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 96]
                        cmp              eax, 5
                                                                                        je    .Lx00746_1
                        cmp              eax, 3
                                                                                        jne   .Lx00746_0
                        mov              eax, dword ptr [rbp + 64]
                        cmp              eax, 3
                                                                                        jne   .Lx00746_0
.Lx00746_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax
                                                                                        jmp   n00747_binop_α
.Lx00746_0:
                        lea              rdi, [rbp + 96]                                # self
                        lea              rsi, [rbp + 64]                                # other
                        lea              rdx, [rbp + 32]                                # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n00747_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n00747_binop_α:
                        mov              eax, dword ptr [rbp + 48]
                        cmp              eax, 3
                                                                                        jne   .Lx00748_0
                        mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 3
                                                                                        jne   .Lx00748_0
                        mov              rax, qword ptr [rbp + 56]
                        mov              rcx, qword ptr [rbp + 40]
                        sub              rax, rcx
                        mov              qword ptr [rbp + 16], 3
                        mov              qword ptr [rbp + 24], rax
                                                                                        jmp   n00749_return_α
.Lx00748_0:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        call             rt_sub@PLT
                        cmp              eax, 104
                                                                                        je    proc_Time___ω
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                                                                                        jmp   n00749_return_α
#-----------------------------------------------------------------------------------------------------------------------
n00749_return_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                                                                                        jmp   proc_Time___γ
#-----------------------------------------------------------------------------------------------------------------------
n00738_var_ref_α:
                        mov              rax, 4294967336
                        mov              rdx, 1879052736                                # Time____INITFLAG__0
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n00750_nulltest_var_α
n00738_var_ref_β:
                                                                                        jmp   n00737_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00750_nulltest_var_α:
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 104
                                                                                        je    n00737_disjunction_af
                        mov              rdi, qword ptr [rbp + 192]                     # d
                        mov              rsi, qword ptr [rbp + 200]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00737_disjunction_af
                        cmp              eax, 0
                                                                                        jne   n00737_disjunction_af
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n00751_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00751_lit_integer_α:
                        mov              qword ptr [rbp + 240], 3                       # result
                        mov              rax, qword ptr [rip + .Lx00752_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n00753_assign_var_α
.Lx00752_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00753_assign_var_α:
                        mov              rdi, qword ptr [rbp + 208]                     # var
                        mov              rsi, qword ptr [rbp + 216]                     # var
                        mov              rdx, qword ptr [rbp + 240]                     # val
                        mov              rcx, qword ptr [rbp + 248]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00737_disjunction_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n00754_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00754_keyword_icon_α:
                        mov              rdi, qword ptr [rip + .Lx00755_0]               # sval
                        call             rt_keyword_read@PLT
                        cmp              eax, 104
                                                                                        je    n00740_keyword_icon_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n00756_assign_α
n00754_keyword_icon_β:
                                                                                        jmp   n00740_keyword_icon_α
.Lx00755_0:
                        .quad            .Lx00755_0_s
.Lx00755_0_s:
                        .string          "&time"
#-----------------------------------------------------------------------------------------------------------------------
n00756_assign_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [1879052720], rax                    # Time____STATIC__lasttime
                        mov              qword ptr [1879052728], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n00737_disjunction_as
n00756_assign_β:
                                                                                        jmp   n00740_keyword_icon_α
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___β:
                                                                                        jmp   proc_Time___ω
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 304]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___ω:
                        lea              rsp, [rbp + 304]
                        mov              rcx, qword ptr [rbp + 288]
                        mov              rbp, qword ptr [rbp + 296]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_Time___dcα:
                        pop              r11
                        push             r11
                        push             r11
                        lea              rcx, [rip + .Lx00757_2]
                        lea              rdx, [rip + .Lx00757_3]
                                                                                        jmp   proc_Time___α
.Lx00757_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx00757_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
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
                        mov              r12, qword ptr [0x70000000]
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                                        jmp   main_α
.Lmain_zf_γ:
                        xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 6560
                        mov              qword ptr [rsp + 6536], rcx
                        mov              qword ptr [rsp + 6544], rdx
                        mov              qword ptr [rsp + 6552], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 6528
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 1
                        mov              edx, 9
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n00758_lit_string_α:
                        mov              qword ptr [rbp + 6368], 2                      # result
                        mov              dword ptr [rbp + 6372], 6
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
                        cmp              eax, 104
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
                        mov              qword ptr [rbp + 5872], 2                      # result
                        mov              dword ptr [rbp + 5876], 5
                        mov              rax, qword ptr [rip + .Lx00763_0]
                        mov              qword ptr [rbp + 5880], rax
                                                                                        jmp   n00764_lit_string_α
.Lx00763_0:
                        .quad            .Lx00763_0_s
.Lx00763_0_s:
                        .string          "break"
#-----------------------------------------------------------------------------------------------------------------------
n00764_lit_string_α:
                        mov              qword ptr [rbp + 5888], 2                      # result
                        mov              dword ptr [rbp + 5892], 2
                        mov              rax, qword ptr [rip + .Lx00765_0]
                        mov              qword ptr [rbp + 5896], rax
                                                                                        jmp   n00766_lit_string_α
.Lx00765_0:
                        .quad            .Lx00765_0_s
.Lx00765_0_s:
                        .string          "by"
#-----------------------------------------------------------------------------------------------------------------------
n00766_lit_string_α:
                        mov              qword ptr [rbp + 5904], 2                      # result
                        mov              dword ptr [rbp + 5908], 4
                        mov              rax, qword ptr [rip + .Lx00767_0]
                        mov              qword ptr [rbp + 5912], rax
                                                                                        jmp   n00768_lit_string_α
.Lx00767_0:
                        .quad            .Lx00767_0_s
.Lx00767_0_s:
                        .string          "case"
#-----------------------------------------------------------------------------------------------------------------------
n00768_lit_string_α:
                        mov              qword ptr [rbp + 5920], 2                      # result
                        mov              dword ptr [rbp + 5924], 7
                        mov              rax, qword ptr [rip + .Lx00769_0]
                        mov              qword ptr [rbp + 5928], rax
                                                                                        jmp   n00770_lit_string_α
.Lx00769_0:
                        .quad            .Lx00769_0_s
.Lx00769_0_s:
                        .string          "default"
#-----------------------------------------------------------------------------------------------------------------------
n00770_lit_string_α:
                        mov              qword ptr [rbp + 5936], 2                      # result
                        mov              dword ptr [rbp + 5940], 2
                        mov              rax, qword ptr [rip + .Lx00771_0]
                        mov              qword ptr [rbp + 5944], rax
                                                                                        jmp   n00772_lit_string_α
.Lx00771_0:
                        .quad            .Lx00771_0_s
.Lx00771_0_s:
                        .string          "do"
#-----------------------------------------------------------------------------------------------------------------------
n00772_lit_string_α:
                        mov              qword ptr [rbp + 5952], 2                      # result
                        mov              dword ptr [rbp + 5956], 7
                        mov              rax, qword ptr [rip + .Lx00773_0]
                        mov              qword ptr [rbp + 5960], rax
                                                                                        jmp   n00774_lit_string_α
.Lx00773_0:
                        .quad            .Lx00773_0_s
.Lx00773_0_s:
                        .string          "dynamic"
#-----------------------------------------------------------------------------------------------------------------------
n00774_lit_string_α:
                        mov              qword ptr [rbp + 5968], 2                      # result
                        mov              dword ptr [rbp + 5972], 4
                        mov              rax, qword ptr [rip + .Lx00775_0]
                        mov              qword ptr [rbp + 5976], rax
                                                                                        jmp   n00776_lit_string_α
.Lx00775_0:
                        .quad            .Lx00775_0_s
.Lx00775_0_s:
                        .string          "else"
#-----------------------------------------------------------------------------------------------------------------------
n00776_lit_string_α:
                        mov              qword ptr [rbp + 5984], 2                      # result
                        mov              dword ptr [rbp + 5988], 3
                        mov              rax, qword ptr [rip + .Lx00777_0]
                        mov              qword ptr [rbp + 5992], rax
                                                                                        jmp   n00778_lit_string_α
.Lx00777_0:
                        .quad            .Lx00777_0_s
.Lx00777_0_s:
                        .string          "end"
#-----------------------------------------------------------------------------------------------------------------------
n00778_lit_string_α:
                        mov              qword ptr [rbp + 6000], 2                      # result
                        mov              dword ptr [rbp + 6004], 5
                        mov              rax, qword ptr [rip + .Lx00779_0]
                        mov              qword ptr [rbp + 6008], rax
                                                                                        jmp   n00780_lit_string_α
.Lx00779_0:
                        .quad            .Lx00779_0_s
.Lx00779_0_s:
                        .string          "every"
#-----------------------------------------------------------------------------------------------------------------------
n00780_lit_string_α:
                        mov              qword ptr [rbp + 6016], 2                      # result
                        mov              dword ptr [rbp + 6020], 4
                        mov              rax, qword ptr [rip + .Lx00781_0]
                        mov              qword ptr [rbp + 6024], rax
                                                                                        jmp   n00782_lit_string_α
.Lx00781_0:
                        .quad            .Lx00781_0_s
.Lx00781_0_s:
                        .string          "fail"
#-----------------------------------------------------------------------------------------------------------------------
n00782_lit_string_α:
                        mov              qword ptr [rbp + 6032], 2                      # result
                        mov              dword ptr [rbp + 6036], 6
                        mov              rax, qword ptr [rip + .Lx00783_0]
                        mov              qword ptr [rbp + 6040], rax
                                                                                        jmp   n00784_lit_string_α
.Lx00783_0:
                        .quad            .Lx00783_0_s
.Lx00783_0_s:
                        .string          "global"
#-----------------------------------------------------------------------------------------------------------------------
n00784_lit_string_α:
                        mov              qword ptr [rbp + 6048], 2                      # result
                        mov              dword ptr [rbp + 6052], 2
                        mov              rax, qword ptr [rip + .Lx00785_0]
                        mov              qword ptr [rbp + 6056], rax
                                                                                        jmp   n00786_lit_string_α
.Lx00785_0:
                        .quad            .Lx00785_0_s
.Lx00785_0_s:
                        .string          "if"
#-----------------------------------------------------------------------------------------------------------------------
n00786_lit_string_α:
                        mov              qword ptr [rbp + 6064], 2                      # result
                        mov              dword ptr [rbp + 6068], 7
                        mov              rax, qword ptr [rip + .Lx00787_0]
                        mov              qword ptr [rbp + 6072], rax
                                                                                        jmp   n00788_lit_string_α
.Lx00787_0:
                        .quad            .Lx00787_0_s
.Lx00787_0_s:
                        .string          "initial"
#-----------------------------------------------------------------------------------------------------------------------
n00788_lit_string_α:
                        mov              qword ptr [rbp + 6080], 2                      # result
                        mov              dword ptr [rbp + 6084], 4
                        mov              rax, qword ptr [rip + .Lx00789_0]
                        mov              qword ptr [rbp + 6088], rax
                                                                                        jmp   n00790_lit_string_α
.Lx00789_0:
                        .quad            .Lx00789_0_s
.Lx00789_0_s:
                        .string          "link"
#-----------------------------------------------------------------------------------------------------------------------
n00790_lit_string_α:
                        mov              qword ptr [rbp + 6096], 2                      # result
                        mov              dword ptr [rbp + 6100], 5
                        mov              rax, qword ptr [rip + .Lx00791_0]
                        mov              qword ptr [rbp + 6104], rax
                                                                                        jmp   n00792_lit_string_α
.Lx00791_0:
                        .quad            .Lx00791_0_s
.Lx00791_0_s:
                        .string          "local"
#-----------------------------------------------------------------------------------------------------------------------
n00792_lit_string_α:
                        mov              qword ptr [rbp + 6112], 2                      # result
                        mov              dword ptr [rbp + 6116], 4
                        mov              rax, qword ptr [rip + .Lx00793_0]
                        mov              qword ptr [rbp + 6120], rax
                                                                                        jmp   n00794_lit_string_α
.Lx00793_0:
                        .quad            .Lx00793_0_s
.Lx00793_0_s:
                        .string          "next"
#-----------------------------------------------------------------------------------------------------------------------
n00794_lit_string_α:
                        mov              qword ptr [rbp + 6128], 2                      # result
                        mov              dword ptr [rbp + 6132], 3
                        mov              rax, qword ptr [rip + .Lx00795_0]
                        mov              qword ptr [rbp + 6136], rax
                                                                                        jmp   n00796_lit_string_α
.Lx00795_0:
                        .quad            .Lx00795_0_s
.Lx00795_0_s:
                        .string          "not"
#-----------------------------------------------------------------------------------------------------------------------
n00796_lit_string_α:
                        mov              qword ptr [rbp + 6144], 2                      # result
                        mov              dword ptr [rbp + 6148], 2
                        mov              rax, qword ptr [rip + .Lx00797_0]
                        mov              qword ptr [rbp + 6152], rax
                                                                                        jmp   n00798_lit_string_α
.Lx00797_0:
                        .quad            .Lx00797_0_s
.Lx00797_0_s:
                        .string          "of"
#-----------------------------------------------------------------------------------------------------------------------
n00798_lit_string_α:
                        mov              qword ptr [rbp + 6160], 2                      # result
                        mov              dword ptr [rbp + 6164], 9
                        mov              rax, qword ptr [rip + .Lx00799_0]
                        mov              qword ptr [rbp + 6168], rax
                                                                                        jmp   n00800_lit_string_α
.Lx00799_0:
                        .quad            .Lx00799_0_s
.Lx00799_0_s:
                        .string          "procedure"
#-----------------------------------------------------------------------------------------------------------------------
n00800_lit_string_α:
                        mov              qword ptr [rbp + 6176], 2                      # result
                        mov              dword ptr [rbp + 6180], 6
                        mov              rax, qword ptr [rip + .Lx00801_0]
                        mov              qword ptr [rbp + 6184], rax
                                                                                        jmp   n00802_lit_string_α
.Lx00801_0:
                        .quad            .Lx00801_0_s
.Lx00801_0_s:
                        .string          "record"
#-----------------------------------------------------------------------------------------------------------------------
n00802_lit_string_α:
                        mov              qword ptr [rbp + 6192], 2                      # result
                        mov              dword ptr [rbp + 6196], 6
                        mov              rax, qword ptr [rip + .Lx00803_0]
                        mov              qword ptr [rbp + 6200], rax
                                                                                        jmp   n00804_lit_string_α
.Lx00803_0:
                        .quad            .Lx00803_0_s
.Lx00803_0_s:
                        .string          "repeat"
#-----------------------------------------------------------------------------------------------------------------------
n00804_lit_string_α:
                        mov              qword ptr [rbp + 6208], 2                      # result
                        mov              dword ptr [rbp + 6212], 6
                        mov              rax, qword ptr [rip + .Lx00805_0]
                        mov              qword ptr [rbp + 6216], rax
                                                                                        jmp   n00806_lit_string_α
.Lx00805_0:
                        .quad            .Lx00805_0_s
.Lx00805_0_s:
                        .string          "return"
#-----------------------------------------------------------------------------------------------------------------------
n00806_lit_string_α:
                        mov              qword ptr [rbp + 6224], 2                      # result
                        mov              dword ptr [rbp + 6228], 6
                        mov              rax, qword ptr [rip + .Lx00807_0]
                        mov              qword ptr [rbp + 6232], rax
                                                                                        jmp   n00808_lit_string_α
.Lx00807_0:
                        .quad            .Lx00807_0_s
.Lx00807_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00808_lit_string_α:
                        mov              qword ptr [rbp + 6240], 2                      # result
                        mov              dword ptr [rbp + 6244], 7
                        mov              rax, qword ptr [rip + .Lx00809_0]
                        mov              qword ptr [rbp + 6248], rax
                                                                                        jmp   n00810_lit_string_α
.Lx00809_0:
                        .quad            .Lx00809_0_s
.Lx00809_0_s:
                        .string          "suspend"
#-----------------------------------------------------------------------------------------------------------------------
n00810_lit_string_α:
                        mov              qword ptr [rbp + 6256], 2                      # result
                        mov              dword ptr [rbp + 6260], 4
                        mov              rax, qword ptr [rip + .Lx00811_0]
                        mov              qword ptr [rbp + 6264], rax
                                                                                        jmp   n00812_lit_string_α
.Lx00811_0:
                        .quad            .Lx00811_0_s
.Lx00811_0_s:
                        .string          "then"
#-----------------------------------------------------------------------------------------------------------------------
n00812_lit_string_α:
                        mov              qword ptr [rbp + 6272], 2                      # result
                        mov              dword ptr [rbp + 6276], 2
                        mov              rax, qword ptr [rip + .Lx00813_0]
                        mov              qword ptr [rbp + 6280], rax
                                                                                        jmp   n00814_lit_string_α
.Lx00813_0:
                        .quad            .Lx00813_0_s
.Lx00813_0_s:
                        .string          "to"
#-----------------------------------------------------------------------------------------------------------------------
n00814_lit_string_α:
                        mov              qword ptr [rbp + 6288], 2                      # result
                        mov              dword ptr [rbp + 6292], 5
                        mov              rax, qword ptr [rip + .Lx00815_0]
                        mov              qword ptr [rbp + 6296], rax
                                                                                        jmp   n00816_lit_string_α
.Lx00815_0:
                        .quad            .Lx00815_0_s
.Lx00815_0_s:
                        .string          "until"
#-----------------------------------------------------------------------------------------------------------------------
n00816_lit_string_α:
                        mov              qword ptr [rbp + 6304], 2                      # result
                        mov              dword ptr [rbp + 6308], 5
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
                        mov              qword ptr [1879052288], rax                    # resword
                        mov              qword ptr [1879052296], rdx
                                                                                        jmp   n00820_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00820_lit_integer_α:
                        mov              qword ptr [rbp + 5392], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00821_0]
                        mov              qword ptr [rbp + 5400], rax
                                                                                        jmp   n00822_assign_α
.Lx00821_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n00822_assign_α:
                        mov              rax, qword ptr [rbp + 5392]
                        mov              rdx, qword ptr [rbp + 5400]
                        mov              qword ptr [1879052304], rax                    # linenum
                        mov              qword ptr [1879052312], rdx
                                                                                        jmp   n00823_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00823_call_builtin_icon_α:
                        .section         .rodata
.Lrkfn1812:             .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1812]                        # fn
                        lea              rsi, [rbp + 5376]                              # args
                        mov              edx, 0                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 5360], rax
                        mov              qword ptr [rbp + 5368], rdx
                        cmp              eax, 104
                                                                                        je    n00824_make_list_α
                                                                                        jmp   n00825_assign_α
n00823_call_builtin_icon_β:
                                                                                        jmp   n00824_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00825_assign_α:
                        mov              rax, qword ptr [rbp + 5360]
                        mov              rdx, qword ptr [rbp + 5368]
                        mov              qword ptr [1879052352], rax                    # var
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
                        mov              qword ptr [1879052480], rax                    # localvar
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
                        mov              qword ptr [1879052368], rax                    # buffer
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n00831_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00831_lit_string_α:
                        mov              qword ptr [rbp + 5296], 2                      # result
                        mov              dword ptr [rbp + 5300], 6
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
                        mov              qword ptr [rbp + 5264], 2                      # result
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
                        mov              qword ptr [rbp + 5280], 2                      # result
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
                        cmp              eax, 104
                                                                                        je    n00839_var_α
                        mov              qword ptr [rbp + 5248], rax
                        mov              qword ptr [rbp + 5256], rdx
                                                                                        jmp   n00840_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00840_assign_α:
                        mov              rax, qword ptr [rbp + 5248]
                        mov              rdx, qword ptr [rbp + 5256]
                        mov              qword ptr [1879052320], rax                    # letters
                        mov              qword ptr [1879052328], rdx
                                                                                        jmp   n00839_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00839_var_α:
                        mov              rax, qword ptr [1879052320]                    # letters
                        mov              rdx, qword ptr [1879052328]
                        mov              qword ptr [rbp + 5216], rax                    # result
                        mov              qword ptr [rbp + 5224], rdx
                                                                                        jmp   n00841_lit_charset_α
#-----------------------------------------------------------------------------------------------------------------------
n00841_lit_charset_α:
                        mov              qword ptr [rbp + 5232], 2                      # result
                        mov              dword ptr [rbp + 5236], -1
                        mov              rax, qword ptr [rip + .Lx00842_0]
                        mov              qword ptr [rbp + 5240], rax
                                                                                        jmp   n00843_binop_α
.Lx00842_0:
                        .quad            .Lx00842_0_s
.Lx00842_0_s:
                        .string          "0123456789"
#-----------------------------------------------------------------------------------------------------------------------
n00843_binop_α:
                        mov              rdi, qword ptr [rbp + 5216]
                        mov              rsi, qword ptr [rbp + 5224]
                        mov              rdx, qword ptr [rbp + 5232]
                        mov              rcx, qword ptr [rbp + 5240]
                        call             rt_cunion@PLT
                        cmp              eax, 104
                                                                                        je    n00844_var_α
                        mov              qword ptr [rbp + 5200], rax
                        mov              qword ptr [rbp + 5208], rdx
                                                                                        jmp   n00845_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00845_assign_α:
                        mov              rax, qword ptr [rbp + 5200]
                        mov              rdx, qword ptr [rbp + 5208]
                        mov              qword ptr [1879052336], rax                    # alphas
                        mov              qword ptr [1879052344], rdx
                                                                                        jmp   n00844_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00844_var_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 5168], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 5176], rax
                                                                                        jmp   n00846_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00846_lit_string_α:
                        mov              qword ptr [rbp + 5184], 2                      # result
                        mov              dword ptr [rbp + 5188], 8
                        mov              rax, qword ptr [rip + .Lx00847_0]
                        mov              qword ptr [rbp + 5192], rax
                                                                                        jmp   n00848_call_proc_staged_α
.Lx00847_0:
                        .quad            .Lx00847_0_s
.Lx00847_0_s:
                        .string          "qxw+l+c+"
#-----------------------------------------------------------------------------------------------------------------------
n00848_call_proc_staged_α:
                        lea              rsi, [rbp + 5168]
                        lea              rdx, [rbp + 5184]
                        call             proc_options_dcα
                                                                                        jmp   .Lx00849_2
.Lx00849_2:
                        mov              qword ptr [rbp + 5104], rax
                        mov              qword ptr [rbp + 5112], rdx
                        cmp              eax, 104
                                                                                        je    n00850_disjunction_α
                                                                                        jmp   n00851_assign_α
n00848_call_proc_staged_β:
                                                                                        jmp   n00850_disjunction_α
.Lx00849_0:
                        .quad            .Lx00849_0_s
.Lx00849_0_s:
                        .string          "options"
#-----------------------------------------------------------------------------------------------------------------------
n00851_assign_α:
                        mov              rax, qword ptr [rbp + 5104]
                        mov              rdx, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 6496], rax
                        mov              qword ptr [rbp + 6504], rdx
                                                                                        jmp   n00850_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00850_disjunction_α:
                        mov              qword ptr [rbp + 4960], 0
                        mov              qword ptr [rbp + 4968], 0
                        mov              dword ptr [rbp + 4976], 0
                                                                                        jmp   n00852_var_ref_α
n00850_disjunction_as:
                        mov              eax, dword ptr [rbp + 4976]
                        cmp              eax, 0
                                                                                        jne   .Lx00853_0
                        mov              rax, qword ptr [rbp + 4992]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 4968], rax
                                                                                        jmp   n00854_disjunction_α
.Lx00853_0:
                                                                                        jmp   n00854_disjunction_α
n00850_disjunction_β:
                        mov              eax, dword ptr [rbp + 4976]
                                                                                        jmp   n00854_disjunction_α
n00850_disjunction_af:
                        add              dword ptr [rbp + 4976], 1
                        mov              eax, dword ptr [rbp + 4976]
                                                                                        jmp   n00854_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00854_disjunction_α:
                        mov              qword ptr [rbp + 4816], 0
                        mov              qword ptr [rbp + 4824], 0
                        mov              dword ptr [rbp + 4832], 0
                                                                                        jmp   n00855_var_ref_α
n00854_disjunction_as:
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
n00854_disjunction_β:
                        mov              eax, dword ptr [rbp + 4832]
                                                                                        jmp   n00857_var_ref_α
n00854_disjunction_af:
                        add              dword ptr [rbp + 4832], 1
                        mov              eax, dword ptr [rbp + 4832]
                                                                                        jmp   n00857_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00857_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6496]
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                                                                                        jmp   n00858_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00858_lit_string_α:
                        mov              qword ptr [rbp + 4768], 2                      # result
                        mov              dword ptr [rbp + 4772], 1
                        mov              rax, qword ptr [rip + .Lx00859_0]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   n00860_subscript_α
.Lx00859_0:
                        .quad            .Lx00859_0_s
.Lx00859_0_s:
                        .string          "w"
#-----------------------------------------------------------------------------------------------------------------------
n00860_subscript_α:
                        mov              rdi, qword ptr [rbp + 4752]                    # base
                        mov              rsi, qword ptr [rbp + 4760]                    # base
                        mov              rdx, qword ptr [rbp + 4768]                    # idx
                        mov              rcx, qword ptr [rbp + 4776]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00861_var_ref_α
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                                                                                        jmp   n00862_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00862_deref_α:
                        mov              rdi, qword ptr [rbp + 4784]                    # d
                        mov              rsi, qword ptr [rbp + 4792]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00861_var_ref_α
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                                                                                        jmp   n00863_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00863_unop_test_α:
                        mov              eax, dword ptr [rbp + 4800]
                        cmp              eax, 104
                                                                                        je    n00861_var_ref_α
                        cmp              eax, 0
                                                                                        je    n00861_var_ref_α
                        mov              rax, qword ptr [rbp + 4800]
                        mov              qword ptr [rbp + 4736], rax
                        mov              rax, qword ptr [rbp + 4808]
                        mov              qword ptr [rbp + 4744], rax
                                                                                        jmp   n00864_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00864_assign_α:
                        mov              rax, qword ptr [rbp + 4736]
                        mov              rdx, qword ptr [rbp + 4744]
                        mov              qword ptr [1879052432], rax                    # inmaxcol
                        mov              qword ptr [1879052440], rdx
                                                                                        jmp   n00861_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00861_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6496]
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx
                                                                                        jmp   n00865_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00865_lit_string_α:
                        mov              qword ptr [rbp + 4688], 2                      # result
                        mov              dword ptr [rbp + 4692], 1
                        mov              rax, qword ptr [rip + .Lx00866_0]
                        mov              qword ptr [rbp + 4696], rax
                                                                                        jmp   n00867_subscript_α
.Lx00866_0:
                        .quad            .Lx00866_0_s
.Lx00866_0_s:
                        .string          "l"
#-----------------------------------------------------------------------------------------------------------------------
n00867_subscript_α:
                        mov              rdi, qword ptr [rbp + 4672]                    # base
                        mov              rsi, qword ptr [rbp + 4680]                    # base
                        mov              rdx, qword ptr [rbp + 4688]                    # idx
                        mov              rcx, qword ptr [rbp + 4696]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00868_var_ref_α
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                                                                                        jmp   n00869_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00869_deref_α:
                        mov              rdi, qword ptr [rbp + 4704]                    # d
                        mov              rsi, qword ptr [rbp + 4712]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00868_var_ref_α
                        mov              qword ptr [rbp + 4720], rax
                        mov              qword ptr [rbp + 4728], rdx
                                                                                        jmp   n00870_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00870_unop_test_α:
                        mov              eax, dword ptr [rbp + 4720]
                        cmp              eax, 104
                                                                                        je    n00868_var_ref_α
                        cmp              eax, 0
                                                                                        je    n00868_var_ref_α
                        mov              rax, qword ptr [rbp + 4720]
                        mov              qword ptr [rbp + 4656], rax
                        mov              rax, qword ptr [rbp + 4728]
                        mov              qword ptr [rbp + 4664], rax
                                                                                        jmp   n00871_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00871_assign_α:
                        mov              rax, qword ptr [rbp + 4656]
                        mov              rdx, qword ptr [rbp + 4664]
                        mov              qword ptr [1879052448], rax                    # inlmarg
                        mov              qword ptr [1879052456], rdx
                                                                                        jmp   n00868_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00868_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6496]
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx
                                                                                        jmp   n00872_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00872_lit_string_α:
                        mov              qword ptr [rbp + 4608], 2                      # result
                        mov              dword ptr [rbp + 4612], 1
                        mov              rax, qword ptr [rip + .Lx00873_0]
                        mov              qword ptr [rbp + 4616], rax
                                                                                        jmp   n00874_subscript_α
.Lx00873_0:
                        .quad            .Lx00873_0_s
.Lx00873_0_s:
                        .string          "c"
#-----------------------------------------------------------------------------------------------------------------------
n00874_subscript_α:
                        mov              rdi, qword ptr [rbp + 4592]                    # base
                        mov              rsi, qword ptr [rbp + 4600]                    # base
                        mov              rdx, qword ptr [rbp + 4608]                    # idx
                        mov              rcx, qword ptr [rbp + 4616]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00875_var_ref_α
                        mov              qword ptr [rbp + 4624], rax
                        mov              qword ptr [rbp + 4632], rdx
                                                                                        jmp   n00876_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00876_deref_α:
                        mov              rdi, qword ptr [rbp + 4624]                    # d
                        mov              rsi, qword ptr [rbp + 4632]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00875_var_ref_α
                        mov              qword ptr [rbp + 4640], rax
                        mov              qword ptr [rbp + 4648], rdx
                                                                                        jmp   n00877_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n00877_unop_test_α:
                        mov              eax, dword ptr [rbp + 4640]
                        cmp              eax, 104
                                                                                        je    n00875_var_ref_α
                        cmp              eax, 0
                                                                                        je    n00875_var_ref_α
                        mov              rax, qword ptr [rbp + 4640]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 4648]
                        mov              qword ptr [rbp + 4584], rax
                                                                                        jmp   n00878_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00878_assign_α:
                        mov              rax, qword ptr [rbp + 4576]
                        mov              rdx, qword ptr [rbp + 4584]
                        mov              qword ptr [1879052464], rax                    # inchunk
                        mov              qword ptr [1879052472], rdx
                                                                                        jmp   n00875_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00875_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                                                                                        jmp   n00879_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n00879_lit_integer_α:
                        mov              qword ptr [rbp + 4512], 3                      # result
                        mov              rax, qword ptr [rip + .Lx00880_0]
                        mov              qword ptr [rbp + 4520], rax
                                                                                        jmp   n00881_subscript_α
.Lx00880_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n00881_subscript_α:
                        mov              rdi, qword ptr [rbp + 4496]                    # base
                        mov              rsi, qword ptr [rbp + 4504]                    # base
                        mov              rdx, qword ptr [rbp + 4512]                    # idx
                        mov              rcx, qword ptr [rbp + 4520]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00882_call_proc_staged_α
                        mov              qword ptr [rbp + 4528], rax
                        mov              qword ptr [rbp + 4536], rdx
                                                                                        jmp   n00883_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n00883_deref_α:
                        mov              rdi, qword ptr [rbp + 4528]                    # d
                        mov              rsi, qword ptr [rbp + 4536]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00882_call_proc_staged_α
                        mov              qword ptr [rbp + 4544], rax
                        mov              qword ptr [rbp + 4552], rdx
                                                                                        jmp   n00884_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00884_lit_string_α:
                        mov              qword ptr [rbp + 4560], 2                      # result
                        mov              dword ptr [rbp + 4564], 1
                        mov              rax, qword ptr [rip + .Lx00885_0]
                        mov              qword ptr [rbp + 4568], rax
                                                                                        jmp   n00886_call_builtin_icon_α
.Lx00885_0:
                        .quad            .Lx00885_0_s
.Lx00885_0_s:
                        .string          "r"
#-----------------------------------------------------------------------------------------------------------------------
n00886_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4472], rax
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4456], rax
                        .section         .rodata
.Lrkfn1871:             .string          "open"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1871]                        # fn
                        lea              rsi, [rbp + 4448]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx
                        cmp              eax, 104
                                                                                        je    n00882_call_proc_staged_α
                                                                                        jmp   n00887_assign_α
n00886_call_builtin_icon_β:
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00887_assign_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              rdx, qword ptr [rbp + 4440]
                        mov              qword ptr [1879052400], rax                    # infile
                        mov              qword ptr [1879052408], rdx
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00882_call_proc_staged_α:
                        call             proc_getword_dcα
                                                                                        jmp   .Lx00888_2
.Lx00888_2:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 104
                                                                                        je    n00889_var_α
                                                                                        jmp   n00890_assign_α
n00882_call_proc_staged_β:
                                                                                        jmp   n00889_var_α
.Lx00888_0:
                        .quad            .Lx00888_0_s
.Lx00888_0_s:
                        .string          "getword"
#-----------------------------------------------------------------------------------------------------------------------
n00890_assign_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                                                                                        jmp   n00891_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00891_disjunction_α:
                        mov              qword ptr [rbp + 928], 0
                        mov              qword ptr [rbp + 936], 0
                        mov              dword ptr [rbp + 944], 0
                                                                                        jmp   n00892_var_α
n00891_disjunction_as:
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0
                                                                                        jne   .Lx00893_0
                                                                                        jmp   n00882_call_proc_staged_α
.Lx00893_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00893_1
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n00882_call_proc_staged_α
.Lx00893_1:
                                                                                        jmp   n00882_call_proc_staged_α
n00891_disjunction_β:
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 0
                                                                                        je    n00882_call_proc_staged_α
                                                                                        jmp   n00894_disjunction_β
n00891_disjunction_af:
                        add              dword ptr [rbp + 944], 1
                        mov              eax, dword ptr [rbp + 944]
                        cmp              eax, 1
                                                                                        je    n00894_disjunction_α
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00895_conjunction_α:
                                                                                        jmp   n00891_disjunction_as
n00895_conjunction_β:
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00894_disjunction_α:
                        mov              qword ptr [rbp + 1056], 0
                        mov              qword ptr [rbp + 1064], 0
                        mov              dword ptr [rbp + 1072], 0
                                                                                        jmp   n00896_var_α
n00894_disjunction_as:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 0
                                                                                        jne   .Lx00897_0
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n00891_disjunction_as
.Lx00897_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00897_1
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n00891_disjunction_as
.Lx00897_1:
                                                                                        jmp   n00891_disjunction_as
n00894_disjunction_β:
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 0
                                                                                        je    n00882_call_proc_staged_α
                                                                                        jmp   n00898_disjunction_β
n00894_disjunction_af:
                        add              dword ptr [rbp + 1072], 1
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 1
                                                                                        je    n00898_disjunction_α
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00898_disjunction_α:
                        mov              qword ptr [rbp + 1648], 0
                        mov              qword ptr [rbp + 1656], 0
                        mov              dword ptr [rbp + 1664], 0
                                                                                        jmp   n00899_var_α
n00898_disjunction_as:
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 0
                                                                                        jne   .Lx00900_0
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n00894_disjunction_as
.Lx00900_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00900_1
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n00894_disjunction_as
.Lx00900_1:
                                                                                        jmp   n00894_disjunction_as
n00898_disjunction_β:
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 0
                                                                                        je    n00882_call_proc_staged_α
                                                                                        jmp   n00901_disjunction_β
n00898_disjunction_af:
                        add              dword ptr [rbp + 1664], 1
                        mov              eax, dword ptr [rbp + 1664]
                        cmp              eax, 1
                                                                                        je    n00901_disjunction_α
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00901_disjunction_α:
                        mov              qword ptr [rbp + 2496], 0
                        mov              qword ptr [rbp + 2504], 0
                        mov              dword ptr [rbp + 2512], 0
                                                                                        jmp   n00902_var_α
n00901_disjunction_as:
                        mov              eax, dword ptr [rbp + 2512]
                        cmp              eax, 0
                                                                                        jne   .Lx00903_0
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n00898_disjunction_as
.Lx00903_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00903_1
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 2504], rax
                                                                                        jmp   n00898_disjunction_as
.Lx00903_1:
                                                                                        jmp   n00898_disjunction_as
n00901_disjunction_β:
                        mov              eax, dword ptr [rbp + 2512]
                        cmp              eax, 0
                                                                                        je    n00882_call_proc_staged_α
                                                                                        jmp   n00904_disjunction_β
n00901_disjunction_af:
                        add              dword ptr [rbp + 2512], 1
                        mov              eax, dword ptr [rbp + 2512]
                        cmp              eax, 1
                                                                                        je    n00904_disjunction_α
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00904_disjunction_α:
                        mov              qword ptr [rbp + 3536], 0
                        mov              qword ptr [rbp + 3544], 0
                        mov              dword ptr [rbp + 3552], 0
                                                                                        jmp   n00905_var_α
n00904_disjunction_as:
                        mov              eax, dword ptr [rbp + 3552]
                        cmp              eax, 0
                                                                                        jne   .Lx00906_0
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n00901_disjunction_as
.Lx00906_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00906_1
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n00901_disjunction_as
.Lx00906_1:
                                                                                        jmp   n00901_disjunction_as
n00904_disjunction_β:
                        mov              eax, dword ptr [rbp + 3552]
                        cmp              eax, 0
                                                                                        je    n00882_call_proc_staged_α
                                                                                        jmp   n00907_disjunction_β
n00904_disjunction_af:
                        add              dword ptr [rbp + 3552], 1
                        mov              eax, dword ptr [rbp + 3552]
                        cmp              eax, 1
                                                                                        je    n00907_disjunction_α
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00907_disjunction_α:
                        mov              qword ptr [rbp + 3888], 0
                        mov              qword ptr [rbp + 3896], 0
                        mov              dword ptr [rbp + 3904], 0
                                                                                        jmp   n00908_var_α
n00907_disjunction_as:
                        mov              eax, dword ptr [rbp + 3904]
                        cmp              eax, 0
                                                                                        jne   .Lx00909_0
                                                                                        jmp   n00904_disjunction_as
.Lx00909_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00909_1
                        mov              rax, qword ptr [rbp + 4016]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 4024]
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n00904_disjunction_as
.Lx00909_1:
                                                                                        jmp   n00904_disjunction_as
n00907_disjunction_β:
                        mov              eax, dword ptr [rbp + 3904]
                        cmp              eax, 0
                                                                                        je    n00882_call_proc_staged_α
                                                                                        jmp   n00882_call_proc_staged_α
n00907_disjunction_af:
                        add              dword ptr [rbp + 3904], 1
                        mov              eax, dword ptr [rbp + 3904]
                        cmp              eax, 1
                                                                                        je    n00910_var_α
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00910_var_α:
                        mov              rax, qword ptr [1879052304]                    # linenum
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 4416], rax                    # result
                        mov              qword ptr [rbp + 4424], rdx
                                                                                        jmp   n00911_assign_α
n00910_var_β:
                                                                                        jmp   n00912_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00911_assign_α:
                        mov              rax, qword ptr [rbp + 4416]
                        mov              rdx, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 6480], rax
                        mov              qword ptr [rbp + 6488], rdx
                                                                                        jmp   n00912_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00912_disjunction_α:
                        mov              qword ptr [rbp + 4144], 0
                        mov              qword ptr [rbp + 4152], 0
                        mov              dword ptr [rbp + 4160], 0
                                                                                        jmp   n00913_call_proc_staged_α
n00912_disjunction_as:
                        mov              eax, dword ptr [rbp + 4160]
                        cmp              eax, 0
                                                                                        jne   .Lx00914_0
                        mov              rax, qword ptr [rbp + 4176]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4184]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n00915_var_α
.Lx00914_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00914_1
                        mov              rax, qword ptr [rbp + 4320]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4328]
                        mov              qword ptr [rbp + 4152], rax
                                                                                        jmp   n00915_var_α
.Lx00914_1:
                                                                                        jmp   n00915_var_α
n00912_disjunction_β:
                        mov              eax, dword ptr [rbp + 4160]
                        cmp              eax, 0
                                                                                        je    n00915_var_α
                                                                                        jmp   n00915_var_α
n00912_disjunction_af:
                        add              dword ptr [rbp + 4160], 1
                        mov              eax, dword ptr [rbp + 4160]
                        cmp              eax, 1
                                                                                        je    n00916_var_α
                                                                                        jmp   n00915_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00916_var_α:
                        mov              rax, qword ptr [1879052368]                    # buffer
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 4384], rax                    # result
                        mov              qword ptr [rbp + 4392], rdx
                                                                                        jmp   n00917_var_α
n00916_var_β:
                                                                                        jmp   n00915_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00917_var_α:
                        mov              rax, qword ptr [rbp + 6464]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 6472]
                        mov              qword ptr [rbp + 4408], rax
                                                                                        jmp   n00918_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00918_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 4352], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 4360], rax
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4336], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4344], rax
                        .section         .rodata
.Lrkfn1897:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1897]                        # fn
                        lea              rsi, [rbp + 4336]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 4320], rax
                        mov              qword ptr [rbp + 4328], rdx
                        cmp              eax, 104
                                                                                        je    n00915_var_α
                                                                                        jmp   n00912_disjunction_as
n00918_call_builtin_icon_β:
                                                                                        jmp   n00915_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00913_call_proc_staged_α:
                        call             proc_getword_dcα
                                                                                        jmp   .Lx00919_2
.Lx00919_2:
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        cmp              eax, 104
                                                                                        je    n00912_disjunction_af
                                                                                        jmp   n00920_assign_α
n00913_call_proc_staged_β:
                                                                                        jmp   n00912_disjunction_af
.Lx00919_0:
                        .quad            .Lx00919_0_s
.Lx00919_0_s:
                        .string          "getword"
#-----------------------------------------------------------------------------------------------------------------------
n00920_assign_α:
                        mov              rax, qword ptr [rbp + 4272]
                        mov              rdx, qword ptr [rbp + 4280]
                        mov              qword ptr [rbp + 6464], rax
                        mov              qword ptr [rbp + 6472], rdx
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                                                                                        jmp   n00921_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00921_lit_string_α:
                        mov              qword ptr [rbp + 4304], 2                      # result
                        mov              dword ptr [rbp + 4308], 1
                        mov              rax, qword ptr [rip + .Lx00922_0]
                        mov              qword ptr [rbp + 4312], rax
                                                                                        jmp   n00923_binop_test_α
.Lx00922_0:
                        .quad            .Lx00922_0_s
.Lx00922_0_s:
                        .string          "("
#-----------------------------------------------------------------------------------------------------------------------
n00923_binop_test_α:
                        mov              rdi, qword ptr [rbp + 4256]                    # lhs
                        mov              rsi, qword ptr [rbp + 4264]                    # lhs
                        mov              rdx, qword ptr [rbp + 4304]                    # rhs
                        mov              rcx, qword ptr [rbp + 4312]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00912_disjunction_af
                        mov              rdi, qword ptr [rbp + 4304]                    # d
                        mov              rsi, qword ptr [rbp + 4312]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                                                                                        jmp   n00924_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00924_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 4208], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 4216], rax
                                                                                        jmp   n00925_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00925_lit_string_α:
                        mov              qword ptr [rbp + 4224], 2                      # result
                        mov              dword ptr [rbp + 4228], 2
                        mov              rax, qword ptr [rip + .Lx00926_0]
                        mov              qword ptr [rbp + 4232], rax
                                                                                        jmp   n00927_binop_α
.Lx00926_0:
                        .quad            .Lx00926_0_s
.Lx00926_0_s:
                        .string          " *"
#-----------------------------------------------------------------------------------------------------------------------
n00927_binop_α:
                        mov              rdi, qword ptr [rbp + 6432]                    # a
                        mov              rsi, qword ptr [rbp + 6440]                    # a
                        mov              rdx, qword ptr [rbp + 4224]                    # b
                        mov              rcx, qword ptr [rbp + 4232]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx
                                                                                        jmp   n00928_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00928_assign_α:
                        mov              rax, qword ptr [rbp + 4192]
                        mov              rdx, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                                                                                        jmp   n00912_disjunction_as
n00928_assign_β:
                                                                                        jmp   n00915_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00915_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 4104], rax
                                                                                        jmp   n00929_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00929_var_α:
                        mov              rax, qword ptr [rbp + 6448]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 6456]
                        mov              qword ptr [rbp + 4120], rax
                                                                                        jmp   n00930_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00930_var_α:
                        mov              rax, qword ptr [rbp + 6480]
                        mov              qword ptr [rbp + 4128], rax
                        mov              rax, qword ptr [rbp + 6488]
                        mov              qword ptr [rbp + 4136], rax
                                                                                        jmp   n00931_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00931_call_proc_staged_α:
                        lea              rsi, [rbp + 4096]
                        lea              rdx, [rbp + 4112]
                        lea              rcx, [rbp + 4128]
                        call             proc_addword_dcα
                                                                                        jmp   .Lx00932_2
.Lx00932_2:
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx
                        cmp              eax, 104
                                                                                        je    n00882_call_proc_staged_α
                                                                                        jmp   n00933_conjunction_α
n00931_call_proc_staged_β:
                                                                                        jmp   n00882_call_proc_staged_α
.Lx00932_0:
                        .quad            .Lx00932_0_s
.Lx00932_0_s:
                        .string          "addword"
#-----------------------------------------------------------------------------------------------------------------------
n00933_conjunction_α:
                        mov              rax, qword ptr [rbp + 4016]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4024]
                        mov              qword ptr [rbp + 4008], rax
                                                                                        jmp   n00907_disjunction_as
n00933_conjunction_β:
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00908_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 3944], rax
                                                                                        jmp   n00934_var_α
n00908_var_β:
                                                                                        jmp   n00907_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00934_var_α:
                        mov              rax, qword ptr [1879052288]                    # resword
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 3984], rax                    # result
                        mov              qword ptr [rbp + 3992], rdx
                                                                                        jmp   n00935_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n00935_iterate_α:
                        mov              qword ptr [rbp + 3968], 0
.Lx00936_0:
                        mov              rdi, qword ptr [rbp + 3984]                    # obj
                        mov              rsi, qword ptr [rbp + 3992]                    # obj
                        mov              rdx, qword ptr [rbp + 3968]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              rax, 104
                                                                                        je    n00907_disjunction_af
                                                                                        jmp   n00937_binop_test_α
n00935_iterate_β:
                        inc              qword ptr [rbp + 3968]
                                                                                        jmp   .Lx00936_0
#-----------------------------------------------------------------------------------------------------------------------
n00937_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6432]                    # lhs
                        mov              rsi, qword ptr [rbp + 6440]                    # lhs
                        mov              rdx, qword ptr [rbp + 3952]                    # rhs
                        mov              rcx, qword ptr [rbp + 3960]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00935_iterate_β
                        mov              rdi, qword ptr [rbp + 3952]                    # d
                        mov              rsi, qword ptr [rbp + 3960]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00905_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 3864], rax
                                                                                        jmp   n00938_lit_string_α
n00905_var_β:
                                                                                        jmp   n00904_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00938_lit_string_α:
                        mov              qword ptr [rbp + 3872], 2                      # result
                        mov              dword ptr [rbp + 3876], 3
                        mov              rax, qword ptr [rip + .Lx00939_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n00940_binop_test_α
.Lx00939_0:
                        .quad            .Lx00939_0_s
.Lx00939_0_s:
                        .string          "end"
#-----------------------------------------------------------------------------------------------------------------------
n00940_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6432]                    # lhs
                        mov              rsi, qword ptr [rbp + 6440]                    # lhs
                        mov              rdx, qword ptr [rbp + 3872]                    # rhs
                        mov              rcx, qword ptr [rbp + 3880]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00904_disjunction_af
                        mov              rdi, qword ptr [rbp + 3872]                    # d
                        mov              rsi, qword ptr [rbp + 3880]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx
                                                                                        jmp   n00941_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00941_lit_string_α:
                        mov              qword ptr [rbp + 3824], 2                      # result
                        mov              dword ptr [rbp + 3828], 6
                        mov              rax, qword ptr [rip + .Lx00942_0]
                        mov              qword ptr [rbp + 3832], rax
                                                                                        jmp   n00943_assign_α
.Lx00942_0:
                        .quad            .Lx00942_0_s
.Lx00942_0_s:
                        .string          "global"
#-----------------------------------------------------------------------------------------------------------------------
n00943_assign_α:
                        mov              rax, qword ptr [rbp + 3824]
                        mov              rdx, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                                                                                        jmp   n00944_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n00944_make_list_α:
                        lea              rdi, [rbp + 3824]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                                                                                        jmp   n00945_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n00945_assign_α:
                        mov              rax, qword ptr [rbp + 3808]
                        mov              rdx, qword ptr [rbp + 3816]
                        mov              qword ptr [1879052480], rax                    # localvar
                        mov              qword ptr [1879052488], rdx
                                                                                        jmp   n00946_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00946_var_α:
                        mov              rax, qword ptr [rbp + 6416]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 6424]
                        mov              qword ptr [rbp + 3800], rax
                                                                                        jmp   n00947_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00947_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3768], rax
                        .section         .rodata
.Lrkfn1935:             .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1935]                        # fn
                        lea              rsi, [rbp + 3760]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        cmp              eax, 104
                                                                                        je    n00948_var_α
                                                                                        jmp   n00949_assign_α
n00947_call_builtin_icon_β:
                                                                                        jmp   n00948_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00949_assign_α:
                        mov              rax, qword ptr [rbp + 3744]
                        mov              rdx, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                                                                                        jmp   n00948_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00948_var_α:
                        mov              rax, qword ptr [rbp + 6400]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 6408]
                        mov              qword ptr [rbp + 3704], rax
                                                                                        jmp   n00950_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00950_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx00951_0]               # fname
                        mov              rsi, qword ptr [rbp + 3696]                    # obj
                        mov              rdx, qword ptr [rbp + 3704]                    # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n00952_var_α
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                                                                                        jmp   n00953_var_α
.Lx00951_0:
                        .quad            .Lx00951_0_s
.Lx00951_0_s:
                        .string          "lastline"
#-----------------------------------------------------------------------------------------------------------------------
n00953_var_α:
                        mov              rax, qword ptr [1879052304]                    # linenum
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 3728], rax                    # result
                        mov              qword ptr [rbp + 3736], rdx
                                                                                        jmp   n00954_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00954_assign_var_α:
                        mov              rdi, qword ptr [rbp + 3680]                    # var
                        mov              rsi, qword ptr [rbp + 3688]                    # var
                        mov              rdx, qword ptr [rbp + 3728]                    # val
                        mov              rcx, qword ptr [rbp + 3736]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n00952_var_α
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx
                                                                                        jmp   n00952_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00952_var_α:
                        mov              rax, qword ptr [rbp + 6416]
                        mov              qword ptr [rbp + 3648], rax
                        mov              rax, qword ptr [rbp + 6424]
                        mov              qword ptr [rbp + 3656], rax
                                                                                        jmp   n00955_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00955_var_α:
                        mov              rax, qword ptr [rbp + 6400]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 6408]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n00956_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00956_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3624], rax
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3608], rax
                        .section         .rodata
.Lrkfn1947:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1947]                        # fn
                        lea              rsi, [rbp + 3600]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        cmp              eax, 104
                                                                                        je    n00882_call_proc_staged_α
                                                                                        jmp   n00957_conjunction_α
n00956_call_builtin_icon_β:
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00957_conjunction_α:
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3576], rax
                                                                                        jmp   n00904_disjunction_as
n00957_conjunction_β:
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00902_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n00958_disjunction_α
n00902_var_β:
                                                                                        jmp   n00901_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00958_disjunction_α:
                        mov              qword ptr [rbp + 3456], 0
                        mov              qword ptr [rbp + 3464], 0
                        mov              dword ptr [rbp + 3472], 0
                                                                                        jmp   n00959_lit_string_α
n00958_disjunction_as:
                        mov              eax, dword ptr [rbp + 3472]
                        cmp              eax, 0
                                                                                        jne   .Lx00960_0
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n00961_binop_test_α
.Lx00960_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00960_1
                        mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n00961_binop_test_α
.Lx00960_1:
                        cmp              eax, 2
                                                                                        jne   .Lx00960_2
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3464], rax
                                                                                        jmp   n00961_binop_test_α
.Lx00960_2:
                                                                                        jmp   n00961_binop_test_α
n00958_disjunction_β:
                        mov              eax, dword ptr [rbp + 3472]
                        cmp              eax, 0
                                                                                        je    n00958_disjunction_af
                        cmp              eax, 1
                                                                                        je    n00958_disjunction_af
                                                                                        jmp   n00958_disjunction_af
n00958_disjunction_af:
                        add              dword ptr [rbp + 3472], 1
                        mov              eax, dword ptr [rbp + 3472]
                        cmp              eax, 1
                                                                                        je    n00962_lit_string_α
                        cmp              eax, 2
                                                                                        je    n00963_lit_string_α
                                                                                        jmp   n00901_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n00961_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6432]                    # lhs
                        mov              rsi, qword ptr [rbp + 6440]                    # lhs
                        mov              rdx, qword ptr [rbp + 3456]                    # rhs
                        mov              rcx, qword ptr [rbp + 3464]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00958_disjunction_β
                        mov              rdi, qword ptr [rbp + 3456]                    # d
                        mov              rsi, qword ptr [rbp + 3464]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                                                                                        jmp   n00964_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00964_disjunction_α:
                        mov              qword ptr [rbp + 3360], 0
                        mov              qword ptr [rbp + 3368], 0
                        mov              dword ptr [rbp + 3376], 0
                                                                                        jmp   n00965_call_proc_staged_α
n00964_disjunction_as:
                        mov              eax, dword ptr [rbp + 3376]
                        cmp              eax, 0
                                                                                        jne   .Lx00966_0
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3368], rax
                                                                                        jmp   n00967_assign_α
.Lx00966_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00966_1
                                                                                        jmp   n00967_assign_α
.Lx00966_1:
                                                                                        jmp   n00967_assign_α
n00964_disjunction_β:
                        mov              eax, dword ptr [rbp + 3376]
                        cmp              eax, 0
                                                                                        je    n00964_disjunction_af
                                                                                        jmp   n00964_disjunction_af
n00964_disjunction_af:
                        add              dword ptr [rbp + 3376], 1
                        mov              eax, dword ptr [rbp + 3376]
                        cmp              eax, 1
                                                                                        je    n00968_goto_α
                                                                                        jmp   n00969_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00967_assign_α:
                        mov              rax, qword ptr [rbp + 3360]
                        mov              rdx, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                                                                                        jmp   n00969_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00969_var_α:
                        mov              rax, qword ptr [1879052480]                    # localvar
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rbp + 3328], rax                    # result
                        mov              qword ptr [rbp + 3336], rdx
                                                                                        jmp   n00970_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00970_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 3352], rax
                                                                                        jmp   n00971_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00971_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3304], rax
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3288], rax
                        .section         .rodata
.Lrkfn1961:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1961]                        # fn
                        lea              rsi, [rbp + 3280]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        cmp              eax, 104
                                                                                        je    n00972_var_α
                                                                                        jmp   n00972_var_α
n00971_call_builtin_icon_β:
                                                                                        jmp   n00972_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00972_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n00973_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00973_var_α:
                        mov              rax, qword ptr [rbp + 6448]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 6456]
                        mov              qword ptr [rbp + 3240], rax
                                                                                        jmp   n00974_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00974_var_α:
                        mov              rax, qword ptr [1879052304]                    # linenum
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 3248], rax                    # result
                        mov              qword ptr [rbp + 3256], rdx
                                                                                        jmp   n00975_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00975_call_proc_staged_α:
                        lea              rsi, [rbp + 3216]
                        lea              rdx, [rbp + 3232]
                        lea              rcx, [rbp + 3248]
                        call             proc_addword_dcα
                                                                                        jmp   .Lx00976_2
.Lx00976_2:
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                        cmp              eax, 104
                                                                                        je    n00977_call_proc_staged_α
                                                                                        jmp   n00977_call_proc_staged_α
n00975_call_proc_staged_β:
                                                                                        jmp   n00977_call_proc_staged_α
.Lx00976_0:
                        .quad            .Lx00976_0_s
.Lx00976_0_s:
                        .string          "addword"
#-----------------------------------------------------------------------------------------------------------------------
n00977_call_proc_staged_α:
                        call             proc_getword_dcα
                                                                                        jmp   .Lx00978_2
.Lx00978_2:
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        cmp              eax, 104
                                                                                        je    n00979_var_α
                                                                                        jmp   n00980_assign_α
n00977_call_proc_staged_β:
                                                                                        jmp   n00979_var_α
.Lx00978_0:
                        .quad            .Lx00978_0_s
.Lx00978_0_s:
                        .string          "getword"
#-----------------------------------------------------------------------------------------------------------------------
n00980_assign_α:
                        mov              rax, qword ptr [rbp + 2672]
                        mov              rdx, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 6464], rax
                        mov              qword ptr [rbp + 6472], rdx
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                                                                                        jmp   n00981_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n00981_lit_string_α:
                        mov              qword ptr [rbp + 2704], 2                      # result
                        mov              dword ptr [rbp + 2708], 1
                        mov              rax, qword ptr [rip + .Lx00982_0]
                        mov              qword ptr [rbp + 2712], rax
                                                                                        jmp   n00983_binop_test_α
.Lx00982_0:
                        .quad            .Lx00982_0_s
.Lx00982_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n00983_binop_test_α:
                        mov              rdi, qword ptr [rbp + 2656]                    # lhs
                        mov              rsi, qword ptr [rbp + 2664]                    # lhs
                        mov              rdx, qword ptr [rbp + 2704]                    # rhs
                        mov              rcx, qword ptr [rbp + 2712]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00979_var_α
                        mov              rdi, qword ptr [rbp + 2704]                    # d
                        mov              rsi, qword ptr [rbp + 2712]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                                                                                        jmp   n00984_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00984_disjunction_α:
                        mov              qword ptr [rbp + 3024], 0
                        mov              qword ptr [rbp + 3032], 0
                        mov              dword ptr [rbp + 3040], 0
                                                                                        jmp   n00985_var_α
n00984_disjunction_as:
                        mov              eax, dword ptr [rbp + 3040]
                        cmp              eax, 0
                                                                                        jne   .Lx00986_0
                                                                                        jmp   n00987_disjunction_α
.Lx00986_0:
                                                                                        jmp   n00987_disjunction_α
n00984_disjunction_β:
                        mov              eax, dword ptr [rbp + 3040]
                                                                                        jmp   n00987_disjunction_α
n00984_disjunction_af:
                        add              dword ptr [rbp + 3040], 1
                        mov              eax, dword ptr [rbp + 3040]
                                                                                        jmp   n00987_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n00987_disjunction_α:
                        mov              qword ptr [rbp + 2960], 0
                        mov              qword ptr [rbp + 2968], 0
                        mov              dword ptr [rbp + 2976], 0
                                                                                        jmp   n00988_call_proc_staged_α
n00987_disjunction_as:
                        mov              eax, dword ptr [rbp + 2976]
                        cmp              eax, 0
                                                                                        jne   .Lx00989_0
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n00990_assign_α
.Lx00989_0:
                        cmp              eax, 1
                                                                                        jne   .Lx00989_1
                                                                                        jmp   n00990_assign_α
.Lx00989_1:
                                                                                        jmp   n00990_assign_α
n00987_disjunction_β:
                        mov              eax, dword ptr [rbp + 2976]
                        cmp              eax, 0
                                                                                        je    n00987_disjunction_af
                                                                                        jmp   n00987_disjunction_af
n00987_disjunction_af:
                        add              dword ptr [rbp + 2976], 1
                        mov              eax, dword ptr [rbp + 2976]
                        cmp              eax, 1
                                                                                        je    n00991_goto_α
                                                                                        jmp   n00992_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00990_assign_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              rdx, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                                                                                        jmp   n00992_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00992_var_α:
                        mov              rax, qword ptr [1879052480]                    # localvar
                        mov              rdx, qword ptr [1879052488]
                        mov              qword ptr [rbp + 2928], rax                    # result
                        mov              qword ptr [rbp + 2936], rdx
                                                                                        jmp   n00993_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00993_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 2952], rax
                                                                                        jmp   n00994_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n00994_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2904], rax
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 2880], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 2888], rax
                        .section         .rodata
.Lrkfn1983:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn1983]                        # fn
                        lea              rsi, [rbp + 2880]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2864], rax
                        mov              qword ptr [rbp + 2872], rdx
                        cmp              eax, 104
                                                                                        je    n00995_var_α
                                                                                        jmp   n00995_var_α
n00994_call_builtin_icon_β:
                                                                                        jmp   n00995_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00995_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 2824], rax
                                                                                        jmp   n00996_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00996_var_α:
                        mov              rax, qword ptr [rbp + 6448]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 6456]
                        mov              qword ptr [rbp + 2840], rax
                                                                                        jmp   n00997_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00997_var_α:
                        mov              rax, qword ptr [1879052304]                    # linenum
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 2848], rax                    # result
                        mov              qword ptr [rbp + 2856], rdx
                                                                                        jmp   n00998_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00998_call_proc_staged_α:
                        lea              rsi, [rbp + 2816]
                        lea              rdx, [rbp + 2832]
                        lea              rcx, [rbp + 2848]
                        call             proc_addword_dcα
                                                                                        jmp   .Lx00999_2
.Lx00999_2:
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              eax, 104
                                                                                        je    n00977_call_proc_staged_α
                                                                                        jmp   n01000_conjunction_α
n00998_call_proc_staged_β:
                                                                                        jmp   n00977_call_proc_staged_α
.Lx00999_0:
                        .quad            .Lx00999_0_s
.Lx00999_0_s:
                        .string          "addword"
#-----------------------------------------------------------------------------------------------------------------------
n01000_conjunction_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2728], rax
                                                                                        jmp   n00977_call_proc_staged_α
n01000_conjunction_β:
                                                                                        jmp   n00977_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00991_goto_α:
                                                                                        jmp   n00979_var_α
n00991_goto_β:
                                                                                        jmp   n00979_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00988_call_proc_staged_α:
                        call             proc_getword_dcα
                                                                                        jmp   .Lx01001_2
.Lx01001_2:
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 104
                                                                                        je    n00987_disjunction_af
                                                                                        jmp   n00987_disjunction_as
n00988_call_proc_staged_β:
                                                                                        jmp   n00987_disjunction_af
.Lx01001_0:
                        .quad            .Lx01001_0_s
.Lx01001_0_s:
                        .string          "getword"
#-----------------------------------------------------------------------------------------------------------------------
n00985_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n01002_var_α
n00985_var_β:
                                                                                        jmp   n00984_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01002_var_α:
                        mov              rax, qword ptr [1879052288]                    # resword
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 3120], rax                    # result
                        mov              qword ptr [rbp + 3128], rdx
                                                                                        jmp   n01003_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n01003_iterate_α:
                        mov              qword ptr [rbp + 3104], 0
.Lx01004_0:
                        mov              rdi, qword ptr [rbp + 3120]                    # obj
                        mov              rsi, qword ptr [rbp + 3128]                    # obj
                        mov              rdx, qword ptr [rbp + 3104]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 3088], rax
                        mov              qword ptr [rbp + 3096], rdx
                        cmp              rax, 104
                                                                                        je    n00984_disjunction_af
                                                                                        jmp   n01005_binop_test_α
n01003_iterate_β:
                        inc              qword ptr [rbp + 3104]
                                                                                        jmp   .Lx01004_0
#-----------------------------------------------------------------------------------------------------------------------
n01005_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6432]                    # lhs
                        mov              rsi, qword ptr [rbp + 6440]                    # lhs
                        mov              rdx, qword ptr [rbp + 3088]                    # rhs
                        mov              rcx, qword ptr [rbp + 3096]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n01003_iterate_β
                        mov              rdi, qword ptr [rbp + 3088]                    # d
                        mov              rsi, qword ptr [rbp + 3096]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
                                                                                        jmp   n00979_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00979_var_α:
                        mov              rax, qword ptr [1879052368]                    # buffer
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 2608], rax                    # result
                        mov              qword ptr [rbp + 2616], rdx
                                                                                        jmp   n01006_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01006_var_α:
                        mov              rax, qword ptr [rbp + 6464]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 6472]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n01007_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01007_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2584], rax
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lrkfn2005:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2005]                        # fn
                        lea              rsi, [rbp + 2560]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 104
                                                                                        je    n00882_call_proc_staged_α
                                                                                        jmp   n01008_conjunction_α
n01007_call_builtin_icon_β:
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01008_conjunction_α:
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n00901_disjunction_as
n01008_conjunction_β:
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00968_goto_α:
                                                                                        jmp   n00889_var_α
n00968_goto_β:
                                                                                        jmp   n00889_var_α
#-----------------------------------------------------------------------------------------------------------------------
n00965_call_proc_staged_α:
                        call             proc_getword_dcα
                                                                                        jmp   .Lx01009_2
.Lx01009_2:
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              eax, 104
                                                                                        je    n00964_disjunction_af
                                                                                        jmp   n00964_disjunction_as
n00965_call_proc_staged_β:
                                                                                        jmp   n00964_disjunction_af
.Lx01009_0:
                        .quad            .Lx01009_0_s
.Lx01009_0_s:
                        .string          "getword"
#-----------------------------------------------------------------------------------------------------------------------
n00963_lit_string_α:
                        mov              qword ptr [rbp + 3520], 2                      # result
                        mov              dword ptr [rbp + 3524], 6
                        mov              rax, qword ptr [rip + .Lx01010_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n00958_disjunction_as
n00963_lit_string_β:
                                                                                        jmp   n00958_disjunction_af
.Lx01010_0:
                        .quad            .Lx01010_0_s
.Lx01010_0_s:
                        .string          "static"
#-----------------------------------------------------------------------------------------------------------------------
n00962_lit_string_α:
                        mov              qword ptr [rbp + 3504], 2                      # result
                        mov              dword ptr [rbp + 3508], 7
                        mov              rax, qword ptr [rip + .Lx01011_0]
                        mov              qword ptr [rbp + 3512], rax
                                                                                        jmp   n00958_disjunction_as
n00962_lit_string_β:
                                                                                        jmp   n00958_disjunction_af
.Lx01011_0:
                        .quad            .Lx01011_0_s
.Lx01011_0_s:
                        .string          "dynamic"
#-----------------------------------------------------------------------------------------------------------------------
n00959_lit_string_α:
                        mov              qword ptr [rbp + 3488], 2                      # result
                        mov              dword ptr [rbp + 3492], 5
                        mov              rax, qword ptr [rip + .Lx01012_0]
                        mov              qword ptr [rbp + 3496], rax
                                                                                        jmp   n00958_disjunction_as
n00959_lit_string_β:
                                                                                        jmp   n00958_disjunction_af
.Lx01012_0:
                        .quad            .Lx01012_0_s
.Lx01012_0_s:
                        .string          "local"
#-----------------------------------------------------------------------------------------------------------------------
n00899_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n01013_disjunction_α
n00899_var_β:
                                                                                        jmp   n00898_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01013_disjunction_α:
                        mov              qword ptr [rbp + 2416], 0
                        mov              qword ptr [rbp + 2424], 0
                        mov              dword ptr [rbp + 2432], 0
                                                                                        jmp   n01014_lit_string_α
n01013_disjunction_as:
                        mov              eax, dword ptr [rbp + 2432]
                        cmp              eax, 0
                                                                                        jne   .Lx01015_0
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n01016_binop_test_α
.Lx01015_0:
                        cmp              eax, 1
                                                                                        jne   .Lx01015_1
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n01016_binop_test_α
.Lx01015_1:
                        cmp              eax, 2
                                                                                        jne   .Lx01015_2
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n01016_binop_test_α
.Lx01015_2:
                                                                                        jmp   n01016_binop_test_α
n01013_disjunction_β:
                        mov              eax, dword ptr [rbp + 2432]
                        cmp              eax, 0
                                                                                        je    n01013_disjunction_af
                        cmp              eax, 1
                                                                                        je    n01013_disjunction_af
                                                                                        jmp   n01013_disjunction_af
n01013_disjunction_af:
                        add              dword ptr [rbp + 2432], 1
                        mov              eax, dword ptr [rbp + 2432]
                        cmp              eax, 1
                                                                                        je    n01017_lit_string_α
                        cmp              eax, 2
                                                                                        je    n01018_lit_string_α
                                                                                        jmp   n00898_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01016_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6432]                    # lhs
                        mov              rsi, qword ptr [rbp + 6440]                    # lhs
                        mov              rdx, qword ptr [rbp + 2416]                    # rhs
                        mov              rcx, qword ptr [rbp + 2424]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n01013_disjunction_β
                        mov              rdi, qword ptr [rbp + 2416]                    # d
                        mov              rsi, qword ptr [rbp + 2424]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                                                                                        jmp   n01019_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01019_disjunction_α:
                        mov              qword ptr [rbp + 2320], 0
                        mov              qword ptr [rbp + 2328], 0
                        mov              dword ptr [rbp + 2336], 0
                                                                                        jmp   n01020_call_proc_staged_α
n01019_disjunction_as:
                        mov              eax, dword ptr [rbp + 2336]
                        cmp              eax, 0
                                                                                        jne   .Lx01021_0
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n01022_assign_α
.Lx01021_0:
                        cmp              eax, 1
                                                                                        jne   .Lx01021_1
                                                                                        jmp   n01022_assign_α
.Lx01021_1:
                                                                                        jmp   n01022_assign_α
n01019_disjunction_β:
                        mov              eax, dword ptr [rbp + 2336]
                        cmp              eax, 0
                                                                                        je    n01019_disjunction_af
                                                                                        jmp   n01019_disjunction_af
n01019_disjunction_af:
                        add              dword ptr [rbp + 2336], 1
                        mov              eax, dword ptr [rbp + 2336]
                        cmp              eax, 1
                                                                                        je    n01023_goto_α
                                                                                        jmp   n01024_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01022_assign_α:
                        mov              rax, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                                                                                        jmp   n01024_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01024_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 2280], rax
                                                                                        jmp   n01025_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01025_lit_string_α:
                        mov              qword ptr [rbp + 2288], 2                      # result
                        mov              dword ptr [rbp + 2292], 6
                        mov              rax, qword ptr [rip + .Lx01026_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n01027_var_α
.Lx01026_0:
                        .quad            .Lx01026_0_s
.Lx01026_0_s:
                        .string          "global"
#-----------------------------------------------------------------------------------------------------------------------
n01027_var_α:
                        mov              rax, qword ptr [1879052304]                    # linenum
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 2304], rax                    # result
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n01028_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01028_call_proc_staged_α:
                        lea              rsi, [rbp + 2272]
                        lea              rdx, [rbp + 2288]
                        lea              rcx, [rbp + 2304]
                        call             proc_addword_dcα
                                                                                        jmp   .Lx01029_2
.Lx01029_2:
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        cmp              eax, 104
                                                                                        je    n01030_call_proc_staged_α
                                                                                        jmp   n01030_call_proc_staged_α
n01028_call_proc_staged_β:
                                                                                        jmp   n01030_call_proc_staged_α
.Lx01029_0:
                        .quad            .Lx01029_0_s
.Lx01029_0_s:
                        .string          "addword"
#-----------------------------------------------------------------------------------------------------------------------
n01030_call_proc_staged_α:
                        call             proc_getword_dcα
                                                                                        jmp   .Lx01031_2
.Lx01031_2:
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              eax, 104
                                                                                        je    n01032_var_α
                                                                                        jmp   n01033_assign_α
n01030_call_proc_staged_β:
                                                                                        jmp   n01032_var_α
.Lx01031_0:
                        .quad            .Lx01031_0_s
.Lx01031_0_s:
                        .string          "getword"
#-----------------------------------------------------------------------------------------------------------------------
n01033_assign_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 6464], rax
                        mov              qword ptr [rbp + 6472], rdx
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                                                                                        jmp   n01034_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01034_lit_string_α:
                        mov              qword ptr [rbp + 1856], 2                      # result
                        mov              dword ptr [rbp + 1860], 1
                        mov              rax, qword ptr [rip + .Lx01035_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n01036_binop_test_α
.Lx01035_0:
                        .quad            .Lx01035_0_s
.Lx01035_0_s:
                        .string          ","
#-----------------------------------------------------------------------------------------------------------------------
n01036_binop_test_α:
                        mov              rdi, qword ptr [rbp + 1808]                    # lhs
                        mov              rsi, qword ptr [rbp + 1816]                    # lhs
                        mov              rdx, qword ptr [rbp + 1856]                    # rhs
                        mov              rcx, qword ptr [rbp + 1864]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n01032_var_α
                        mov              rdi, qword ptr [rbp + 1856]                    # d
                        mov              rsi, qword ptr [rbp + 1864]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                                                                                        jmp   n01037_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01037_disjunction_α:
                        mov              qword ptr [rbp + 2080], 0
                        mov              qword ptr [rbp + 2088], 0
                        mov              dword ptr [rbp + 2096], 0
                                                                                        jmp   n01038_var_α
n01037_disjunction_as:
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              eax, 0
                                                                                        jne   .Lx01039_0
                                                                                        jmp   n01040_disjunction_α
.Lx01039_0:
                                                                                        jmp   n01040_disjunction_α
n01037_disjunction_β:
                        mov              eax, dword ptr [rbp + 2096]
                                                                                        jmp   n01040_disjunction_α
n01037_disjunction_af:
                        add              dword ptr [rbp + 2096], 1
                        mov              eax, dword ptr [rbp + 2096]
                                                                                        jmp   n01040_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01040_disjunction_α:
                        mov              qword ptr [rbp + 2016], 0
                        mov              qword ptr [rbp + 2024], 0
                        mov              dword ptr [rbp + 2032], 0
                                                                                        jmp   n01041_call_proc_staged_α
n01040_disjunction_as:
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              eax, 0
                                                                                        jne   .Lx01042_0
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2024], rax
                                                                                        jmp   n01043_assign_α
.Lx01042_0:
                        cmp              eax, 1
                                                                                        jne   .Lx01042_1
                                                                                        jmp   n01043_assign_α
.Lx01042_1:
                                                                                        jmp   n01043_assign_α
n01040_disjunction_β:
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              eax, 0
                                                                                        je    n01040_disjunction_af
                                                                                        jmp   n01040_disjunction_af
n01040_disjunction_af:
                        add              dword ptr [rbp + 2032], 1
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              eax, 1
                                                                                        je    n01044_goto_α
                                                                                        jmp   n01045_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01043_assign_α:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              rdx, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx
                                                                                        jmp   n01045_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01045_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n01046_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01046_lit_string_α:
                        mov              qword ptr [rbp + 1984], 2                      # result
                        mov              dword ptr [rbp + 1988], 6
                        mov              rax, qword ptr [rip + .Lx01047_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n01048_var_α
.Lx01047_0:
                        .quad            .Lx01047_0_s
.Lx01047_0_s:
                        .string          "global"
#-----------------------------------------------------------------------------------------------------------------------
n01048_var_α:
                        mov              rax, qword ptr [1879052304]                    # linenum
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 2000], rax                    # result
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n01049_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01049_call_proc_staged_α:
                        lea              rsi, [rbp + 1968]
                        lea              rdx, [rbp + 1984]
                        lea              rcx, [rbp + 2000]
                        call             proc_addword_dcα
                                                                                        jmp   .Lx01050_2
.Lx01050_2:
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 104
                                                                                        je    n01030_call_proc_staged_α
                                                                                        jmp   n01051_conjunction_α
n01049_call_proc_staged_β:
                                                                                        jmp   n01030_call_proc_staged_α
.Lx01050_0:
                        .quad            .Lx01050_0_s
.Lx01050_0_s:
                        .string          "addword"
#-----------------------------------------------------------------------------------------------------------------------
n01051_conjunction_α:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n01030_call_proc_staged_α
n01051_conjunction_β:
                                                                                        jmp   n01030_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01044_goto_α:
                                                                                        jmp   n01032_var_α
n01044_goto_β:
                                                                                        jmp   n01032_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01041_call_proc_staged_α:
                        call             proc_getword_dcα
                                                                                        jmp   .Lx01052_2
.Lx01052_2:
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              eax, 104
                                                                                        je    n01040_disjunction_af
                                                                                        jmp   n01040_disjunction_as
n01041_call_proc_staged_β:
                                                                                        jmp   n01040_disjunction_af
.Lx01052_0:
                        .quad            .Lx01052_0_s
.Lx01052_0_s:
                        .string          "getword"
#-----------------------------------------------------------------------------------------------------------------------
n01038_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n01053_var_α
n01038_var_β:
                                                                                        jmp   n01037_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01053_var_α:
                        mov              rax, qword ptr [1879052288]                    # resword
                        mov              rdx, qword ptr [1879052296]
                        mov              qword ptr [rbp + 2176], rax                    # result
                        mov              qword ptr [rbp + 2184], rdx
                                                                                        jmp   n01054_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n01054_iterate_α:
                        mov              qword ptr [rbp + 2160], 0
.Lx01055_0:
                        mov              rdi, qword ptr [rbp + 2176]                    # obj
                        mov              rsi, qword ptr [rbp + 2184]                    # obj
                        mov              rdx, qword ptr [rbp + 2160]                    # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              rax, 104
                                                                                        je    n01037_disjunction_af
                                                                                        jmp   n01056_binop_test_α
n01054_iterate_β:
                        inc              qword ptr [rbp + 2160]
                                                                                        jmp   .Lx01055_0
#-----------------------------------------------------------------------------------------------------------------------
n01056_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6432]                    # lhs
                        mov              rsi, qword ptr [rbp + 6440]                    # lhs
                        mov              rdx, qword ptr [rbp + 2144]                    # rhs
                        mov              rcx, qword ptr [rbp + 2152]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n01054_iterate_β
                        mov              rdi, qword ptr [rbp + 2144]                    # d
                        mov              rsi, qword ptr [rbp + 2152]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                                                                                        jmp   n01032_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01032_var_α:
                        mov              rax, qword ptr [1879052368]                    # buffer
                        mov              rdx, qword ptr [1879052376]
                        mov              qword ptr [rbp + 1760], rax                    # result
                        mov              qword ptr [rbp + 1768], rdx
                                                                                        jmp   n01057_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01057_var_α:
                        mov              rax, qword ptr [rbp + 6464]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 6472]
                        mov              qword ptr [rbp + 1784], rax
                                                                                        jmp   n01058_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01058_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1720], rax
                        .section         .rodata
.Lrkfn2057:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2057]                        # fn
                        lea              rsi, [rbp + 1712]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              eax, 104
                                                                                        je    n00882_call_proc_staged_α
                                                                                        jmp   n01059_conjunction_α
n01058_call_builtin_icon_β:
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01059_conjunction_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n00898_disjunction_as
n01059_conjunction_β:
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01023_goto_α:
                                                                                        jmp   n00889_var_α
n01023_goto_β:
                                                                                        jmp   n00889_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01020_call_proc_staged_α:
                        call             proc_getword_dcα
                                                                                        jmp   .Lx01060_2
.Lx01060_2:
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 104
                                                                                        je    n01019_disjunction_af
                                                                                        jmp   n01019_disjunction_as
n01020_call_proc_staged_β:
                                                                                        jmp   n01019_disjunction_af
.Lx01060_0:
                        .quad            .Lx01060_0_s
.Lx01060_0_s:
                        .string          "getword"
#-----------------------------------------------------------------------------------------------------------------------
n01018_lit_string_α:
                        mov              qword ptr [rbp + 2480], 2                      # result
                        mov              dword ptr [rbp + 2484], 6
                        mov              rax, qword ptr [rip + .Lx01061_0]
                        mov              qword ptr [rbp + 2488], rax
                                                                                        jmp   n01013_disjunction_as
n01018_lit_string_β:
                                                                                        jmp   n01013_disjunction_af
.Lx01061_0:
                        .quad            .Lx01061_0_s
.Lx01061_0_s:
                        .string          "record"
#-----------------------------------------------------------------------------------------------------------------------
n01017_lit_string_α:
                        mov              qword ptr [rbp + 2464], 2                      # result
                        mov              dword ptr [rbp + 2468], 4
                        mov              rax, qword ptr [rip + .Lx01062_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n01013_disjunction_as
n01017_lit_string_β:
                                                                                        jmp   n01013_disjunction_af
.Lx01062_0:
                        .quad            .Lx01062_0_s
.Lx01062_0_s:
                        .string          "link"
#-----------------------------------------------------------------------------------------------------------------------
n01014_lit_string_α:
                        mov              qword ptr [rbp + 2448], 2                      # result
                        mov              dword ptr [rbp + 2452], 6
                        mov              rax, qword ptr [rip + .Lx01063_0]
                        mov              qword ptr [rbp + 2456], rax
                                                                                        jmp   n01013_disjunction_as
n01014_lit_string_β:
                                                                                        jmp   n01013_disjunction_af
.Lx01063_0:
                        .quad            .Lx01063_0_s
.Lx01063_0_s:
                        .string          "global"
#-----------------------------------------------------------------------------------------------------------------------
n00896_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n01064_lit_string_α
n00896_var_β:
                                                                                        jmp   n00894_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01064_lit_string_α:
                        mov              qword ptr [rbp + 1632], 2                      # result
                        mov              dword ptr [rbp + 1636], 9
                        mov              rax, qword ptr [rip + .Lx01065_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n01066_binop_test_α
.Lx01065_0:
                        .quad            .Lx01065_0_s
.Lx01065_0_s:
                        .string          "procedure"
#-----------------------------------------------------------------------------------------------------------------------
n01066_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6432]                    # lhs
                        mov              rsi, qword ptr [rbp + 6440]                    # lhs
                        mov              rdx, qword ptr [rbp + 1632]                    # rhs
                        mov              rcx, qword ptr [rbp + 1640]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00894_disjunction_af
                        mov              rdi, qword ptr [rbp + 1632]                    # d
                        mov              rsi, qword ptr [rbp + 1640]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                                                                                        jmp   n01067_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01067_var_α:
                        mov              rax, qword ptr [rbp + 6416]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 6424]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n01068_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01068_lit_string_α:
                        mov              qword ptr [rbp + 1552], 2                      # result
                        mov              dword ptr [rbp + 1556], 0
                        mov              rax, qword ptr [rip + .Lx01069_0]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n01070_var_α
.Lx01069_0:
                        .quad            .Lx01069_0_s
.Lx01069_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n01070_var_α:
                        mov              rax, qword ptr [1879052304]                    # linenum
                        mov              rdx, qword ptr [1879052312]
                        mov              qword ptr [rbp + 1568], rax                    # result
                        mov              qword ptr [rbp + 1576], rdx
                                                                                        jmp   n01071_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n01071_lit_integer_α:
                        mov              qword ptr [rbp + 1584], 3                      # result
                        mov              rax, qword ptr [rip + .Lx01072_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n01073_call_α
.Lx01072_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n01073_call_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1496], rax
                        .section         .rodata
.Lrkfn2075:             .string          "procrec"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2075]                        # fn
                        lea              rsi, [rbp + 1488]                              # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 104
                                                                                        je    n01074_disjunction_α
                                                                                        jmp   n01075_call_builtin_icon_α
n01073_call_β:
                                                                                        jmp   n01074_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01075_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        .section         .rodata
.Lrkfn2077:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2077]                        # fn
                        lea              rsi, [rbp + 1408]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 104
                                                                                        je    n01074_disjunction_α
                                                                                        jmp   n01074_disjunction_α
n01075_call_builtin_icon_β:
                                                                                        jmp   n01074_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n01074_disjunction_α:
                        mov              qword ptr [rbp + 1328], 0
                        mov              qword ptr [rbp + 1336], 0
                        mov              dword ptr [rbp + 1344], 0
                                                                                        jmp   n01076_call_proc_staged_α
n01074_disjunction_as:
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 0
                                                                                        jne   .Lx01077_0
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n01078_assign_α
.Lx01077_0:
                        cmp              eax, 1
                                                                                        jne   .Lx01077_1
                                                                                        jmp   n01078_assign_α
.Lx01077_1:
                                                                                        jmp   n01078_assign_α
n01074_disjunction_β:
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 0
                                                                                        je    n01074_disjunction_af
                                                                                        jmp   n01074_disjunction_af
n01074_disjunction_af:
                        add              dword ptr [rbp + 1344], 1
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              eax, 1
                                                                                        je    n01079_goto_α
                                                                                        jmp   n01080_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01078_assign_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                                                                                        jmp   n01080_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01080_var_α:
                        mov              rax, qword ptr [rbp + 6416]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 6424]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n01081_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01081_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                        .section         .rodata
.Lrkfn2084:             .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2084]                        # fn
                        lea              rsi, [rbp + 1280]                              # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 104
                                                                                        je    n01082_var_α
                                                                                        jmp   n01083_assign_α
n01081_call_builtin_icon_β:
                                                                                        jmp   n01082_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01083_assign_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                                                                                        jmp   n01082_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01082_var_α:
                        mov              rax, qword ptr [rbp + 6400]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 6408]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n01084_field_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01084_field_var_α:
                        mov              rdi, qword ptr [rip + .Lx01085_0]               # fname
                        mov              rsi, qword ptr [rbp + 1216]                    # obj
                        mov              rdx, qword ptr [rbp + 1224]                    # obj
                        call             rt_field_var@PLT
                        cmp              eax, 104
                                                                                        je    n01086_var_α
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n01087_var_α
.Lx01085_0:
                        .quad            .Lx01085_0_s
.Lx01085_0_s:
                        .string          "pname"
#-----------------------------------------------------------------------------------------------------------------------
n01087_var_α:
                        mov              rax, qword ptr [rbp + 6448]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 6456]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n01088_assign_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01088_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1200]                    # var
                        mov              rsi, qword ptr [rbp + 1208]                    # var
                        mov              rdx, qword ptr [rbp + 1248]                    # val
                        mov              rcx, qword ptr [rbp + 1256]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n01086_var_α
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n01086_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01086_var_α:
                        mov              rax, qword ptr [rbp + 6416]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 6424]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n01089_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01089_var_α:
                        mov              rax, qword ptr [rbp + 6400]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 6408]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n01090_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01090_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        .section         .rodata
.Lrkfn2097:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2097]                        # fn
                        lea              rsi, [rbp + 1120]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 104
                                                                                        je    n00882_call_proc_staged_α
                                                                                        jmp   n01091_conjunction_α
n01090_call_builtin_icon_β:
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01091_conjunction_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n00894_disjunction_as
n01091_conjunction_β:
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01079_goto_α:
                                                                                        jmp   n00889_var_α
n01079_goto_β:
                                                                                        jmp   n00889_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01076_call_proc_staged_α:
                        call             proc_getword_dcα
                                                                                        jmp   .Lx01092_2
.Lx01092_2:
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 104
                                                                                        je    n01074_disjunction_af
                                                                                        jmp   n01074_disjunction_as
n01076_call_proc_staged_β:
                                                                                        jmp   n01074_disjunction_af
.Lx01092_0:
                        .quad            .Lx01092_0_s
.Lx01092_0_s:
                        .string          "getword"
#-----------------------------------------------------------------------------------------------------------------------
n00892_var_α:
                        mov              rax, qword ptr [rbp + 6432]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 6440]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n01093_lit_string_α
n00892_var_β:
                                                                                        jmp   n00891_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01093_lit_string_α:
                        mov              qword ptr [rbp + 1040], 2                      # result
                        mov              dword ptr [rbp + 1044], 4
                        mov              rax, qword ptr [rip + .Lx01094_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n01095_binop_test_α
.Lx01094_0:
                        .quad            .Lx01094_0_s
.Lx01094_0_s:
                        .string          "link"
#-----------------------------------------------------------------------------------------------------------------------
n01095_binop_test_α:
                        mov              rdi, qword ptr [rbp + 6432]                    # lhs
                        mov              rsi, qword ptr [rbp + 6440]                    # lhs
                        mov              rdx, qword ptr [rbp + 1040]                    # rhs
                        mov              rcx, qword ptr [rbp + 1048]                    # rhs
                        mov              r8d, 16                                        # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n00891_disjunction_af
                        mov              rdi, qword ptr [rbp + 1040]                    # d
                        mov              rsi, qword ptr [rbp + 1048]                    # d
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n01096_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n01096_make_list_α:
                        lea              rdi, [rbp + 1008]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n01097_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n01097_assign_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        mov              qword ptr [1879052368], rax                    # buffer
                        mov              qword ptr [1879052376], rdx
                                                                                        jmp   n01098_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01098_lit_string_α:
                        mov              qword ptr [rbp + 976], 2                       # result
                        mov              dword ptr [rbp + 980], 0
                        mov              rax, qword ptr [rip + .Lx01099_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n01100_assign_α
.Lx01099_0:
                        .quad            .Lx01099_0_s
.Lx01099_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n01100_assign_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        mov              qword ptr [1879052496], rax                    # lin
                        mov              qword ptr [1879052504], rdx
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01101_goto_α:
                                                                                        jmp   n00882_call_proc_staged_α
n01101_goto_β:
                                                                                        jmp   n00882_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n00889_var_α:
                        mov              rax, qword ptr [1879052352]                    # var
                        mov              rdx, qword ptr [1879052360]
                        mov              qword ptr [rbp + 880], rax                     # result
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n01102_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01102_call_proc_staged_α:
                        lea              rsi, [rbp + 880]
                        call             proc_format_dcα
                                                                                        jmp   .Lx01103_2
.Lx01103_2:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 104
                                                                                        je    n01104_lit_string_α
                                                                                        jmp   n01105_iterate_α
n01102_call_proc_staged_β:
                                                                                        jmp   n01104_lit_string_α
.Lx01103_0:
                        .quad            .Lx01103_0_s
.Lx01103_0_s:
                        .string          "format"
#-----------------------------------------------------------------------------------------------------------------------
n01105_iterate_α:
                        mov              qword ptr [rbp + 816], 0
.Lx01106_0:
                        mov              rdi, qword ptr [rbp + 832]                     # obj
                        mov              rsi, qword ptr [rbp + 840]                     # obj
                        mov              rdx, qword ptr [rbp + 816]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              rax, 104
                                                                                        je    n01104_lit_string_α
                                                                                        jmp   n01107_call_builtin_icon_α
n01105_iterate_β:
                        inc              qword ptr [rbp + 816]
                                                                                        jmp   .Lx01106_0
#-----------------------------------------------------------------------------------------------------------------------
n01107_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        .section         .rodata
.Lrkfn2118:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2118]                        # fn
                        lea              rsi, [rbp + 768]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n01105_iterate_β
                                                                                        jmp   n01105_iterate_β
n01107_call_builtin_icon_β:
                                                                                        jmp   n01105_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n01104_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 21
                        mov              rax, qword ptr [rip + .Lx01108_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n01109_call_builtin_icon_α
.Lx01108_0:
                        .quad            .Lx01108_0_s
.Lx01108_0_s:
                        .string          "\n\nprocedures:\tlines:\n"
#-----------------------------------------------------------------------------------------------------------------------
n01109_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lrkfn2121:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2121]                        # fn
                        lea              rsi, [rbp + 704]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n01110_make_list_α
                                                                                        jmp   n01110_make_list_α
n01109_call_builtin_icon_β:
                                                                                        jmp   n01110_make_list_α
#-----------------------------------------------------------------------------------------------------------------------
n01110_make_list_α:
                        lea              rdi, [rbp + 688]
                        mov              esi, 0
                        call             rt_make_list@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n01111_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n01111_assign_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 6384], rax
                        mov              qword ptr [rbp + 6392], rdx
                                                                                        jmp   n01112_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01112_var_α:
                        mov              rax, qword ptr [rbp + 6416]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 6424]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n01113_iterate_α
#-----------------------------------------------------------------------------------------------------------------------
n01113_iterate_α:
                        mov              qword ptr [rbp + 240], 0
.Lx01114_0:
                        mov              rdi, qword ptr [rbp + 256]                     # obj
                        mov              rsi, qword ptr [rbp + 264]                     # obj
                        mov              rdx, qword ptr [rbp + 240]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              rax, 104
                                                                                        je    n01115_var_α
                                                                                        jmp   n01116_assign_α
n01113_iterate_β:
                        inc              qword ptr [rbp + 240]
                                                                                        jmp   .Lx01114_0
#-----------------------------------------------------------------------------------------------------------------------
n01116_assign_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                                                                                        jmp   n01117_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n01117_bound_α:
                        mov              qword ptr [rbp + 272], rsp
                                                                                        jmp   n01118_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01118_var_α:
                        mov              rax, qword ptr [rbp + 6384]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 6392]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n01119_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01119_var_α:
                        mov              rax, qword ptr [rbp + 6400]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 6408]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n01120_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n01120_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx01121_0]               # fname
                        mov              rsi, qword ptr [rbp + 544]                     # obj
                        mov              rdx, qword ptr [rbp + 552]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n01122_unmark_α
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n01123_lit_integer_α
.Lx01121_0:
                        .quad            .Lx01121_0_s
.Lx01121_0_s:
                        .string          "pname"
#-----------------------------------------------------------------------------------------------------------------------
n01123_lit_integer_α:
                        mov              qword ptr [rbp + 560], 3                       # result
                        mov              rax, qword ptr [rip + .Lx01124_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n01125_lit_string_α
.Lx01124_0:
                        .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n01125_lit_string_α:
                        mov              qword ptr [rbp + 576], 2                       # result
                        mov              dword ptr [rbp + 580], 1
                        mov              rax, qword ptr [rip + .Lx01126_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n01127_call_builtin_icon_α
.Lx01126_0:
                        .quad            .Lx01126_0_s
.Lx01126_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n01127_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax
                        .section         .rodata
.Lrkfn2140:             .string          "left"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2140]                        # fn
                        lea              rsi, [rbp + 464]                               # args
                        mov              edx, 3                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n01122_unmark_α
                                                                                        jmp   n01128_var_α
n01127_call_builtin_icon_β:
                                                                                        jmp   n01122_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n01128_var_α:
                        mov              rax, qword ptr [rbp + 6400]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 6408]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n01129_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n01129_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx01130_0]               # fname
                        mov              rsi, qword ptr [rbp + 608]                     # obj
                        mov              rdx, qword ptr [rbp + 616]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n01122_unmark_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n01131_binop_α
.Lx01130_0:
                        .quad            .Lx01130_0_s
.Lx01130_0_s:
                        .string          "begline"
#-----------------------------------------------------------------------------------------------------------------------
n01131_binop_α:
                        mov              rdi, qword ptr [rbp + 448]                     # a
                        mov              rsi, qword ptr [rbp + 456]                     # a
                        mov              rdx, qword ptr [rbp + 592]                     # b
                        mov              rcx, qword ptr [rbp + 600]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n01132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n01132_lit_string_α:
                        mov              qword ptr [rbp + 624], 2                       # result
                        mov              dword ptr [rbp + 628], 1
                        mov              rax, qword ptr [rip + .Lx01133_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n01134_binop_α
.Lx01133_0:
                        .quad            .Lx01133_0_s
.Lx01133_0_s:
                        .string          "-"
#-----------------------------------------------------------------------------------------------------------------------
n01134_binop_α:
                        mov              rdi, qword ptr [rbp + 432]                     # a
                        mov              rsi, qword ptr [rbp + 440]                     # a
                        mov              rdx, qword ptr [rbp + 624]                     # b
                        mov              rcx, qword ptr [rbp + 632]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n01135_var_α
#-----------------------------------------------------------------------------------------------------------------------
n01135_var_α:
                        mov              rax, qword ptr [rbp + 6400]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 6408]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n01136_field_get_α
#-----------------------------------------------------------------------------------------------------------------------
n01136_field_get_α:
                        mov              rdi, qword ptr [rip + .Lx01137_0]               # fname
                        mov              rsi, qword ptr [rbp + 656]                     # obj
                        mov              rdx, qword ptr [rbp + 664]                     # obj
                        call             dat_field_get@PLT
                        cmp              eax, 104
                                                                                        je    n01122_unmark_α
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n01138_binop_α
.Lx01137_0:
                        .quad            .Lx01137_0_s
.Lx01137_0_s:
                        .string          "lastline"
#-----------------------------------------------------------------------------------------------------------------------
n01138_binop_α:
                        mov              rdi, qword ptr [rbp + 416]                     # a
                        mov              rsi, qword ptr [rbp + 424]                     # a
                        mov              rdx, qword ptr [rbp + 640]                     # b
                        mov              rcx, qword ptr [rbp + 648]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n01139_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01139_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lrkfn2152:             .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2152]                        # fn
                        lea              rsi, [rbp + 336]                               # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n01122_unmark_α
                                                                                        jmp   n01122_unmark_α
n01139_call_builtin_icon_β:
                                                                                        jmp   n01122_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n01122_unmark_α:
                        mov              rsp, qword ptr [rbp + 272]
                                                                                        jmp   n01113_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n01115_var_α:
                        mov              rax, qword ptr [rbp + 6384]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 6392]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n01140_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n01140_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn2158:             .string          "sort"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2158]                        # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n01141_call_proc_staged_α
                                                                                        jmp   n01142_iterate_α
n01140_call_builtin_icon_β:
                                                                                        jmp   n01141_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n01142_iterate_α:
                        mov              qword ptr [rbp + 128], 0
.Lx01143_0:
                        mov              rdi, qword ptr [rbp + 144]                     # obj
                        mov              rsi, qword ptr [rbp + 152]                     # obj
                        mov              rdx, qword ptr [rbp + 128]                     # idx
                        call             rt_list_bang_at@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              rax, 104
                                                                                        je    n01141_call_proc_staged_α
                                                                                        jmp   n01144_call_builtin_icon_α
n01142_iterate_β:
                        inc              qword ptr [rbp + 128]
                                                                                        jmp   .Lx01143_0
#-----------------------------------------------------------------------------------------------------------------------
n01144_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lrkfn2162:             .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn2162]                        # fn
                        lea              rsi, [rbp + 80]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    n01142_iterate_β
                                                                                        jmp   n01142_iterate_β
n01144_call_builtin_icon_β:
                                                                                        jmp   n01142_iterate_β
#-----------------------------------------------------------------------------------------------------------------------
n01141_call_proc_staged_α:
                        call             proc_Term___dcα
                                                                                        jmp   .Lx01145_2
.Lx01145_2:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n01141_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx01145_0:
                        .quad            .Lx01145_0_s
.Lx01145_0_s:
                        .string          "Term__"
#-----------------------------------------------------------------------------------------------------------------------
n00855_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6496]
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                                                                                        jmp   n01146_lit_string_α
n00855_var_ref_β:
                                                                                        jmp   n00854_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01146_lit_string_α:
                        mov              qword ptr [rbp + 4912], 2                      # result
                        mov              dword ptr [rbp + 4916], 1
                        mov              rax, qword ptr [rip + .Lx01147_0]
                        mov              qword ptr [rbp + 4920], rax
                                                                                        jmp   n01148_subscript_α
.Lx01147_0:
                        .quad            .Lx01147_0_s
.Lx01147_0_s:
                        .string          "x"
#-----------------------------------------------------------------------------------------------------------------------
n01148_subscript_α:
                        mov              rdi, qword ptr [rbp + 4896]                    # base
                        mov              rsi, qword ptr [rbp + 4904]                    # base
                        mov              rdx, qword ptr [rbp + 4912]                    # idx
                        mov              rcx, qword ptr [rbp + 4920]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00854_disjunction_af
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                                                                                        jmp   n01149_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n01149_deref_α:
                        mov              rdi, qword ptr [rbp + 4928]                    # d
                        mov              rsi, qword ptr [rbp + 4936]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00854_disjunction_af
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                                                                                        jmp   n01150_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n01150_unop_test_α:
                        mov              eax, dword ptr [rbp + 4944]
                        cmp              eax, 104
                                                                                        je    n00854_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00854_disjunction_af
                        mov              rax, qword ptr [rbp + 4944]
                        mov              qword ptr [rbp + 4880], rax
                        mov              rax, qword ptr [rbp + 4952]
                        mov              qword ptr [rbp + 4888], rax
                                                                                        jmp   n01151_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n01151_lit_integer_α:
                        mov              qword ptr [rbp + 4864], 3                      # result
                        mov              rax, qword ptr [rip + .Lx01152_0]
                        mov              qword ptr [rbp + 4872], rax
                                                                                        jmp   n01153_assign_α
.Lx01152_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n01153_assign_α:
                        mov              rax, qword ptr [rbp + 4864]
                        mov              rdx, qword ptr [rbp + 4872]
                        mov              qword ptr [1879052416], rax                    # xflag
                        mov              qword ptr [1879052424], rdx
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                                                                                        jmp   n00854_disjunction_as
n01153_assign_β:
                                                                                        jmp   n00857_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n00852_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 6496]
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx
                                                                                        jmp   n01154_lit_string_α
n00852_var_ref_β:
                                                                                        jmp   n00850_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n01154_lit_string_α:
                        mov              qword ptr [rbp + 5056], 2                      # result
                        mov              dword ptr [rbp + 5060], 1
                        mov              rax, qword ptr [rip + .Lx01155_0]
                        mov              qword ptr [rbp + 5064], rax
                                                                                        jmp   n01156_subscript_α
.Lx01155_0:
                        .quad            .Lx01155_0_s
.Lx01155_0_s:
                        .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
n01156_subscript_α:
                        mov              rdi, qword ptr [rbp + 5040]                    # base
                        mov              rsi, qword ptr [rbp + 5048]                    # base
                        mov              rdx, qword ptr [rbp + 5056]                    # idx
                        mov              rcx, qword ptr [rbp + 5064]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n00850_disjunction_af
                        mov              qword ptr [rbp + 5072], rax
                        mov              qword ptr [rbp + 5080], rdx
                                                                                        jmp   n01157_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n01157_deref_α:
                        mov              rdi, qword ptr [rbp + 5072]                    # d
                        mov              rsi, qword ptr [rbp + 5080]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n00850_disjunction_af
                        mov              qword ptr [rbp + 5088], rax
                        mov              qword ptr [rbp + 5096], rdx
                                                                                        jmp   n01158_unop_test_α
#-----------------------------------------------------------------------------------------------------------------------
n01158_unop_test_α:
                        mov              eax, dword ptr [rbp + 5088]
                        cmp              eax, 104
                                                                                        je    n00850_disjunction_af
                        cmp              eax, 0
                                                                                        je    n00850_disjunction_af
                        mov              rax, qword ptr [rbp + 5088]
                        mov              qword ptr [rbp + 5024], rax
                        mov              rax, qword ptr [rbp + 5096]
                        mov              qword ptr [rbp + 5032], rax
                                                                                        jmp   n01159_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n01159_lit_integer_α:
                        mov              qword ptr [rbp + 5008], 3                      # result
                        mov              rax, qword ptr [rip + .Lx01160_0]
                        mov              qword ptr [rbp + 5016], rax
                                                                                        jmp   n01161_assign_α
.Lx01160_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n01161_assign_α:
                        mov              rax, qword ptr [rbp + 5008]
                        mov              rdx, qword ptr [rbp + 5016]
                        mov              qword ptr [1879052384], rax                    # qflag
                        mov              qword ptr [1879052392], rdx
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                                                                                        jmp   n00850_disjunction_as
n01161_assign_β:
                                                                                        jmp   n00854_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 6560]
                        mov              rcx, qword ptr [rbp + 6536]
                        mov              rbp, qword ptr [rbp + 6552]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        lea              rsp, [rbp + 6560]
                        mov              rcx, qword ptr [rbp + 6544]
                        mov              rbp, qword ptr [rbp + 6552]
                                                                                        jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
