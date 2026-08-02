                        .intel_syntax    noprefix
                        .text
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        xor              esi, esi
                                                                                        jmp   main_α
#-----------------------------------------------------------------------------------------------------------------------
main_α:
main_α_body:
                        push             rbp
                        mov              rbp, rsp
                        sub              rsp, 8
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:
                        sub              rsp, 1216
                        mov              qword ptr [rsp + 0], 0                         # stmt_claim
                        mov              qword ptr [rsp + 8], 0
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              qword ptr [rsp + 32], 0
                        mov              qword ptr [rsp + 40], 0
                        mov              qword ptr [rsp + 48], 0
                        mov              qword ptr [rsp + 56], 0
                        mov              qword ptr [rsp + 64], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 104], 0
                        mov              qword ptr [rsp + 112], 0
                        mov              qword ptr [rsp + 120], 0
                        mov              qword ptr [rsp + 128], 0
                        mov              qword ptr [rsp + 136], 0
                        mov              qword ptr [rsp + 144], 0
                        mov              qword ptr [rsp + 152], 0
                        mov              qword ptr [rsp + 160], 0
                        mov              qword ptr [rsp + 168], 0
                        mov              qword ptr [rsp + 176], 0
                        mov              qword ptr [rsp + 184], 0
                        mov              qword ptr [rsp + 192], 0
                        mov              qword ptr [rsp + 200], 0
                        mov              qword ptr [rsp + 208], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 232], 0
                        mov              qword ptr [rsp + 240], 0
                        mov              qword ptr [rsp + 248], 0
                        mov              qword ptr [rsp + 256], 0
                        mov              qword ptr [rsp + 264], 0
                        mov              qword ptr [rsp + 272], 0
                        mov              qword ptr [rsp + 280], 0
                        mov              qword ptr [rsp + 288], 0
                        mov              qword ptr [rsp + 296], 0
                        mov              qword ptr [rsp + 304], 0
                        mov              qword ptr [rsp + 312], 0
                        mov              qword ptr [rsp + 320], 0
                        mov              qword ptr [rsp + 328], 0
                        mov              qword ptr [rsp + 336], 0
                        mov              qword ptr [rsp + 344], 0
                        mov              qword ptr [rsp + 352], 0
                        mov              qword ptr [rsp + 360], 0
                        mov              qword ptr [rsp + 368], 0
                        mov              qword ptr [rsp + 376], 0
                        mov              qword ptr [rsp + 384], 0
                        mov              qword ptr [rsp + 392], 0
                        mov              qword ptr [rsp + 400], 0
                        mov              qword ptr [rsp + 408], 0
                        mov              qword ptr [rsp + 416], 0
                        mov              qword ptr [rsp + 424], 0
                        mov              qword ptr [rsp + 432], 0
                        mov              qword ptr [rsp + 440], 0
                        mov              qword ptr [rsp + 448], 0
                        mov              qword ptr [rsp + 456], 0
                        mov              qword ptr [rsp + 464], 0
                        mov              qword ptr [rsp + 472], 0
                        mov              qword ptr [rsp + 480], 0
                        mov              qword ptr [rsp + 488], 0
                        mov              qword ptr [rsp + 496], 0
                        mov              qword ptr [rsp + 504], 0
                        mov              qword ptr [rsp + 512], 0
                        mov              qword ptr [rsp + 520], 0
                        mov              qword ptr [rsp + 528], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 552], 0
                        mov              qword ptr [rsp + 560], 0
                        mov              qword ptr [rsp + 568], 0
                        mov              qword ptr [rsp + 576], 0
                        mov              qword ptr [rsp + 584], 0
                        mov              qword ptr [rsp + 592], 0
                        mov              qword ptr [rsp + 600], 0
                        mov              qword ptr [rsp + 608], 0
                        mov              qword ptr [rsp + 616], 0
                        mov              qword ptr [rsp + 624], 0
                        mov              qword ptr [rsp + 632], 0
                        mov              qword ptr [rsp + 640], 0
                        mov              qword ptr [rsp + 648], 0
                        mov              qword ptr [rsp + 656], 0
                        mov              qword ptr [rsp + 664], 0
                        mov              qword ptr [rsp + 672], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 696], 0
                        mov              qword ptr [rsp + 704], 0
                        mov              qword ptr [rsp + 712], 0
                        mov              qword ptr [rsp + 720], 0
                        mov              qword ptr [rsp + 728], 0
                        mov              qword ptr [rsp + 736], 0
                        mov              qword ptr [rsp + 744], 0
                        mov              qword ptr [rsp + 752], 0
                        mov              qword ptr [rsp + 760], 0
                        mov              qword ptr [rsp + 768], 0
                        mov              qword ptr [rsp + 776], 0
                        mov              qword ptr [rsp + 784], 0
                        mov              qword ptr [rsp + 792], 0
                        mov              qword ptr [rsp + 800], 0
                        mov              qword ptr [rsp + 808], 0
                        mov              qword ptr [rsp + 816], 0
                        mov              qword ptr [rsp + 824], 0
                        mov              qword ptr [rsp + 832], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 856], 0
                        mov              qword ptr [rsp + 864], 0
                        mov              qword ptr [rsp + 872], 0
                        mov              qword ptr [rsp + 880], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 904], 0
                        mov              qword ptr [rsp + 912], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 936], 0
                        mov              qword ptr [rsp + 944], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 968], 0
                        mov              qword ptr [rsp + 976], 0
                        mov              qword ptr [rsp + 984], 0
                        mov              qword ptr [rsp + 992], 0
                        mov              qword ptr [rsp + 1000], 0
                        mov              qword ptr [rsp + 1008], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1032], 0
                        mov              qword ptr [rsp + 1040], 0
                        mov              qword ptr [rsp + 1048], 0
                        mov              qword ptr [rsp + 1056], 0
                        mov              qword ptr [rsp + 1064], 0
                        mov              qword ptr [rsp + 1072], 0
                        mov              qword ptr [rsp + 1080], 0
                        mov              qword ptr [rsp + 1088], 0
                        mov              qword ptr [rsp + 1096], 0
                        mov              qword ptr [rsp + 1104], 0
                        mov              qword ptr [rsp + 1112], 0
                        mov              qword ptr [rsp + 1120], 0
                        mov              qword ptr [rsp + 1128], 0
                        mov              qword ptr [rsp + 1136], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1160], 0
                        mov              qword ptr [rsp + 1168], 0
                        mov              qword ptr [rsp + 1176], 0
                        mov              qword ptr [rsp + 1184], 0
                        mov              qword ptr [rsp + 1192], 0
                        mov              qword ptr [rsp + 1200], 0
                        mov              qword ptr [rsp + 1208], 0
                        mov              qword ptr [rbp + 1264], 3                      # result
                        mov              rax, qword ptr [rip + .Lx71_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n1_assign_α
.Lx71_0:
                        .quad            50
#-----------------------------------------------------------------------------------------------------------------------
n1_assign_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n2_var_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n3_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 1248], 3                      # result
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n4_call_builtin_icon_α
.Lx75_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        .section         .rodata
.Lrkfn77:               .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn77]                          # fn
                        lea              rsi, [rbp + 1184]                              # args
                        mov              edx, 2                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 104
                                                                                        je    n6_var_ref_α
                                                                                        jmp   n5_assign_α
n4_call_builtin_icon_β:
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 3                      # result
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n8_subscript_α
.Lx81_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n8_subscript_α:
                        mov              rdi, qword ptr [rbp + 1088]                    # base
                        mov              rsi, qword ptr [rbp + 1096]                    # base
                        mov              rdx, qword ptr [rbp + 1104]                    # idx
                        mov              rcx, qword ptr [rbp + 1112]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n11_lit_integer_α
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                                                                                        jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 3                      # result
                        mov              rax, qword ptr [rip + .Lx83_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n10_assign_var_α
.Lx83_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_var_α:
                        mov              rdi, qword ptr [rbp + 1120]                    # var
                        mov              rsi, qword ptr [rbp + 1128]                    # var
                        mov              rdx, qword ptr [rbp + 1152]                    # val
                        mov              rcx, qword ptr [rbp + 1160]                    # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n11_lit_integer_α
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n11_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:
                        mov              qword ptr [rbp + 608], 3                       # result
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n12_var_α
.Lx85_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n13_to_α
#-----------------------------------------------------------------------------------------------------------------------
n13_to_α:
                        mov              rdi, qword ptr [rbp + 608]                     # v
                        mov              rsi, qword ptr [rbp + 616]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 608], 3
                        mov              qword ptr [rbp + 616], rax
                        mov              rdi, qword ptr [rbp + 624]                     # v
                        mov              rsi, qword ptr [rbp + 632]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 624], 3
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 592], rax
.Lx89_0:
                        mov              rax, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 632]
                        cmp              rax, rcx
                                                                                        jle   .Lx89_240
                        add              rsp, 1216
                                                                                        jmp   n40_lit_string_α
.Lx89_240:
                        mov              qword ptr [rbp + 576], 3
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n14_assign_α
n13_to_β:
                        inc              qword ptr [rbp + 592]
                                                                                        jmp   .Lx89_0
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n15_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n15_bound_α:
                        mov              qword ptr [rbp + 640], rsp
                                                                                        jmp   n16_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n16_disjunction_α:
                        mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                        mov              dword ptr [rbp + 704], 0
                                                                                        jmp   n17_var_ref_α
n16_disjunction_as:
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0
                                                                                        jne   .Lx94_0
                                                                                        jmp   n39_unmark_α
.Lx94_0:
                                                                                        jmp   n39_unmark_α
n16_disjunction_β:
                        mov              eax, dword ptr [rbp + 704]
                                                                                        jmp   n39_unmark_α
n16_disjunction_af:
                        add              dword ptr [rbp + 704], 1
                        mov              eax, dword ptr [rbp + 704]
                                                                                        jmp   n39_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n18_var_α
n17_var_ref_β:
                                                                                        jmp   n16_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n19_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n19_subscript_α:
                        mov              rdi, qword ptr [rbp + 1008]                    # base
                        mov              rsi, qword ptr [rbp + 1016]                    # base
                        mov              rdx, qword ptr [rbp + 1024]                    # idx
                        mov              rcx, qword ptr [rbp + 1032]                    # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n16_disjunction_af
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n20_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n20_deref_α:
                        mov              rdi, qword ptr [rbp + 1040]                    # d
                        mov              rsi, qword ptr [rbp + 1048]                    # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n16_disjunction_af
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n21_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 3                      # result
                        mov              rax, qword ptr [rip + .Lx101_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n22_binop_test_α
.Lx101_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_test_α:
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 112
                                                                                        je    .Lx102_0
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 112
                                                                                        je    .Lx102_0
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              eax, 3
                                                                                        jne   .Lx102_2
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 3
                                                                                        jne   .Lx102_2
.Lx102_1:
                        mov              rax, qword ptr [rbp + 1064]
                        mov              rcx, qword ptr [rbp + 1080]
                        cmp              rax, rcx
                                                                                        jne   n16_disjunction_af
                        mov              rcx, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 992], rcx
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1000], rcx
                                                                                        jmp   n23_var_α
.Lx102_0:
                        mov              rdi, qword ptr [rbp + 1056]                    # a
                        mov              rsi, qword ptr [rbp + 1064]                    # a
                        mov              rdx, qword ptr [rbp + 1072]                    # b
                        mov              rcx, qword ptr [rbp + 1080]                    # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 992]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx102_1
                        cmp              eax, 1
                                                                                        je    n16_disjunction_af
                                                                                        jmp   n23_var_α
.Lx102_2:
                        mov              rdi, qword ptr [rbp + 1056]                    # lhs
                        mov              rsi, qword ptr [rbp + 1064]                    # lhs
                        mov              rdx, qword ptr [rbp + 1072]                    # rhs
                        mov              rcx, qword ptr [rbp + 1080]                    # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n16_disjunction_af
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1000], rax
                                                                                        jmp   n23_var_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n24_var_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n25_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n25_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 5
                                                                                        je    .Lx108_1
                        cmp              eax, 3
                                                                                        jne   .Lx108_0
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 3
                                                                                        jne   .Lx108_0
.Lx108_1:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n26_coerce_numeric_α
.Lx108_0:
                        lea              rdi, [rbp + 1296]                              # self
                        lea              rsi, [rbp + 1296]                              # other
                        lea              rdx, [rbp + 784]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n26_coerce_numeric_α
#-----------------------------------------------------------------------------------------------------------------------
n26_coerce_numeric_α:
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 5
                                                                                        je    .Lx110_1
                        cmp              eax, 3
                                                                                        jne   .Lx110_0
                        mov              eax, dword ptr [rbp + 1296]
                        cmp              eax, 3
                                                                                        jne   .Lx110_0
.Lx110_1:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n27_binop_α
.Lx110_0:
                        lea              rdi, [rbp + 1296]                              # self
                        lea              rsi, [rbp + 1296]                              # other
                        lea              rdx, [rbp + 768]                               # out
                        mov              rcx, 0                                         # codes
                        call             rt_coerce_num2_d@PLT
                                                                                        jmp   n27_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_α:
                        mov              eax, dword ptr [rbp + 784]
                        cmp              eax, 3
                                                                                        jne   .Lx111_0
                        mov              eax, dword ptr [rbp + 768]
                        cmp              eax, 3
                                                                                        jne   .Lx111_0
                        mov              rax, qword ptr [rbp + 792]
                        mov              rcx, qword ptr [rbp + 776]
                        imul             rax, rcx
                        mov              qword ptr [rbp + 752], 3
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n28_var_α
.Lx111_0:
                        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        call             rt_mul@PLT
                        cmp              eax, 104
                                                                                        je    n39_unmark_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n28_var_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n29_var_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n30_to_by_α
#-----------------------------------------------------------------------------------------------------------------------
n30_to_by_α:
                        mov              rdi, qword ptr [rbp + 752]                     # v
                        mov              rsi, qword ptr [rbp + 760]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 752], 3
                        mov              qword ptr [rbp + 760], rax
                        mov              rdi, qword ptr [rbp + 832]                     # v
                        mov              rsi, qword ptr [rbp + 840]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 832], 3
                        mov              qword ptr [rbp + 840], rax
                        mov              rdi, qword ptr [rbp + 848]                     # v
                        mov              rsi, qword ptr [rbp + 856]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 848], 3
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 736], rax
.Lx117_0:
                        mov              rax, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 856]
                        cmp              rdx, 0
                                                                                        jl    .Lx117_1
                        cmp              rax, rcx
                                                                                        jg    n39_unmark_α
                                                                                        jmp   .Lx117_2
.Lx117_1:
                        cmp              rax, rcx
                                                                                        jl    n39_unmark_α
.Lx117_2:
                        mov              qword ptr [rbp + 720], 3
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n31_assign_α
n30_to_by_β:
                        mov              rdx, qword ptr [rbp + 856]
                        mov              rax, qword ptr [rbp + 736]
                        add              rax, rdx
                        mov              qword ptr [rbp + 736], rax
                                                                                        jmp   .Lx117_0
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n32_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n32_bound_α:
                        mov              qword ptr [rbp + 864], rsp
                                                                                        jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n35_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n35_subscript_α:
                        mov              rdi, qword ptr [rbp + 912]                     # base
                        mov              rsi, qword ptr [rbp + 920]                     # base
                        mov              rdx, qword ptr [rbp + 928]                     # idx
                        mov              rcx, qword ptr [rbp + 936]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n38_unmark_α
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n36_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:
                        mov              qword ptr [rbp + 976], 3                       # result
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n37_assign_var_α
.Lx126_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_var_α:
                        mov              rdi, qword ptr [rbp + 944]                     # var
                        mov              rsi, qword ptr [rbp + 952]                     # var
                        mov              rdx, qword ptr [rbp + 976]                     # val
                        mov              rcx, qword ptr [rbp + 984]                     # val
                        call             rt_assign_var@PLT
                        cmp              eax, 104
                                                                                        je    n38_unmark_α
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n38_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n38_unmark_α:
                        mov              rsp, qword ptr [rbp + 864]
                                                                                        jmp   n30_to_by_β
#-----------------------------------------------------------------------------------------------------------------------
n39_unmark_α:
                        mov              rsp, qword ptr [rbp + 640]
                                                                                        jmp   n13_to_β
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:
                        mov              qword ptr [rbp + 560], 2                       # result
                        mov              dword ptr [rbp + 564], 0
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n41_assign_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n41_assign_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n42_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        mov              qword ptr [rbp + 112], 3                       # result
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rbp + 120], rax
                                                                                        jmp   n43_var_α
.Lx134_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n44_to_α
#-----------------------------------------------------------------------------------------------------------------------
n44_to_α:
                        mov              rdi, qword ptr [rbp + 112]                     # v
                        mov              rsi, qword ptr [rbp + 120]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax
                        mov              rdi, qword ptr [rbp + 128]                     # v
                        mov              rsi, qword ptr [rbp + 136]                     # v
                        call             to_int@PLT
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 96], rax
.Lx138_0:
                        mov              rax, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 136]
                        cmp              rax, rcx
                                                                                        jg    n69_var_α
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                                                                                        jmp   n45_assign_α
n44_to_β:
                        inc              qword ptr [rbp + 96]
                                                                                        jmp   .Lx138_0
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n46_bound_α
#-----------------------------------------------------------------------------------------------------------------------
n46_bound_α:
                        mov              qword ptr [rbp + 144], rsp
                                                                                        jmp   n47_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n47_disjunction_α:
                        mov              qword ptr [rbp + 192], 0
                        mov              qword ptr [rbp + 200], 0
                        mov              dword ptr [rbp + 208], 0
                                                                                        jmp   n48_var_ref_α
n47_disjunction_as:
                        mov              eax, dword ptr [rbp + 208]
                        cmp              eax, 0
                                                                                        jne   .Lx143_0
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n68_unmark_α
.Lx143_0:
                                                                                        jmp   n68_unmark_α
n47_disjunction_β:
                        mov              eax, dword ptr [rbp + 208]
                                                                                        jmp   n68_unmark_α
n47_disjunction_af:
                        add              dword ptr [rbp + 208], 1
                        mov              eax, dword ptr [rbp + 208]
                                                                                        jmp   n68_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n49_var_α
n48_var_ref_β:
                                                                                        jmp   n47_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n49_var_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n50_subscript_α
#-----------------------------------------------------------------------------------------------------------------------
n50_subscript_α:
                        mov              rdi, qword ptr [rbp + 480]                     # base
                        mov              rsi, qword ptr [rbp + 488]                     # base
                        mov              rdx, qword ptr [rbp + 496]                     # idx
                        mov              rcx, qword ptr [rbp + 504]                     # idx
                        call             rt_subscript_var@PLT
                        cmp              eax, 104
                                                                                        je    n47_disjunction_af
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n51_deref_α
#-----------------------------------------------------------------------------------------------------------------------
n51_deref_α:
                        mov              rdi, qword ptr [rbp + 512]                     # d
                        mov              rsi, qword ptr [rbp + 520]                     # d
                        call             rt_deref@PLT
                        cmp              eax, 104
                                                                                        je    n47_disjunction_af
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n52_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:
                        mov              qword ptr [rbp + 544], 3                       # result
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n53_binop_test_α
.Lx150_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n53_binop_test_α:
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 112
                                                                                        je    .Lx151_0
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 112
                                                                                        je    .Lx151_0
                        mov              eax, dword ptr [rbp + 528]
                        cmp              eax, 3
                                                                                        jne   .Lx151_2
                        mov              eax, dword ptr [rbp + 544]
                        cmp              eax, 3
                                                                                        jne   .Lx151_2
.Lx151_1:
                        mov              rax, qword ptr [rbp + 536]
                        mov              rcx, qword ptr [rbp + 552]
                        cmp              rax, rcx
                                                                                        jne   n47_disjunction_af
                        mov              rcx, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 464], rcx
                        mov              rcx, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 472], rcx
                                                                                        jmp   n54_disjunction_α
.Lx151_0:
                        mov              rdi, qword ptr [rbp + 528]                     # a
                        mov              rsi, qword ptr [rbp + 536]                     # a
                        mov              rdx, qword ptr [rbp + 544]                     # b
                        mov              rcx, qword ptr [rbp + 552]                     # b
                        mov              r8d, 9                                         # op
                        lea              r9, [rbp + 464]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx151_1
                        cmp              eax, 1
                                                                                        je    n47_disjunction_af
                                                                                        jmp   n54_disjunction_α
.Lx151_2:
                        mov              rdi, qword ptr [rbp + 528]                     # lhs
                        mov              rsi, qword ptr [rbp + 536]                     # lhs
                        mov              rdx, qword ptr [rbp + 544]                     # rhs
                        mov              rcx, qword ptr [rbp + 552]                     # rhs
                        mov              r8d, 9                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n47_disjunction_af
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n54_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n54_disjunction_α:
                        mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 312], 0
                        mov              dword ptr [rbp + 320], 0
                                                                                        jmp   n55_var_α
n54_disjunction_as:
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0
                                                                                        jne   .Lx153_0
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n63_var_α
.Lx153_0:
                                                                                        jmp   n63_var_α
n54_disjunction_β:
                        mov              eax, dword ptr [rbp + 320]
                                                                                        jmp   n63_var_α
n54_disjunction_af:
                        add              dword ptr [rbp + 320], 1
                        mov              eax, dword ptr [rbp + 320]
                                                                                        jmp   n63_var_α
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n56_unop_α
n55_var_β:
                                                                                        jmp   n54_disjunction_af
#-----------------------------------------------------------------------------------------------------------------------
n56_unop_α:
                        mov              rdi, qword ptr [rbp + 1280]                    # lo
                        mov              rsi, qword ptr [rbp + 1288]                    # hi
                        call             rt_size_d@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n57_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:
                        mov              qword ptr [rbp + 448], 3                       # result
                        mov              rax, qword ptr [rip + .Lx157_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n58_binop_test_α
.Lx157_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_test_α:
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 112
                                                                                        je    .Lx158_0
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 112
                                                                                        je    .Lx158_0
                        mov              eax, dword ptr [rbp + 416]
                        cmp              eax, 3
                                                                                        jne   .Lx158_2
                        mov              eax, dword ptr [rbp + 448]
                        cmp              eax, 3
                                                                                        jne   .Lx158_2
.Lx158_1:
                        mov              rax, qword ptr [rbp + 424]
                        mov              rcx, qword ptr [rbp + 456]
                        cmp              rax, rcx
                                                                                        jle   n54_disjunction_af
                        mov              rcx, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rcx
                        mov              rcx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rcx
                                                                                        jmp   n59_var_α
.Lx158_0:
                        mov              rdi, qword ptr [rbp + 416]                     # a
                        mov              rsi, qword ptr [rbp + 424]                     # a
                        mov              rdx, qword ptr [rbp + 448]                     # b
                        mov              rcx, qword ptr [rbp + 456]                     # b
                        mov              r8d, 7                                         # op
                        lea              r9, [rbp + 400]                                # out
                        call             rt_relop_overload@PLT
                        test             eax, eax
                                                                                        je    .Lx158_1
                        cmp              eax, 1
                                                                                        je    n54_disjunction_af
                                                                                        jmp   n59_var_α
.Lx158_2:
                        mov              rdi, qword ptr [rbp + 416]                     # lhs
                        mov              rsi, qword ptr [rbp + 424]                     # lhs
                        mov              rdx, qword ptr [rbp + 448]                     # rhs
                        mov              rcx, qword ptr [rbp + 456]                     # rhs
                        mov              r8d, 7                                         # op
                        call             rt_jct_relop@PLT
                        test             eax, eax
                                                                                        jz    n54_disjunction_af
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n59_var_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 384], 2                       # result
                        mov              dword ptr [rbp + 388], 1
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n61_binop_α
.Lx161_0:
                        .quad            .Lx161_0_s
.Lx161_0_s:
                        .string          " "
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:
                        mov              rdi, qword ptr [rbp + 1280]                    # a
                        mov              rsi, qword ptr [rbp + 1288]                    # a
                        mov              rdx, qword ptr [rbp + 384]                     # b
                        mov              rcx, qword ptr [rbp + 392]                     # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n62_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n62_assign_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n54_disjunction_as
n62_assign_β:
                                                                                        jmp   n63_var_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n64_var_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n65_binop_α
#-----------------------------------------------------------------------------------------------------------------------
n65_binop_α:
                        mov              rdi, qword ptr [rbp + 1280]                    # a
                        mov              rsi, qword ptr [rbp + 1288]                    # a
                        mov              rdx, qword ptr [rbp + 1296]                    # b
                        mov              rcx, qword ptr [rbp + 1304]                    # b
                        call             str_concat_d@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n66_assign_α
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n67_conjunction_α
#-----------------------------------------------------------------------------------------------------------------------
n67_conjunction_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n47_disjunction_as
n67_conjunction_β:
                                                                                        jmp   n68_unmark_α
#-----------------------------------------------------------------------------------------------------------------------
n68_unmark_α:
                        mov              rsp, qword ptr [rbp + 144]
                                                                                        jmp   n44_to_β
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 56], rax
                                                                                        jmp   n70_call_builtin_icon_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_icon_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lrkfn176:              .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn176]                         # fn
                        lea              rsi, [rbp + 16]                                # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n70_call_builtin_icon_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rsp, rbp
                        pop              rbp
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        pop              rbp
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
